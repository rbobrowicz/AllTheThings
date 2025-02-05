
-- Upgrade Module
local _, app = ...;

-- Concepts:
-- Encapsulates the functionality for handling and checking Upgrade information

-- Global locals
local floor, 	  type, tonumber, ipairs, pairs
	= math.floor, type, tonumber, ipairs, pairs

-- App locals
local SearchForFieldContainer, IsRetrieving
= app.SearchForFieldContainer, app.Modules.RetrievingData.IsRetrieving

-- Upgrade API Implementation
-- Access via AllTheThings.Modules.Upgrade
local api = {};
app.Modules.Upgrade = api;

-- Module locals
local CreateItem, DGU, TransmogLastRefresh
local Runner = app.CreateRunner("upgrade");

app.AddEventHandler("OnLoad", function()
	CreateItem = app.CreateItem;
	DGU = app.DirectGroupUpdate
end)

-- Static mapping of BonusID -> Next Unlock BonusID for a corresponding Item. Unlock will most-likely always be an Appearance
-- Thanks @Addon:ItemUpgradeTip for this compiled list of BonusIDs! Wish Blizzard did this for us by default...
-- https://github.com/filliph/ItemUpgradeTip/blob/master/upgradeHandlers/Flightstones.lua
local BonusIDNextUnlock = {

	-- 10.0.7
	-- Primalist 1/3
	[9342] = 9344,
	-- Primalist 2/3
	[9343] = 9344,
	-- Primalist 3/3
	[9344] = 0,

	-- 10.1
	-- Prior to 10.2 these existed, then Blizzard decided to hate us for no reason
	--[[
    -- Explorer 1/8
    [9294] = 9298,
    -- Explorer 2/8
    [9295] = 9298,
    -- Explorer 3/8
    [9296] = 9298,
    -- Explorer 4/8
    [9297] = 9298,
    -- Explorer 5/8
    [9298] = 0,
    -- Explorer 6/8
    [9299] = 0,
    -- Explorer 7/8
    [9300] = 0,
    -- Explorer 8/8
    [9301] = 0,
    -- Adventurer 1/8
    [9302] = 9306,
    -- Adventurer 2/8
    [9303] = 9306,
    -- Adventurer 3/8
    [9304] = 9306,
    -- Adventurer 4/8
    [9305] = 9306,
    -- Adventurer 5/8
    [9306] = 0,
    -- Adventurer 6/8
    [9307] = 0,
    -- Adventurer 7/8
    [9308] = 0,
    -- Adventurer 8/8
    [9309] = 0,
    -- Veteran 1/8
    [9313] = 9317,
    -- Veteran 2/8
    [9314] = 9317,
    -- Veteran 3/8
    [9315] = 9317,
    -- Veteran 4/8
    [9316] = 9317,
    -- Veteran 5/8
    [9317] = 0,
    -- Veteran 6/8
    [9318] = 0,
    -- Veteran 7/8
    [9319] = 0,
    -- Veteran 8/8
    [9320] = 0,
    -- Champion 1/8
    [9321] = 9325,
    -- Champion 2/8
    [9322] = 9325,
    -- Champion 3/8
    [9323] = 9325,
    -- Champion 4/8
    [9324] = 9325,
    -- Champion 5/8
    [9325] = 0,
    -- Champion 6/8
    [9327] = 0,
    -- Champion 7/8
    [9328] = 0,
    -- Champion 8/8
    [9329] = 0,
    -- Hero 1/5
    [9330] = 9334,
    -- Hero 2/5
    [9331] = 9334,
    -- Hero 3/5
    [9332] = 9334,
    -- Hero 4/5
    [9333] = 9334,
    -- Hero 5/5
    [9334] = 0,
    -- Myth 1/3
    [9380] = 0,
    -- Myth 2/3
    [9381] = 0,
    -- Myth 3/3
    [9382] = 0,
	--]]

	-- 10.2

    -- Explorer
	-- These convert to S2 LFR tier which does not upgrade
    -- [9544] = 9548,
    -- [9545] = 9548,
    -- [9546] = 9548,
    -- [9547] = 9548,
    -- [9548] = 0,
    -- [9549] = 0,
    -- [9550] = 0,
    -- [9551] = 0,

    -- Adventurer
	-- These convert to S2 LFR tier which does not upgrade
    -- [9536] = 9540,
    -- [9537] = 9540,
    -- [9538] = 9540,
    -- [9539] = 9540,
    -- [9540] = 0,
    -- [9541] = 0,
    -- [9542] = 0,
    -- [9543] = 0,

    -- Veteran
    [9552] = 9556,
    [9553] = 9556,
    [9554] = 9556,
    [9555] = 9556,
    [9556] = 0,
    [9557] = 0,
    [9558] = 0,
    [9559] = 0,

    -- Champion
    [9560] = 9564,
    [9561] = 9564,
    [9562] = 9564,
    [9563] = 9564,
    [9564] = 0,
    [9565] = 0,
    [9566] = 0,
    [9567] = 0,

    -- Hero
    [9568] = 9572,
    [9569] = 9572,
    [9570] = 9572,
    [9571] = 9572,
    [9572] = 0,
    [9581] = 0,

    -- Myth
    [9573] = 0,
    [9574] = 0,
    [9575] = 0,
    [9576] = 0,
}

