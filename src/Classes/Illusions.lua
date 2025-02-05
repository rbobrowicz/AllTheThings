do
-- CRIEVE NOTE: This file is currently identical in both Retail and Classic.
-- DO NOT TOUCH IT.
local app = select(2, ...);

-- Global Variables
local GetItemInfo =
	  GetItemInfo;

-- Illusion Class
local AccountWideIllusionData = {};
local illusionFields = {
	["filterID"] = function(t)
		return 103;
	end,
	["text"] = function(t)
		return t.link;
	end,
	["icon"] = function(t)
		return "Interface/ICONS/INV_Enchant_Disenchant";
	end,
	["collectible"] = function(t)
		return app.Settings.Collectibles.Illusions;
	end,
	["collected"] = function(t)
		return AccountWideIllusionData[t.illusionID];
	end,
};
if C_TransmogCollection then
	local GetIllusionLink = C_TransmogCollection.GetIllusionSourceInfo;
	local GetIllusionStrings = C_TransmogCollection.GetIllusionStrings;
	if GetIllusionStrings then
		illusionFields.link = function(t)
			return select(2, GetIllusionStrings(t.illusionID));
		end
	elseif GetIllusionLink then
		illusionFields.link = function(t)
			return select(3, GetIllusionLink(t.illusionID));
		end
	else
		illusionFields.text = function(t)
			return "[Illusion: " .. t.illusionID .. " (Unsupported)]";
		end
	end
	if illusionFields.link then
		illusionFields.illusionLink = illusionFields.link;
	end

	local C_TransmogCollection_GetIllusions = C_TransmogCollection.GetIllusions;
	if C_TransmogCollection_GetIllusions then
		-- Add Harvest Illusion Collections to the OnRefreshCollections handler.
		app.AddEventHandler("OnRefreshCollections", function()
			for _,illusion in ipairs(C_TransmogCollection_GetIllusions()) do
				if illusion.isCollected then AccountWideIllusionData[illusion.sourceID] = 1; end
			end
		end);
	end
end
app.CreateIllusion = app.CreateClass("Illusion", "illusionID", illusionFields,
"WithItem", {
	link = function(t)
		local name, link = GetItemInfo(t.itemID);
		if link then
			t.name = name;
			t.link = link;
			return link;
		end
	end,
	name = function(t)
		local name, link = GetItemInfo(t.itemID);
		if link then
			t.name = name;
			t.link = link;
			return name;
		end
		return RETRIEVING_DATA;
	end,
	text = function(t)
		return "|cffff80ff[" .. t.name .. "]|r";
	end
}, function(t) return t.itemID; end);

app.AddEventHandler("OnSavedVariablesAvailable", function(currentCharacter, accountWideData)
	local accountWide = accountWideData.Illusions;
	if accountWide then
		AccountWideIllusionData = accountWide;
	else
		accountWideData.Illusions = AccountWideIllusionData;
	end
end);
end