---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
--[[
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_0_LAUNCH } }, {
	m(THE_RINGING_DEEPS, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
		})),
	}),
})));
--]]