local function GetFirstValueAndKey(t, keys)
	if not t or not keys then return end

	local k
	for i=1,#keys do
		k = keys[i]
		if t[k] then return t[k], k end
	end
end
local function GetNextItemUnlockBonusIDByString(item)
	local itemVals = {(":"):split(item)}

	-- BonusID count
	local bonusCount = tonumber(itemVals[14])
	-- app.PrintDebug("Upgrade",item,"BonusCount",bonusCount)
	if not bonusCount or bonusCount < 1 then return end

	local bonusID, upgrades
	for i=15,14 + bonusCount,1 do
		bonusID = tonumber(itemVals[i])
		if bonusID then
			upgrades = BonusIDNextUnlock[bonusID]
			-- app.PrintDebug("Upgrade:BonusID",bonusID,upgrades)
			if upgrades then return upgrades, bonusID end
		end
	end
end
local function GetNextItemUnlockBonusIDByTable(item)
	local upgrades = BonusIDNextUnlock[item.bonusID or 0]
	if upgrades then return upgrades end

	-- we currently don't store all bonusIDs in item groups
	-- upgrades = GetFirstValueAndKey(BonusIDNextUnlock, item.bonuses)
	-- if upgrades then return upgrades end

	local link = item.link or item.rawlink or item.silentLink
	if link then
		return GetNextItemUnlockBonusIDByString(link)
	end
end
BonusIDNextUnlock.string = GetNextItemUnlockBonusIDByString
BonusIDNextUnlock.table = GetNextItemUnlockBonusIDByTable

local function GetNextItemUnlockBonusID(item)
	-- item can be string(raw), string(link), table
	local getUnlocks = BonusIDNextUnlock[type(item) or ""]
	if not getUnlocks then app.print("failed to get unlocks function",item) return; end

	return getUnlocks(item);
end
api.GetNextItemUnlockBonusID = GetNextItemUnlockBonusID;

local function AsItemSource(t)
	-- already an item source table
	if t.__type == "ItemWithAppearance" then return t; end
	local link = t.link or t.rawlink or t.silentLink;
	if not link then return end
	local sourceID = app.GetSourceID(link)
	if sourceID then
		return app.CreateItemSource(sourceID, t.itemID, t);
	end
end
local function GetUpgrade(t, upmodID, upbonusID)
	local itemID = t.itemID
	local up = {
		itemID = itemID,
		modID = upmodID > 0 and upmodID or nil,
		bonusID = upbonusID > 0 and upbonusID or nil
	}
	return AsItemSource(CreateItem(itemID, up));
end
api.GetUpgrade = GetUpgrade;

