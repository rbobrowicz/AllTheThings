local _, app = ...;
local L, settings, ipairs = app.L.SETTINGS_MENU, app.Settings, ipairs;

-- Global locals
local pairs, ipairs, tonumber, math_floor, tinsert
	= pairs, ipairs, tonumber, math.floor, tinsert;
local Colorize = app.Modules.Color.Colorize;
local GetNumberWithZeros = app.Modules.Color.GetNumberWithZeros;
local GetRelativeValue = app.GetRelativeValue;
local HexToARGB = app.Modules.Color.HexToARGB;

-- Settings: Interface Page
local child = settings:CreateOptionsPage("Information", L.INTERFACE_PAGE)

-- Column 1
local headerAdditionalInformation = child:CreateHeaderLabel(L["ADDITIONAL_LABEL"])
if child.separator then
	headerAdditionalInformation:SetPoint("TOPLEFT", child.separator, "BOTTOMLEFT", 8, -8);
else
	headerAdditionalInformation:SetPoint("TOPLEFT", child, "TOPLEFT", 8, -8);
end

-- Conversion Methods for specific formats for a given Information Type.
local function GetCoordString(x, y)
	return GetNumberWithZeros(math_floor(x * 10) * 0.1, 1) .. ", " .. GetNumberWithZeros(math_floor(y * 10) * 0.1, 1);
end
local function GetPatchString(patch, color)
	patch = tonumber(patch)
	return patch and Colorize(math_floor(patch / 10000) .. "." .. (math_floor(patch / 100) % 10) .. "." .. (patch % 10), color)
end
local DefaultConversionMethod = function(value)
	return value;
end
local ConversionMethods = setmetatable({
	filterID = function(val)
		return L["FILTER_ID_TYPES"][val]
	end,
	b = function(val)
		return (val == 1 and "BoP") or (val == 2 and "BoA") or nil
	end,
	questID = function(questID, reference)
		-- for questID, also check if there's an otherFactionQuestID (Bfa Warfront Rares)
		local otherFactionQuestID = reference.otherFactionQuestID;
		if otherFactionQuestID then
			return "["..(app.FactionID == Enum.FlightPathFaction.Alliance and FACTION_HORDE or FACTION_ALLIANCE).." "..otherFactionQuestID.."] "..questID
		end
		return questID
	end,
	awp = function(val) return GetPatchString(val, app.Colors.AddedWithPatch) end,
	rwp = function(val) return GetPatchString(val, app.Colors.RemovedWithPatch) end,
	spellID = function(spellID, reference)
		if app.Settings:GetTooltipSetting("spellName") then
			return tostring(spellID) .. " (" .. (app.GetSpellName(spellID, reference.rank) or "??") .. ")";
		else
			return tostring(spellID);
		end
	end,
	creatureName = function(creatureID, reference)
		if app.Settings:GetTooltipSetting("creatureID") then
			return tostring(creatureID > 0 and app.NPCNameFromID[creatureID] or "") .. " (" .. creatureID .. ")";
		else
			return tostring(creatureID > 0 and app.NPCNameFromID[creatureID] or "");
		end
	end,
	professionName = function(spellID)
		return GetSpellInfo(app.SkillIDToSpellID[spellID] or 0) or RETRIEVING_DATA;
	end,
}, {
	__index = function(t, key)
		return DefaultConversionMethod;
	end
});
settings.InformationTypeConversionMethods = ConversionMethods;

-- Class Template for creating an Information Type instance.
local function GetValueForInformationType(t, reference)
	return reference[t.informationTypeID];
end
local function GetRecursiveValueForInformationType(t, reference)
	local informationTypeID = t.informationTypeID;
	return reference[informationTypeID] or GetRelativeValue(reference, informationTypeID);
end
local function ProcessInformationType(t, reference, tooltipInfo)
	local val = t.GetValue(t, reference);
	if val then
		tinsert(tooltipInfo, { left = t.text, right = ConversionMethods[t.informationTypeID](val, reference)});
	end
end
local CreateInformationType = app.CreateClass("InformationType", "informationTypeID", {
	textLower = function(t)
		local textLower = t.text:lower();
		t.textLower = textLower;
		return textLower;
	end,
	priority = function(t)
		return 100;
	end,
	GetValue = function()
		return GetValueForInformationType;
	end,
	Process = function()
		return ProcessInformationType;
	end,
	IsStandaloneProperty = app.ReturnTrue,
	ShouldDisplayInExternalTooltips = app.ReturnTrue,
},
"AsRecursive", {
	GetValue = function()
		return GetRecursiveValueForInformationType;
	end,
},
(function(t) return t.isRecursive; end));

-- The post processor uses a dynamic list to append additional entries as needed.
local AppendedInformationTextEntries = {};
local PostProcessor = CreateInformationType("__postprocessor", {
	priority = 99999999,
	Process = function(t, reference, tooltipInfo)
		if #AppendedInformationTextEntries > 0 then
			for i,entry in ipairs(AppendedInformationTextEntries) do
				tinsert(tooltipInfo, entry);
			end
			wipe(AppendedInformationTextEntries);
		end
	end,
});
local function AppendInformationTextEntry(entry)
	-- You should call this from within the Process function of an information text object.
	tinsert(AppendedInformationTextEntries, entry);
end
settings.AppendInformationTextEntry = AppendInformationTextEntry;