-- Returns the different and upgraded version of 't' (via 'up' field only)
local function HasUpgrade(t)

	-- '.up' is the modID.bonusID portion of the respective upgrade item defined in ATT
	local up = t.up;
	if not up then
		-- app.PrintDebug("no upgrade",t.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	-- find or create the upgrade for cached reference
	local upmodID = floor(up);
	local upbonusID = floor((up - upmodID) * 10000 + 0.5);
	up = GetUpgrade(t, upmodID, upbonusID);
	if not up then
		-- app.PrintDebug("HU:no upgrade created",t.modItemID,"=>",upmodID,upbonusID)
		-- t.isUpgraded = true;
		return;
	end

	-- upgrade has to actually be different than the source item
	local uphash = up.hash;
	if uphash and uphash == t.hash or up.sourceID == t.sourceID then
		-- app.PrintDebug("HU:upgrade is same",t.hash,t.modItemID,"=+>",up.__type,uphash,up.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	-- if up.modID == t.modID and up.bonusID == t.bonusID then
	-- 	app.print("SAME ITEM AS UPGRADE!?",t.hash,t.modItemID,"=+>",up.__type,up.hash,up.modItemID)
	-- end

	t._up = up;
	-- app.PrintDebug("HU:",up.__type,t.isUpgrade,t.modItemID,up.modItemID)
	return up;
end

local UpdateUpgradeGroup
local function CheckIsUpgrade(t)
	local upgrade = t._up or HasUpgrade(t);
	if upgrade then
		t.isUpgrade = upgrade.collectible and not upgrade.collected
		-- app.PrintDebug("isUpgrade",t.link,t.isUpgrade)
		Runner.Run(DGU, t)
		return
	end
	-- if it had no upgrade and no link, it isn't cached in game which means
	-- blizz returns wrong data in some appearance API calls. very nice.
	-- queue this group up to try again since we are only running this logic on groups which we *know*
	-- have upgrades
	if IsRetrieving(t.link) then
		-- app.PrintDebug("re-try upgrade",t.link)
		Runner.Run(UpdateUpgradeGroup, t)
	end
end

UpdateUpgradeGroup = function(ref)
	-- app.PrintDebug("Upgrade Update",ref.link)
	CheckIsUpgrade(ref)
end
local function UpdateUpgradeGroups(refs)
	local ref
	-- app.PrintDebug("Upgrade Updates",#refs)
	for i=1,#refs do
		ref = refs[i];
		CheckIsUpgrade(ref)
	end
end
local function UpdateStart()
	app.print("Upgrade Updates Starting...")
end
local function UpdateEnd()
	app.print("Upgrade Updates Done")
end
local function UpdateUpgrades()

	-- all upgrades are based on Transmog, so skip checking if Transmog is not enabled and was not previously enabled
	if not TransmogLastRefresh and not app.Settings.Collectibles.Transmog then
		-- app.PrintDebug("Skip Upgrade Logic")
		return
	end
	TransmogLastRefresh = app.Settings.Collectibles.Transmog

	-- cancel all existing running cost updates
	Runner.Reset()
	Runner.SetPerFrame(1)

	if app.Debugging then
		Runner.OnEnd(UpdateEnd)
		Runner.Run(UpdateStart)
	end

	-- Get all itemIDAsCost entries
	for up,refs in pairs(SearchForFieldContainer("up")) do
		Runner.Run(UpdateUpgradeGroups, refs)
	end

	-- Any re-try updates can try faster
	Runner.SetPerFrame(50)
end

-- Returns the different and upgraded version of 't' (via item link/bonuses or 'up' field)
api.NextUpgrade = function(t)

	-- app.PrintDebug("NU:",t.modItemID)
	-- try basic upgrade logic first (checking 'up' field)
	local upgrade = t._up or HasUpgrade(t);
	if upgrade then return upgrade end

	-- nested upgrades should not be considered for a following upgrade (Contains tooltip/DetermineUpgradeGroups)
	-- if a situation arises in which a single item can be upgraded across multiple 'collectible' variants, this will have to be revisted
	-- if t.isUpgraded then
	-- 	-- app.PrintDebug("isUpgraded",t.modItemID)
	-- 	return;
	-- end

	-- is this a non-default item table which has no upgrade unlock?
	local unlockBonusID = GetNextItemUnlockBonusIDByTable(t)
	if not unlockBonusID or unlockBonusID < 1 then
		-- app.PrintDebug("isUpgraded via item",t.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	-- '.up' is the modID.bonusID portion of the respective upgrade item
	-- if no upgrade
	local up = unlockBonusID / 10000
	-- if not up then
	-- 	-- app.PrintDebug("no upgrade",t.modItemID)
	-- 	-- t.isUpgraded = true;
	-- 	return;
	-- end

	-- parent is pre-upgrade of itself and less than 2 upgrades allowed from the parent, then no upgrade for this
	local p = t.parent
	local pup = p and p._up;
	-- app.PrintDebug("parent?",p,pup and pup.hash,t.hash)
	if pup and pup.hash == t.hash then
		-- app.PrintDebug("parent is upgrade source",p.modItemID,t.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	-- find or create the upgrade for cached reference
	local upmodID = floor(up);
	local upbonusID = floor((up - upmodID) * 10000 + 0.5);
	up = GetUpgrade(t, upmodID, upbonusID);
	if not up then
		-- app.PrintDebug("NU:no upgrade created",t.modItemID,"=>",upmodID,upbonusID)
		-- t.isUpgraded = true;
		return;
	end

	-- upgrade has to actually be different than the source item
	local uphash = up.hash;
	if uphash and uphash == t.hash or up.sourceID == t.sourceID then
		-- app.PrintDebug("NU:upgrade is same",uphash,up.modItemID)
		-- t.isUpgraded = true;
		return;
	end

	t._up = up;
	-- app.PrintDebug("NU:",up.__type,up.collected,t.modItemID,up.modItemID)
	return up;
end

-- Returns whether 't' has an upgrade AND it is uncollected
api.CollectibleAsUpgrade = function(t)
	local upgrade = t._up or HasUpgrade(t);
	return upgrade and not upgrade.collected;
end

app.AddEventHandler("OnRecalculate_NewSettings", UpdateUpgrades)