-- All of the Default Information Types.
local InformationTypes = {
	-- Only displayed in NPC Tooltips that are alive and exist in the world.
	CreateInformationType("Alive", { text = L.ALIVE, priority = 0, IsStandaloneProperty = false }),
	CreateInformationType("Spawned", { text = L.SPAWNED, priority = 0, IsStandaloneProperty = false }),
	CreateInformationType("Layer", { text = L.LAYER, priority = 1, IsStandaloneProperty = false }),
	
	-- Progress Fields (top most)
	CreateInformationType("Progress", { text = L.SOCIAL_PROGRESS, priority = 1, HideCheckBox = true,
		Process = function(t, reference, tooltipInfo)
			local progressText = app.GetProgressTextForTooltip(reference);
			if progressText then
				tinsert(tooltipInfo, { progress = progressText });
				if reference.total and reference.total >= 2 then
					-- if collecting this reference type, then show Collection State
					if reference.collectible then
						tinsert(tooltipInfo, {
							left = L.COLLECTION_PROGRESS,
							right = app.GetCollectionText(reference.collected or reference.saved),
						});
					-- if completion/tracking is available, show Completion State
					elseif reference.trackable then
						tinsert(tooltipInfo, {
							left = L.TRACKING_PROGRESS,
							right = app.GetCompletionText(reference.saved),
						});
					end
				end
			end
		end,
	}),
	CreateInformationType("SocialProgress", { text = L.SOCIAL_PROGRESS, priority = 1, IsStandaloneProperty = false }),
	
	-- Contextual fields
	CreateInformationType("parent", { text = "Parent", priority = 1.1, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			if not reference.itemID then
				local parent = reference.parent or reference.sourceParent;
				if parent then
					-- Only show this for 2 depth hierarchies and above.
					local grandparent = parent.parent or parent.sourceParent;
					if grandparent then
						tinsert(tooltipInfo, {
							left = grandparent.text or RETRIEVING_DATA,
							right = parent.text or RETRIEVING_DATA
						});
					end
				end
			end
		end,
	}),
	CreateInformationType("guid", { text = L.GUID, priority = 2 }),
	CreateInformationType("lvl", { text = LEVEL, priority = 2, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local lvl = reference.lvl;-- or GetRelativeValue(reference, "lvl");	-- TODO: Investigate if we want this.
			if lvl then
				local minlvl, maxlvl;
				if type(lvl) == "table" then
					minlvl = lvl[1] or 0;
					maxlvl = lvl[2] or 0;
				else
					minlvl = lvl;
				end
				-- i suppose a maxlvl of 1 might exist?
				if maxlvl and maxlvl > 0 then
					tinsert(tooltipInfo, {
						left = L["REQUIRES_LEVEL"],
						right = tostring(minlvl) .. " to " .. tostring(maxlvl),
					});
				-- no point to show 'requires lvl 1'
				elseif minlvl and minlvl > 1 then
					tinsert(tooltipInfo, {
						left = L["REQUIRES_LEVEL"],
						right = tostring(minlvl),
					});
				end
			end
		end,
	}),
	
	-- Quest Fields
	-- Providers
	CreateInformationType("coords", { text = L.COORDINATES, priority = 2.1, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local coords = reference.coords;
			if not coords then
				coords = reference.coord;
				if not coords then return; end
				coords = { coords };
			end
			
			local coordCount = #coords;
			if coordCount < 1 then return; end
			
			local maxCoords = 10;
			local currentMapID, j, str = app.CurrentMapID, 0;
			local showMapID = app.Settings:GetTooltipSetting("mapID");
			for i,coord in ipairs(coords) do
				local x, y = coord[1], coord[2];
				local mapID = coord[3] or currentMapID;
				if mapID ~= currentMapID then
					str = app.GetMapName(mapID);
					if showMapID then
						str = str .. " (" .. mapID .. ")";
					end
					str = str .. ": ";
				else
					str = "";
				end
				tinsert(tooltipInfo, {
					left = j == 0 and t.text,
					right = str .. GetCoordString(x, y),
					r = 1, g = 1, b = 1
				});
				j = j + 1;
				if j > maxCoords then
					tinsert(tooltipInfo, {
						right = (L.AND_MORE):format(coordCount - maxCoords),
						r = 1, g = 1, b = 1
					});
					break;
				end
			end
		end,
	}),
	CreateInformationType("playerCoord", { text = L.PLAYER_COORDINATES, priority = 2.1, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local coord = reference.playerCoord;
			if coord then
				tinsert(tooltipInfo, {
					left = t.text,
					right = GetCoordString(coord[1], coord[2]),
					r = 1, g = 1, b = 1
				});
			end
		end,
	}),
	
	-- Description fields
	CreateInformationType("lore", { text = L.LORE, priority = 2.4,
		Process = function(t, reference, tooltipInfo)
			local lore = reference.lore;
			if lore then
				tinsert(tooltipInfo, {
					left = lore,
					color = app.Colors.TooltipLore,
					wrap = true,
				});
			end
		end,
	}),
	CreateInformationType("description", { text = L.DESCRIPTIONS, priority = 2.5,
		Process = function(t, reference, tooltipInfo)
			local description = reference.description;
			if description then
				tinsert(tooltipInfo, {
					left = description,
					color = app.Colors.TooltipDescription,
					wrap = true,
				});
			end
		end,
	}),
	CreateInformationType("maps", { text = L.MAPS, priority = 2.6,
		Process = function(t, reference, tooltipInfo)
			local maps = reference.maps;
			if maps and #maps > 0 then
				local currentMapID = app.CurrentMapID;
				local mapNames,uniques,name = {},{};
				local rootMapID = reference.mapID;
				if rootMapID then uniques[app.GetMapName(rootMapID) or rootMapID] = true; end
				for i,mapID in ipairs(maps) do
					if mapID ~= currentMapID then
						name = app.GetMapName(mapID);
						if name and not uniques[name] then
							uniques[name] = true;
							tinsert(mapNames, name);
						end
					end
				end
				if #mapNames > 0 then
					-- If there's a description and it is visible, add some visual space.
					local description = reference.description;
					if description and app.Settings:GetTooltipSetting("description") then
						tinsert(tooltipInfo, {
							left = " ",
							color = app.Colors.TooltipDescription,
							wrap = true,
						});
					end
					tinsert(tooltipInfo, {
						left = t.text .. ": " .. app.TableConcat(mapNames, nil, nil, ", "),
						color = app.Colors.TooltipDescription,
						wrap = true,
					});
				end
			end
		end,
	}),
	CreateInformationType("pb", {
		priority = 2.7,
		text = L.PET_BATTLES,
		Process = function(t, reference, tooltipInfo)
			if reference.pb then
				tinsert(tooltipInfo, {
					left = L.REQUIRES_PETBATTLES,
					wrap = true,
				});
			end
		end,
	});
	CreateInformationType("pvp", {
		priority = 2.7,
		text = PVP,
		Process = function(t, reference, tooltipInfo)
			if reference.pvp then
				tinsert(tooltipInfo, {
					left = L.REQUIRES_PVP,
					wrap = true,
				});
			end
		end,
	});
	CreateInformationType("u", {
		priority = 2.7,
		text = L.AVAILABILITY,
		Process = function(t, reference, tooltipInfo)
			local u = reference.u;
			if u then
				local condition = L.AVAILABILITY_CONDITIONS[u];
				if condition then
					local buildVersion = condition[5];
					if not buildVersion or app.GameBuildVersion < buildVersion then
						tinsert(tooltipInfo, {
							left = condition[2],
							wrap = true,
						});
					end
				end
			end
		end,
	});
	
	-- Regular fields (sorted by priority for clarity of how it will appear in the tooltip)
	CreateInformationType("awp", { text = L.ADDED_WITH_PATCH, isRecursive = true, priority = 3 }),
	CreateInformationType("rwp", { text = L.REMOVED_WITH_PATCH, isRecursive = true, priority = 3 }),
	CreateInformationType("filterID", { text = L.FILTER_ID, priority = 4,
		Process = function(t, reference, tooltipInfo)
			local f = reference.filterID or reference.f;
			if f then
				local filterForRWP = reference.filterForRWP;
				if filterForRWP then
					tinsert(tooltipInfo, {
						left = t.text,
						right = ConversionMethods.filterID(f, reference) .. " -> " .. ConversionMethods.filterID(filterForRWP, reference),
					});
				else
					tinsert(tooltipInfo, {
						left = t.text,
						right = ConversionMethods.filterID(f, reference),
					});
				end
			end
		end,
	}),
	CreateInformationType("itemString", { text = L.ITEM_STRING, priority = 4 }),
	CreateInformationType("itemID", { text = L.ITEM_ID, priority = 5 }),
	CreateInformationType("sourceID", { text = L.SOURCE_ID, priority = 5 }),
	CreateInformationType("bonusID", { text = L.BONUS_ID, priority = 6 }),
	CreateInformationType("modID", { text = L.MOD_ID, priority = 6 }),
	CreateInformationType("artID", { text = L.ART_ID, priority = 7 }),
	CreateInformationType("iconPath", { text = L.ICON_PATH, ShouldDisplayInExternalTooltips = false, priority = 7 }),
	CreateInformationType("visualID", { text = L.VISUAL_ID, priority = 7 }),
	
	CreateInformationType("achievementID", { text = L.ACHIEVEMENT_ID, priority = 8,
		GetValue = app.GameBuildVersion >= 30000 and GetValueForInformationType or function(t, reference)
			local value = GetValueForInformationType(t, reference);
			if value then
				if reference.sourceQuest or reference.sourceQuests then
					AppendInformationTextEntry({
						left = L.ACHIEVEMENT_PRE_WRATH_SOURCE_QUEST_INFO,
						wrap = true,
						r = 0.4,
						g = 0.8,
						b = 1,
					});
				end
				return value;
			end
		end
	}),
	
	CreateInformationType("questID", { text = L.QUEST_ID, priority = 8 }),
	CreateInformationType("qgs", { text = L.QUEST_GIVERS, priority = 8,
		Process = function(t, reference, tooltipInfo)
			local qgs = reference.qgs;
			if qgs then
				for i,creatureID in ipairs(qgs) do
					tinsert(tooltipInfo, {
						left = (i == 1 and L.QUEST_GIVER),
						right = ConversionMethods.creatureName(creatureID, reference),
					});
				end
			end
		end,
	}),
	CreateInformationType("factionID", { text = L.FACTION_ID, priority = 9 }),
	
	CreateInformationType("achievementCategoryID", { text = L.ACHIEVEMENT_CATEGORY_ID }),
	CreateInformationType("artifactID", { text = L.ARTIFACT_ID }),
	CreateInformationType("azeriteEssenceID", { text = L.AZERITE_ESSENCE_ID }),
	CreateInformationType("conduitID", { text = L.CONDUIT_ID }),
	CreateInformationType("creatureID", { text = L.CREATURE_ID }),
	CreateInformationType("crs", { text = L.CREATURES_LIST,
		limit = 25,
		Process = function(t, reference, tooltipInfo)
			local crs = reference.crs;
			if crs then
				-- extreme amounts of creatures tagged, then only list a summary of how many...
				if #crs > t.limit then
					tinsert(tooltipInfo, {
						left = CREATURE,
						right = L.CREATURES_COUNT:format(#crs),
					});
				else
					for i,creatureID in ipairs(crs) do
						tinsert(tooltipInfo, {
							left = (i == 1 and CREATURE),
							right = ConversionMethods.creatureName(creatureID, reference),
						});
					end
				end
			end
		end,
	}),
	CreateInformationType("criteriaID", { text = "Criteria ID" }),
	CreateInformationType("currencyID", { text = "Currency ID" }),
	CreateInformationType("difficultyID", { text = L.DIFFICULTY_ID }),
	CreateInformationType("displayID", { text = L.DISPLAY_ID }),
	CreateInformationType("encounterID", { text = L.ENCOUNTER_ID }),
	CreateInformationType("explorationID", { text = L.EXPLORATION_ID }),
	CreateInformationType("e", { text = L.EVENT_ID }),
	CreateInformationType("flightPathID", { text = L.FLIGHT_PATH_ID }),
	CreateInformationType("followerID", { text = L.FOLLOWER_ID }),
	CreateInformationType("headerID", { text = L.HEADER_ID }),
	CreateInformationType("illusionID", { text = L.ILLUSION_ID }),
	CreateInformationType("instanceID", { text = L.INSTANCE_ID }),
	CreateInformationType("mapID", { text = L.MAP_ID }),
	CreateInformationType("objectID", { text = L.OBJECT_ID }),
	CreateInformationType("Objectives", { text = L.OBJECTIVES }),
	CreateInformationType("runeforgePowerID", { text = L.RUNEFORGE_POWER_ID }),
	CreateInformationType("setID", { text = L.SET_ID }),
	CreateInformationType("speciesID", { text = L.SPECIES_ID }),
	CreateInformationType("spellID", { text = L.SPELL_ID }),
	CreateInformationType("spellName", { text = L.SPELL_NAME, IsStandaloneProperty = false }),	-- Included as a parameter for the spellID field.
	CreateInformationType("tierID", { text = L.EXPANSION_ID }),
	CreateInformationType("titleID", { text = L.TITLE_ID }),
	
	CreateInformationType("c", { text = L.CLASSES, priority = 8000, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local c = reference.c;-- or GetRelativeValue(reference, "c");	-- TODO: Investigate if we want this.
			if c then
				local classes_tbl = {};
				for i,cl in ipairs(c) do
					local info = app.ClassInfoByID[cl];
					if info.isValid then classes_tbl[#classes_tbl + 1] = info.icontext; end
				end
				local str = app.TableConcat(classes_tbl, nil, nil, ", ")
				if #classes_tbl > 4 then
					tinsert(tooltipInfo, {
						left = t.text .. " " .. str,
						wrap = true,
					});
				else
					tinsert(tooltipInfo, {
						left = t.text,
						right = str,
					});
				end
			end
		end,
	}),
	CreateInformationType("r", { text = RACES, priority = 8000, ShouldDisplayInExternalTooltips = false,
		Process = function(t, reference, tooltipInfo)
			local r = reference.r;-- or GetRelativeValue(reference, "r");	-- TODO: Investigate if we want this.
			if r and r > 0 then
				local usecolors = app.Settings:GetTooltipSetting("UseMoreColors");
				if r == 2 then
					tinsert(tooltipInfo, {
						left = t.text,
						right = usecolors and Colorize(ITEM_REQ_ALLIANCE, app.Colors.Alliance) or ITEM_REQ_ALLIANCE
					});
				elseif r == 1 then
					tinsert(tooltipInfo, {
						left = t.text,
						right = usecolors and Colorize(ITEM_REQ_HORDE, app.Colors.Horde) or ITEM_REQ_HORDE
					});
				else
					tinsert(tooltipInfo, {
						left = t.text,
						right = UNKNOWN
					});
				end
			else
				r = reference.races;-- or GetRelativeValue(reference, "races");	-- TODO: Investigate if we want this.
				if r then
					local races_tbl = {}
					-- temp ref with .raceID of only a single race so we can simply use TryColorizeName
					local temp_ref, raceName = {}
					local usecolors = app.Settings:GetTooltipSetting("UseMoreColors");
					for i,raceID in ipairs(r) do
						temp_ref.raceID = raceID
						raceName = app.GetRaceName(raceID);
						races_tbl[#races_tbl + 1] = usecolors and app.TryColorizeName(temp_ref, raceName) or raceName
					end
					local str = app.TableConcat(races_tbl, nil, nil, ", ")
					if #races_tbl > 4 then
						tinsert(tooltipInfo, {
							left = t.text .. " " .. str,
							wrap = true,
						});
					else
						tinsert(tooltipInfo, {
							left = t.text,
							right = str
						});
					end
				end
			end
		end,
	}),
	CreateInformationType("requireSkill", { text = TRADE_SKILLS, priority = 8000,
		Process = function(t, reference, tooltipInfo)
			local requireSkill, learnedAt = reference.requireSkill, reference.learnedAt;
			if requireSkill then
				local professionName = ConversionMethods.professionName(requireSkill);
				if learnedAt then professionName = professionName .. " (" .. learnedAt .. ")"; end
				tinsert(tooltipInfo, {
					left = L.REQUIRES,
					right = professionName,
				});
			elseif learnedAt then
				tinsert(tooltipInfo, {
					left = L.REQUIRES,
					right = tostring(learnedAt),
				});
			end
		end,
	}),
	
	-- We want these last, usually.
	CreateInformationType("b", { text = L.BINDING, priority = 9000, ShouldDisplayInExternalTooltips = false, }),
	CreateInformationType("iLvl", { text = L.ITEM_LEVEL, priority = 9000 }),
	CreateInformationType("__type", { text = L.OBJECT_TYPE, priority = 9001, ShouldDisplayInExternalTooltips = false, }),
	
	-- We want this after most of the regular fields.
	CreateInformationType("OnTooltip", {
		priority = 10000,
		text = "OnTooltip",
		ForceActive = true,
		Process = function(t, reference, tooltipInfo)
			local OnTooltip = reference.OnTooltip;
			if OnTooltip then OnTooltip(reference, tooltipInfo); end
		end,
	});
};
settings.InformationTypes = InformationTypes;
settings.CreateInformationType = function(key, t)
	local informationType = CreateInformationType(key, t);
	tinsert(InformationTypes, informationType);
	return informationType;
end

local ActiveInformationTypes, ActiveInformationTypesForExternalTooltips = {}, {};
local SortedInformationTypes, SortedInformationTypesByName, priorityA, priorityB = {}, {};
local function SortInformationTypesByLocalizedName(a,b)
	return a.textLower < b.textLower;
end
local function SortInformationTypesByPriority(a,b)
	priorityA = a.priority;
	priorityB = b.priority;
	if priorityA == priorityB then
		return a.textLower < b.textLower;
	else
		return priorityA < priorityB;
	end
end
local function RefreshActiveInformationTypes()
	wipe(ActiveInformationTypesForExternalTooltips);
	wipe(ActiveInformationTypes);
	
	for _,informationType in ipairs(SortedInformationTypes) do
		if settings:GetTooltipSetting(informationType.informationTypeID) or informationType.ForceActive then
			if informationType.IsStandaloneProperty then
				ActiveInformationTypes[#ActiveInformationTypes + 1] = informationType;
				if informationType.ShouldDisplayInExternalTooltips then
					ActiveInformationTypesForExternalTooltips[#ActiveInformationTypesForExternalTooltips + 1] = informationType;
				end
			end
		end
	end
	
	-- Insert the Post Processor
	ActiveInformationTypesForExternalTooltips[#ActiveInformationTypesForExternalTooltips + 1] = PostProcessor;
	ActiveInformationTypes[#ActiveInformationTypes + 1] = PostProcessor;
end

app.ProcessInformationTypes = function(tooltipInfo, reference)
	for _,informationType in ipairs(ActiveInformationTypes) do
		informationType.Process(informationType, reference, tooltipInfo);
	end
end
app.ProcessInformationTypesForExternalTooltips = function(tooltipInfo, reference, itemString)
	reference.itemString = itemString;
	for _,informationType in ipairs(app.ActiveRowReference and ActiveInformationTypes or ActiveInformationTypesForExternalTooltips) do
		informationType.Process(informationType, reference, tooltipInfo);
	end
	reference.itemString = nil;
end

local function OnClickForInformationCheckBox(self)
	settings:SetTooltipSetting(self.informationTypeID, self:GetChecked())
	RefreshActiveInformationTypes()
	settings:Refresh()
end
local function OnRefreshForInformationCheckBox(self)
	self:SetChecked(settings:GetTooltipSetting(self.informationTypeID))
end
settings.RefreshActiveInformationTypes = function()
	wipe(SortedInformationTypes);
	wipe(SortedInformationTypesByName);
	for i,informationType in ipairs(InformationTypes) do
		SortedInformationTypes[#SortedInformationTypes + 1] = informationType;
		if not (informationType.ForceActive or informationType.HideCheckBox) then
			SortedInformationTypesByName[#SortedInformationTypesByName + 1] = informationType;
		end
	end
	table.sort(SortedInformationTypes, SortInformationTypesByPriority);
	table.sort(SortedInformationTypesByName, SortInformationTypesByLocalizedName);
	RefreshActiveInformationTypes();
	
	local last, lowest = nil, nil
	local split1 = math.ceil(#SortedInformationTypesByName / 3)
	local split2 = 2 * split1
	for idNo,informationType in ipairs(SortedInformationTypesByName) do
		local filter = child:CreateCheckBox(informationType.text, OnRefreshForInformationCheckBox, OnClickForInformationCheckBox)
		filter.informationTypeID = informationType.informationTypeID;
		-- Column 1
		if idNo == 1 then
			filter:SetPoint("TOPLEFT", headerAdditionalInformation, "BOTTOMLEFT", -2, 0)
		-- Column 2
		elseif idNo > split1 then
			filter:SetPoint("TOPLEFT", headerAdditionalInformation, "BOTTOMLEFT", 212, 0)
			lowest = last;
			split1 = 999
		-- Column 3
		elseif idNo >= split2 then
			filter:SetPoint("TOPLEFT", headerAdditionalInformation, "BOTTOMLEFT", 425, 0)
			split2 = 999
		else
			filter:AlignBelow(last)
		end
		last = filter
	end
end