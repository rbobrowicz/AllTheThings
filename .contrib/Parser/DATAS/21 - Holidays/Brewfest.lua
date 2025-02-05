--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
-- #if AFTER 2.2.2
BREWFEST_HEADER = createHeader({
	readable = "Brewfest",
	constant = "BREWFEST_HEADER",
	icon = [[~_.asset("Holiday_brewfest")]],
	eventID = EVENTS.BREWFEST,
	-- #if BEFORE WRATH
	eventSchedule = {
		1, -- Recurring
		9, 20, 10, 0,	-- 9/20 at 10 AM
		10, 4, 10, 0	-- 10/4 at 10 AM
	},
	-- #endif
	text = {
		-- #if AFTER TBC
		en = [[~select(1,GetCategoryInfo(162))]],
		-- #else
		en = "Brewfest",
		-- #endif
	},
});
-- Developer note: Use the BREWFEST_TOKEN constant in place of the reward.
local BREWFEST_TOKEN = {
	-- #if AFTER 2.4.3
	i(37829, {	-- Brewfest Prize Token
		["timeline"] = { "added 2.4.3" },
	}),
	-- #else
	i(33455, {	-- Brewfest Prize Ticket
		["timeline"] = { "added 2.0.1" },
	}),
	-- #endif
};
-- #if AFTER 2.4.3
local BREWFEST_TOKEN_COST = function(cost)
	return { { "i", 37829, cost } };	-- Brewfest Prize Token
end
-- #else
local BREWFEST_TOKEN_COST = function(cost)
	return { { "i", 33455, cost } };	-- Brewfest Prize Ticket
end
-- #endif
local BREWFEST_RIDING_RAMS_ONUPDATE = [[function(t)
	if not (_.IsQuestFlaggedCompleted(t.sourceQuests[1])) then
-- #if NOT ANYCLASSIC
		t.description = "You are unable to purchase the rams from the vendor because you did not complete the 'Brewfest Riding Rams' quest back in 2007. :(";
		for i,item in ipairs(t.g) do
			item.u = 2;
		end
-- #else
		t.description = "You are unable to purchase the rams from this vendor as you have not completed the 'Brewfest Riding Rams' quest. GO GET IT!";
		for i,item in ipairs(t.g) do
			item.u = ]] .. EVENTS.BREWFEST .. [[;
		end
-- #endif
	else
-- #if NOT ANYCLASSIC
		t.description = "You completed the 'Brewfest Riding Rams' quest?! BUY THE RAMS RIGHT NOW!\n\nAlso kinda jealous...\n - Crieve";
-- #else
		t.description = "You completed the 'Brewfest Riding Rams' quest and are now eligible to buy the rams!";
-- #endif
		for i,item in ipairs(t.g) do
			item.u = ]] .. EVENTS.BREWFEST .. [[;
		end
	end
end]];
local BREWFEST_REGALIA = {
	i(33968, {	-- Blue Brewfest Hat
		["timeline"] = { "added 2.0.1" },
		["cost"] = BREWFEST_TOKEN_COST(50),
	}),
	i(33864, {	-- Brown Brewfest Hat
		["timeline"] = { "added 2.0.1" },
		["cost"] = BREWFEST_TOKEN_COST(50),
	}),
	i(33967, {	-- Green Brewfest Hat
		["timeline"] = { "added 2.0.1" },
		["cost"] = BREWFEST_TOKEN_COST(50),
	}),
	i(33969, {	-- Purple Brewfest Hat
		["timeline"] = { "added 2.0.1" },
		["cost"] = BREWFEST_TOKEN_COST(50),
	}),
	i(33863, {	-- Brewfest Dress
		["timeline"] = { "added 2.0.1" },
		["cost"] = BREWFEST_TOKEN_COST(200),
	}),
	i(33862, {	-- Brewfest Regalia
		["timeline"] = { "added 2.0.1" },
		["cost"] = BREWFEST_TOKEN_COST(200),
	}),
	i(33868, {	-- Brewfest Boots
		["timeline"] = { "added 2.0.1" },
		["cost"] = BREWFEST_TOKEN_COST(100),
	}),
	i(33966, {	-- Brewfest Slippers
		["timeline"] = { "added 2.0.1" },
		["cost"] = BREWFEST_TOKEN_COST(100),
	}),
};
local BREWFEST_VENDOR_OnTooltip = [[function(t, tooltipInfo)
	local itemID = 37829;
	local item = _.SearchForField("itemID", itemID)[1];
	local icon = "|T" .. item.icon .. ":0|t";
	local link = item.link or RETRIEVING_DATA;
	tinsert(tooltipInfo, { left = " " });
	tinsert(tooltipInfo, { left = "One-Time Quests:" });
	local coren = _.IsQuestFlaggedCompleted(12491);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 40 for Direbrew's Dire Brew",
		right = _.GetCompletionIcon(coren)
	});

	-- #if AFTER WRATH
	local pink = _.IsQuestFlaggedCompleted(_.FactionID == Enum.FlightPathFaction.Horde and 11120 or 11118);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 40 for Pink Elekks On Parade",
		right = _.GetCompletionIcon(pink)
	});
	-- #endif

	local chucked = _.IsQuestFlaggedCompleted(12022);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 10 for Chug and Chuck",
		right = _.GetCompletionIcon(chucked)
	});

	local back = _.IsQuestFlaggedCompleted(11122);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 10 for There And Back Again",
		right = _.GetCompletionIcon(back)
	});

	tinsert(tooltipInfo, { left = " " });
	tinsert(tooltipInfo, { left = "Daily Quests:" });
	local barked = _.IsQuestFlaggedCompleted(11293);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 15 for Brewfest Barking",
		right = _.GetCollectionIcon(barked)
	});

	local invasion = _.IsQuestFlaggedCompleted(_.FactionID == Enum.FlightPathFaction.Horde and 12192 or 12020);
	tinsert(tooltipInfo, {
		left = " " .. icon .. " 10 for Dark Iron Invasion",
		right = _.GetCollectionIcon(invasion)
	});
	tinsert(tooltipInfo, { left = " " .. icon .. " 0-22 for Ram Racing Dialog** (every 18 hours)" });
	tinsert(tooltipInfo, { left = "** Log out in a rested location and it will be reset after 8 hours." });

	local today = date("*t");
	local start = time({day=20,month=9,year=today.year,hour=0,min=0,sec=0});
-- #if AFTER 3.0.0
	local ends = time({day=6,month=10,year=today.year,hour=0,min=0,sec=0});
-- #else
	local ends = time({day=4,month=10,year=today.year,hour=0,min=0,sec=0});
-- #endif
	local now = time({day=today.day,month=today.month,year=today.year,hour=0,min=0,sec=0});
	if now >= start and now <= ends then
		local secondsPerDay = 86400;
		local totalDays = math.floor(difftime(ends, start) / secondsPerDay);
		local m = 60 + (25 * totalDays);
		tinsert(tooltipInfo, { left = " " });
		tinsert(tooltipInfo, { left = "Currently", right = GetItemCount(itemID, true) .. "x " .. icon .. " " .. link });
		tinsert(tooltipInfo, { left = "Total Possible*", right = m .. " - " .. (m + (22 * totalDays)) .. "x " .. icon .. " " .. link });

		local remaining = math.floor(difftime(ends, now) / secondsPerDay);
		if remaining <= 1 then
			local baseAmount = (not barked and 15 or 0) + (not invasion and 10 or 0);
			tinsert(tooltipInfo, { left = "Total Remaining*", right = baseAmount .. " - " .. (baseAmount + 22) .. "x " .. icon .. " " .. link });
		else
			local baseAmount = (not barked and 15 or 0) + (not invasion and 10 or 0) + (25 * remaining);
			tinsert(tooltipInfo, { left = "Total Remaining*", right = baseAmount .. " - " .. (baseAmount + (22 * remaining)) .. "x " .. icon .. " " .. link });
		end
		tinsert(tooltipInfo, { left = "* Based on if you didn't miss a single day and only whole days count." });
	end
end]];

root(ROOTS.Holidays, applyevent(EVENTS.BREWFEST, n(BREWFEST_HEADER, {
	n(ACHIEVEMENTS, {
		ach(18579, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- A Round on the House
			crit(60561, {	-- Ohn'ahran Plains, Maruukai
				["_quests"] = { 77152 },
			}),
			crit(61569, {	-- Ohn'ahran Plains, Rusza'Thar Reach
				["_quests"] = { 77745 },
			}),
			crit(60562, {	-- Ohn'ahran Plains, Shady Sanctuary
				["_quests"] = { 77099 },
			}),
			crit(61571, {	-- Thaldraszus, Algeth'era Court
				["_quests"] = { 77747 },
			}),
			crit(60563, {	-- Thaldraszus, Eon's Fringe
				["_quests"] = { 77155 },
			}),
			crit(60564, {	-- Thaldraszus, Valdrakken
				["_quests"] = { 77153 },
			}),
			crit(60565, {	-- The Azure Span, Camp Antonidas
				["_quests"] = { 77096 },
			}),
			crit(61570, {	-- The Azure Span, Camp Nowhere
				["_quests"] = { 77746 },
			}),
			crit(60566, {	-- The Azure Span, Iskaara
				["_quests"] = { 77097 },
			}),
			crit(61568, {	-- The Waking Shores, Dragonscale Basecamp
				["_quests"] = { 77744 },
			}),
			crit(60567, {	-- The Waking Shores, Ruby Lifeshrine
				["_quests"] = { 76531 },
			}),
			crit(60568, {	-- The Waking Shores, Wingrest Embassy
				["_quests"] = { 77095 },
			}),
		})),
		ach(1684, {	-- Brewmaster (A)
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
				1186,				-- Down With The Dark Iron
				1185,				-- The Brewfest Diet
				2796,				-- Brew of the Month
				295,				-- Direbrewfest
				303,				-- Have Keg, Will Travel
				1936,				-- Does Your Wolpertinger Linger?
			}},
			["timeline"] = { "added 3.0.1", "removed 5.0.4" },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				title(101),				-- Brewmaster
			},
		}),
		ach(1683, {	-- Brewmaster (H)
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
				-- #if BEFORE 8.2.0
				1186,				-- Down With The Dark Iron
				-- #endif
				1185,				-- The Brewfest Diet
				2796,				-- Brew of the Month
				295,				-- Direbrewfest
				303,				-- Have Keg, Will Travel
				1936,				-- Does Your Wolpertinger Linger?
			}},
			["timeline"] = { "added 3.0.1" },
			-- #if BEFORE MOP
			["races"] = HORDE_ONLY,
			-- #endif
			["groups"] = {
				title(101),				-- Brewmaster
			},
		}),
		ach(3496, {	-- A Brew-FAST Mount
			["providers"] = {
				{ "i", 37828 },	-- Great Brewfest Kodo
				{ "i", 33977 },	-- Swift Brewfest Ram
			},
			-- #if BEFORE WRATH
			["description"] = "Obtain an epic Brewfest mount.",
			-- #endif
			["timeline"] = { "added 2.0.1" },
		}),
		-- #if AFTER MOP
		ach(1260, {	-- Almost Blind Luck [MOP+] / Drunken Stupor
			["timeline"] = { "added 3.0.1" },
			["maps"] = { SHATTRATH_CITY },
		}),
		-- #endif
		ach(1293, {	-- Blue Brewfest Stein [Removed]
			["provider"] = { "i", 33016 },	-- Blue Brewfest Stein
			["timeline"] = { "added 2.0.1", "removed 3.0.1" },
		}),
		ach(2796, {	-- Brew of the Month
			["providers"] = {
				{ "i", 37571 },	-- "Brew of the Month" Club Membership Form (newer)
				{ "i", 37599 },	-- "Brew of the Month" Club Membership Form (newer)
			},
			["timeline"] = { "added 3.0.1" },
		}),
		ach(1183, bubbleDownSelf({ ["timeline"] = { "added 3.0.1" } }, {	-- Brew of the Year
			crit(3526, {	-- Aromatic Honey Brew
				["provider"] = { "i", 37490 },	-- Aromatic Honey Brew
			}),
			crit(3525, {	-- Autmunal Acorn Ale
				["provider"] = { "i", 37497 },	-- Autmunal Acorn Ale
			}),
			crit(3524, {	-- Bartlett's Bitter Brew
				["provider"] = { "i", 37498 },	-- Bartlett's Bitter Brew
			}),
			crit(3523, {	-- Binary Brew
				["provider"] = { "i", 37496 },	-- Binary Brew
			}),
			crit(3522, {	-- Blackrock Lager
				["provider"] = { "i", 37493 },	-- Blackrock Lager
			}),
			crit(3521, {	-- Draenic Pale Ale
				["provider"] = { "i", 37495 },	-- Draenic Pale Ale
			}),
			crit(3520, {	-- Izzard's Ever Flavor
				["provider"] = { "i", 37489 },	-- Izzard's Ever Flavor
			}),
			crit(3519, {	-- Lord of Frost's Private Label
				["provider"] = { "i", 37499 },	-- Lord of Frost's Private Label
			}),
			crit(3518, {	-- Metok's Bubble Bock
				["provider"] = { "i", 37491 },	-- Metok's Bubble Bock
			}),
			crit(3517, {	-- Springtime Stout
				["provider"] = { "i", 37492 },	-- Springtime Stout
			}),
			crit(3516, {	-- Stranglethorn Brew
				["provider"] = { "i", 37494 },	-- Stranglethorn Brew
			}),
			crit(3515, {	-- Wild Winter Pilsner
				["provider"] = { "i", 37488 },	-- Wild Winter Pilsner
			}),
		})),
		ach(293, {	-- Disturbing the Peace
			["providers"] = {
				{ "i", 33968 },	-- Blue Brewfest Hat
				{ "i", 33864 },	-- Brown Brewfest Hat
				{ "i", 33967 },	-- Green Brewfest Hat
				{ "i", 33969 },	-- Purple Brewfest Hat
				{ "i", 33863 },	-- Brewfest Dress
				{ "i", 33862 },	-- Brewfest Regalia
				{ "i", 33868 },	-- Brewfest Boots
				{ "i", 33966 },	-- Brewfest Slippers
			},
			["timeline"] = { "added 3.0.1" },
			["maps"] = { NORTHREND_DALARAN },
		}),
		ach(1936, {	-- Does Your Wolpertinger Linger?
			["provider"] = { "i", 32233 },	-- Wolpertinger's Tankard
			["timeline"] = { "added 2.2.2" },
		}),
		-- #if BEFORE MOP
		ach(1260, {	-- Drunken Stupor / Almost Blind Luck [MOP+]
			["timeline"] = { "added 3.0.1" },
			["maps"] = { SHATTRATH_CITY },
		}),
		-- #endif
		ach(4782, {	-- Green Brewfest Stein [Removed]
			["provider"] = { "i", 37892 },	-- Green Brewfest Stein
			["timeline"] = { "added 3.0.1", "removed 4.0.1" },
		}),
		ach(303, {	-- Have Keg, Will Travel
			["providers"] = {
				{ "i", 33976 },	-- Brewfest Ram
				{ "i", 37828 },	-- Great Brewfest Kodo
				{ "i", 33977 },	-- Swift Brewfest Ram
				{ "i", 37750 },	-- Fresh Brewfest Hops
				{ "i", 39476 },	-- Fresh Goblin Brewfest Hops
				{ "i", 37816 },	-- Preserved Brewfest Hops
			},
			-- #if BEFORE WRATH
			["description"] = "Obtain a Brewfest mount, or transform yours into one using Brewfest Hops.",
			-- #endif
			["timeline"] = { "added 2.0.1" },
		}),
		ach(1184, bubbleDownSelf({ ["timeline"] = { "added 3.0.1" } }, {	-- Strange Brew (A)
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				crit(8885, {	-- Barleybrew Clear
					["provider"] = { "i", 33030 },	-- Barleybrew Clear
				}),
				crit(8884, {	-- Barleybrew Dark
					["provider"] = { "i", 33029 },	-- Barleybrew Dark
				}),
				crit(8883, {	-- Barleybrew Light
					["provider"] = { "i", 33028 },	-- Barleybrew Light
				}),
				crit(8878, {	-- Gordok Grog
					["provider"] = { "i", 33034 },	-- Gordok Grog
				}),
				crit(9014, {	-- Mudder's Milk
					["provider"] = { "i", 33036 },	-- Mudder's Milk
				}),
				crit(8882, {	-- Ogre Mead
					["provider"] = { "i", 33035 },	-- Ogre Mead
				}),
				crit(8879, {	-- Thunder 45
					["provider"] = { "i", 33031 },	-- Thunder 45
				}),
				crit(8880, {	-- Thunderbrew Ale
					["provider"] = { "i", 33032 },	-- Thunderbrew Ale
				}),
				crit(8881, {	-- Thunderbrew Stout
					["provider"] = { "i", 33033 },	-- Thunderbrew Stout
				}),
			},
		})),
		ach(1203, bubbleDownSelf({ ["timeline"] = { "added 3.0.1" } }, {	-- Strange Brew (H)
			["races"] = HORDE_ONLY,
			["groups"] = {
				crit(8889, {	-- Brewdoo Magic
					["provider"] = { "i", 34021 },	-- Brewdoo Magic
				}),
				crit(8878, {	-- Gordok Grog
					["provider"] = { "i", 33034 },	-- Gordok Grog
				}),
				crit(8888, {	-- Jungle River Water
					["provider"] = { "i", 34020 },	-- Jungle River Water
				}),
				crit(8886, {	-- Long Stride Brew
					["provider"] = { "i", 34018 },	-- Long Stride Brew
				}),
				crit(9014, {	-- Mudder's Milk
					["provider"] = { "i", 33036 },	-- Mudder's Milk
				}),
				crit(8882, {	-- Ogre Mead
					["provider"] = { "i", 33035 },	-- Ogre Mead
				}),
				crit(8887, {	-- Path of Brew
					["provider"] = { "i", 34019 },	-- Path of Brew
				}),
				crit(8891, {	-- Small Step Brew
					["provider"] = { "i", 34017 },	-- Small Step Brew
				}),
				crit(8890, {	-- Stout Shrunken Head
					["provider"] = { "i", 34022 },	-- Stout Shrunken Head
				}),
			},
		})),
		ach(1185, bubbleDownSelf({ ["timeline"] = { "added 3.0.1" } }, {	-- The Brewfest Diet
			-- #if ANYCLASSIC
			crit(3542, {	-- Dried Sausage
				["provider"] = { "i", 34063 }	-- Dried Sausage
			}),
			crit(3543, {	-- Pickled Sausage
				["provider"] = { "i", 33024 }	-- Pickled Sausage
			}),
			-- #else
			crit(18619, {	-- Dried Sausage
				["provider"] = { "i", 34063 }	-- Dried Sausage
			}),
			crit(18622, {	-- Pickled Sausage
				["provider"] = { "i", 33024 }	-- Pickled Sausage
			}),
			-- #endif
			crit(3544, {	-- Savory Sausage
				["provider"] = { "i", 33023 }	-- Savory Sausage
			}),
			-- #if ANYCLASSIC
			crit(3545, {	-- Spiced Onion Cheese
				["provider"] = { "i", 34065 }	-- Spiced Onion Cheese
			}),
			crit(3546, {	-- Spicy Smoked Sausage
				["provider"] = { "i", 33025 }	-- Spicy Smoked Sausage
			}),
			crit(3547, {	-- Succulent Sausage
				["provider"] = { "i", 34064 }	-- Succulent Sausage
			}),
			-- #else
			crit(18621, {	-- Spiced Onion Cheese
				["provider"] = { "i", 34065 }	-- Spiced Onion Cheese
			}),
			crit(18623, {	-- Spicy Smoked Sausage
				["provider"] = { "i", 33025 }	-- Spicy Smoked Sausage
			}),
			crit(18620, {	-- Succulent Sausage
				["provider"] = { "i", 34064 }	-- Succulent Sausage
			}),
			-- #endif
			crit(7987, {	-- The Essential Brewfest Pretzel
				["provider"] = { "i", 33043 }	-- The Essential Brewfest Pretzel
			}),
			-- #if ANYCLASSIC
			crit(3549, {	-- The Golden Link
				["provider"] = { "i", 33026 }	-- The Golden Link
			}),
			-- #else
			crit(18624, {	-- The Golden Link
				["provider"] = { "i", 33026 }	-- The Golden Link
			}),
			-- #endif
		})),
		ach(1292, {	-- Yellow Brewfest Stein [Removed]
			["provider"] = { "i", 32912 },	-- Yellow Brewfest Stein
			["timeline"] = { "added 2.0.1", "removed 2.4.3" },
		}),
	}),
	n(23872, {	-- Coren Direbrew
		-- #if AFTER 3.0.1
		-- #if BEFORE 10.0.5
		["description"] = "You can loot the keg once a day per character by queueing for the encounter in the Dungeon Finder.",
		["maps"] = {
			BLACKROCK_DEPTHS,
			243,	-- Blackrock Depths
		},
		-- #else
		["questID"] = 12062,	-- Insult Coren Direbrew
		["maps"] = { BLACKROCK_DEPTHS },
		-- #endif
		-- #endif
		["timeline"] = { "added 2.0.1" },
		["isDaily"] = true,
		-- #if AFTER SHADOWLANDS
		["lvl"] = 20,
		-- #elseif AFTER WRATH
		["lvl"] = 75,
		-- #else
		["lvl"] = 65,
		-- #endif
		["groups"] = {
			ach(295, {	-- Direbrewfest
				["timeline"] = { "added 3.0.1" },
			}),
			i(117393, {	-- Keg-Shaped Treasure Chest	(Epic Quality)
				-- #if AFTER 10.0.5
				["description"] = "You can loot the Keg-Shaped Treasure Chest once a day per character by queueing for the encounter in the Dungeon Finder.\nThe first Keg-Shaped Treasure Chest you get per day per |CFFFF0000account|r has a vastly increased chance to contain collectables such as manuscripts, mounts, pets, and toys.",
				-- #endif
				["timeline"] = { "added 6.0.1.18594" },
				["lvl"] = 98,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					i(37828, {	-- Great Brewfest Kodo (MOUNT!)
						["timeline"] = { "added 2.0.1" },
					}),
					i(33977, {	-- Swift Brewfest Ram (MOUNT!)
						["timeline"] = { "added 2.0.1" },
					}),
					i(117378, {	-- Direbrew's Bloodied Shanker [Level 100+]
						["timeline"] = { "added 6.0.1.18594" },
					}),
					i(150922, {	-- Terrific Tankard O'Terror [Level 100+]
						["timeline"] = { "added 6.0.1.18594" },
					}),
					i(117379, {	-- Tremendous Tankard O'Terror [Level 100+]
						["timeline"] = { "added 6.0.1.18594" },
					}),
					i(37863, {	-- Direbrew's Remote
						["timeline"] = { "added 2.0.1" },
					}),
					i(208742, {	-- Renewed Proto-Drake: Brewfest Armor (DM!)
						["timeline"] = { ADDED_10_1_7 },
					}),
				}),
			}),
			i(149752, {	-- Keg-Shaped Treasure Box		(Uncommon Quality)
				["timeline"] = { "added 7.0.1" },
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					i(117378, {	-- Direbrew's Bloodied Shanker [Level 100+]
						["timeline"] = { "added 6.0.1.18594" },
					}),
					i(150922, {	-- Terrific Tankard O'Terror [Level 100+]
						["timeline"] = { "added 6.0.1.18594" },
					}),
					i(117379, {	-- Tremendous Tankard O'Terror [Level 100+]
						["timeline"] = { "added 6.0.1.18594" },
					}),
					i(37863, {	-- Direbrew's Remote
						["timeline"] = { "added 2.0.1" },
					}),
				}),
			}),
			i(54535, {	-- Keg-Shaped Treasure Chest
				["timeline"] = { "added 3.0.1", "removed 6.0.1" },
				-- #if ANYCLASSIC
				-- #if BEFORE CATA
				-- #if AFTER TBC
				-- This is some dumb shit, Blizzard decided to launch Wrath at the same time as Brewfest, but they're using level 70 version without a keg.
				["OnUpdate"] = [[function(t)
					if not t.kodo then
						local f = _.SearchForField("itemID", 37828);
						if f and #f > 0 then
							t.kodo = f[1];
						else
							return true;
						end
					end
					if not t.ram then
						local f = _.SearchForField("itemID", 33977);
						if f and #f > 0 then
							t.ram = f[1];
						else
							return true;
						end
					end
					if not t.remote then
						local f = _.SearchForField("itemID", 37863);
						if f and #f > 0 then
							t.remote = f[1];
						else
							return true;
						end
					end
					local u, r = ]] .. WRATH_PHASE_ONE .. [[, ]] .. REMOVED_FROM_GAME .. [[;
					if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_ONE .. [[) then
						if t.kodo.parent ~= t then
							table.remove(t.kodo.parent.g, 3);
							table.remove(t.kodo.parent.g, 3);
							table.remove(t.kodo.parent.g, 3);
							t.kodo.parent = t;
							t.ram.parent = t;
							t.remote.parent = t;
							table.insert(t.g, t.remote);
							table.insert(t.g, 1, t.ram);
							table.insert(t.g, 1, t.kodo);
						end
					else
						if t.kodo.parent == t then
							table.remove(t.g, #t.g);
							table.remove(t.g, 1);
							table.remove(t.g, 1);
							t.kodo.parent = t.parent;
							t.ram.parent = t.parent;
							t.remote.parent = t.parent;
							table.insert(t.parent.g, 3, t.remote);
							table.insert(t.parent.g, 3, t.ram);
							table.insert(t.parent.g, 3, t.kodo);
						end
						u = 1;
						r = nil;
					end
					for i,o in ipairs(t.g) do o.u = u; end
					t.kodo.u = nil;
					t.ram.u = nil;
					t.remote.u = nil;
					for i,itemID in ipairs({ 37597, 37128, 37127, 38289, 38290, 38288, 38287 }) do
						local f = _.SearchForField("itemID", itemID);
						if f and #f > 0 then f[1].u = r; end
					end
					for i,itemID in ipairs({ 49078, 49116, 49080, 49118, 49074, 49076 }) do
						local f = _.SearchForField("itemID", itemID);
						if f and #f > 0 then f[1].u = u; end
					end
					t.u = u;
				end]],
				-- #endif
				-- #endif
				-- #endif
				["groups"] = {
					i(37828, {	-- Great Brewfest Kodo (MOUNT!)
						["timeline"] = { "added 2.0.1" },
					}),
					i(33977, {	-- Swift Brewfest Ram (MOUNT!)
						["timeline"] = { "added 2.0.1" },
					}),
					i(107217, {	-- Direbrew's Bloodied Shanker [Level 90]
						["timeline"] = { "added 5.0.1", "removed 6.0.1" },
					}),
					i(107218, {	-- Tremendous Tankard O'Terror [Level 90]
						["timeline"] = { "added 5.0.1", "removed 6.0.1" },
					}),
					i(71331, {	-- Direbrew's Bloodied Shanker [Level 85]
						["timeline"] = { "added 4.0.1", "removed 5.0.1" },
					}),
					i(71332, {	-- Tremendous Tankard O'Terror [Level 85]
						["timeline"] = { "added 4.0.1", "removed 5.0.1" },
					}),
					i(49120, {	-- Direbrew's Bloody Shanker [Level 80]
						["timeline"] = { "added 3.0.1", "removed 4.0.1" },
					}),
					i(48663, {	-- Tankard O' Terror [Level 80]
						["timeline"] = { "added 3.0.1", "removed 4.0.1" },
					}),
					i(37863, {	-- Direbrew's Remote
						["timeline"] = { "added 2.0.1" },
					}),
				},
			}),
			-- #if BEFORE WRATH
			i(37828, {	-- Great Brewfest Kodo (MOUNT!)
				["timeline"] = { "added 2.0.1" },
			}),
			i(33977, {	-- Swift Brewfest Ram (MOUNT!)
				["timeline"] = { "added 2.0.1" },
			}),
			i(37863, {	-- Direbrew's Remote
				["timeline"] = { "added 2.0.1" },
			}),
			-- #endif
			-- Warlords of Draenor+
			i(117361, {	-- Bitterest Balebrew Charm [Level 100+]
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117357, {	-- Brawler's Statue [Level 100+]
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117391, {	-- Bubbliest Brightbrew Charm [Level 100+]
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117360, {	-- Coren's Cold Chromium Coaster [Level 100+]
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117358, {	-- Mithril Wristwatch [Level 100+]
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117359, {	-- Thousand-Year Pickled Egg [Level 100+]
				["timeline"] = { "added 6.0.1.18594" },
			}),
			-- Mists of Pandaria
			i(87576, {	-- Bitterest Balebrew Charm [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(87571, {	-- Brawler's Statue [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(87575, {	-- Bubbliest Brightbrew Charm [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(87574, {	-- Coren's Cold Chromium Coaster [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(87572, {	-- Mithril Wristwatch [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(87573, {	-- Thousand-Year Pickled Egg [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			-- Cataclysm
			i(71333, {	-- Bitterer Balebrew Charm [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(71338, {	-- Brawler's Trophy [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(71334, {	-- Bubblier Brightbrew Charm [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(71335, {	-- Coren's Chilled Chromium Coaster [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(71337, {	-- Mithril Stopwatch [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(71336, {	-- Petrified Pickled Egg [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			-- Wrath of the Lich King
			i(49078, {	-- Ancient Pickled Egg [Level 80]
				["timeline"] = { "added 3.0.1", "removed 4.0.1" },
			}),
			i(49116, {	-- Bitter Balebrew Charm [Level 80]
				["timeline"] = { "added 3.0.1", "removed 4.0.1" },
			}),
			i(49080, {	-- Brawler's Souvenir [Level 80]
				["timeline"] = { "added 3.0.1", "removed 4.0.1" },
			}),
			i(49118, {	-- Bubbling Brightbrew Charm [Level 80]
				["timeline"] = { "added 3.0.1", "removed 4.0.1" },
			}),
			i(49074, {	-- Coren's Chromium Coaster [Level 80]
				["timeline"] = { "added 3.0.1", "removed 4.0.1" },
			}),
			i(49076, {	-- Mithril Pocketwatch [Level 80]
				["timeline"] = { "added 3.0.1", "removed 4.0.1" },
			}),
			-- Burning Crusade
			i(37597, {	-- Direbrew's Shanker [Level 70]
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
			}),
			i(37128, {	-- Balebrew Charm [Level 70]
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
			}),
			i(37127, {	-- Brightbrew Charm [Level 70]
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
			}),
			i(38289, {	-- Coren's Lucky Coin [Level 70]
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
			}),
			i(38290, {	-- Dark Iron Smoking Pipe [Level 70]
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
			}),
			i(38288, {	-- Direbrew Hops [Level 70]
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
			}),
			i(38287, {	-- Empty Mug of Direbrew [Level 70]
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
			}),
			i(38280, {	-- Direbrew's Dire Brew (Alliance)
				["timeline"] = { "added 2.0.1" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(38281, {	-- Direbrew's Dire Brew (Horde)
				["timeline"] = { "added 2.0.1" },
				["races"] = HORDE_ONLY,
			}),
		},
	}),
	n(QUESTS, {
		-- #if NOT ANYCLASSIC
		["OnInit"] = [[function(t)
			if GetCVar("portal") == "EU" then
				local quests = {[11117]=1,[11431]=1,[11118]=1,[11120]=1};
				for i,quest in ipairs(t.g) do
					if quest.questID and quests[quest.questID] then
						quest.u = 2;
					end
				end
			end
			return t;
		end]],
		-- #endif
		["groups"] = {
			q(29397, {	-- A New Supplier of Souvenirs (A)
				["qg"] = 24468,	-- Pol Amberstill
				["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
				-- #if AFTER CATA
				["coord"] = { 53.6, 38.6, DUN_MOROGH },
				-- #else
				["coord"] = { 46.4, 40.3, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 4.0.1" },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33955, 1 },	-- Brewfest Stein Voucher
				},
				["isYearly"] = true,
				["groups"] = {
					i(56836, {	-- Overflowing Purple Brewfest Stein
						["timeline"] = { "added 4.0.1" },
					}),
				},
			}),
			q(29396, {	-- A New Supplier of Souvenirs (H)
				["qg"] = 24497,	-- Ram Master Ray
				["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
				-- #if AFTER CATA
				["coord"] = { 42.6, 17.6, DUROTAR },
				-- #else
				["coord"] = { 46.3, 14.8, DUROTAR },
				-- #endif
				["timeline"] = { "added 4.0.1" },
				["races"] = HORDE_ONLY,
				["cost"] = {
					{ "i", 33955, 1 },	-- Brewfest Stein Voucher
				},
				["isYearly"] = true,
				["groups"] = {
					i(56836, {	-- Overflowing Purple Brewfest Stein
						["timeline"] = { "added 4.0.1" },
					}),
				},
			}),
			q(13932, {	-- Another Year, Another Souvenir (A)
				["qg"] = 24468,	-- Pol Amberstill
				["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
				-- #if AFTER CATA
				["coord"] = { 53.6, 38.6, DUN_MOROGH },
				-- #else
				["coord"] = { 46.4, 40.3, DUN_MOROGH },
				-- #endif
				-- #if BEFORE WRATH
				["description"] = "This quest was only available during the 2009 & 2010 Brewfest. We are unsure if it will be returning during TBC Classic.",
				-- #endif
				["timeline"] = { "added 3.0.1", "removed 4.0.1" },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33955, 1 },	-- Brewfest Stein Voucher
				},
				["isYearly"] = true,
				["groups"] = {
					i(37892, {	-- Green Brewfest Stein
						["timeline"] = { "added 3.0.1", "removed 4.0.1" },
					}),
				},
			}),
			q(13931, {	-- Another Year, Another Souvenir (H)
				["qg"] = 24497,	-- Ram Master Ray
				["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
				-- #if AFTER CATA
				["coord"] = { 42.6, 17.6, DUROTAR },
				-- #else
				["coord"] = { 46.3, 14.8, DUROTAR },
				-- #endif
				-- #if BEFORE WRATH
				["description"] = "This quest was only available during the 2009 & 2010 Brewfest. We are unsure if it will be returning during TBC Classic.",
				-- #endif
				["timeline"] = { "added 3.0.1", "removed 4.0.1" },
				["races"] = HORDE_ONLY,
				["cost"] = {
					{ "i", 33955, 1 },	-- Brewfest Stein Voucher
				},
				["isYearly"] = true,
				["groups"] = {
					i(37892, {	-- Green Brewfest Stein
						["timeline"] = { "added 3.0.1", "removed 4.0.1" },
					}),
				},
			}),
			q(77152, {	-- Bar Tab Barrel @ Ohn'ahran Plains, Maruukai
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 59.8, 38.7, OHNAHRAN_PLAINS },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77745, {	-- Bar Tab Barrel @ Ohn'ahran Plains, Rusza'Thar Reach
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 85.8, 35.3, OHNAHRAN_PLAINS },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77099, {	-- Bar Tab Barrel @ Ohn'ahran Plains, Shady Sanctuary
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 28.6, 60.4, OHNAHRAN_PLAINS },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77747, {	-- Bar Tab Barrel @ Thaldraszus, Algeth'era Court
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 50.1, 42.7, THALDRASZUS },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77155, {	-- Bar Tab Barrel @ Thaldraszus, Eon's Fringe
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 52.2, 81.5, THALDRASZUS },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77153, {	-- Bar Tab Barrel @ Thaldraszus, Valdrakken
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 47.9, 46.8, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77096, {	-- Bar Tab Barrel @ The Azure Span, Camp Antonidas
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 46.9, 40.2, THE_AZURE_SPAN },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77746, {	-- Bar Tab Barrel @ The Azure Span, Camp Nowhere
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 62.8, 57.7, THE_AZURE_SPAN },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77097, {	-- Bar Tab Barrel @ The Azure Span, Iskaara
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77744, {	-- Bar Tab Barrel @ The Waking Shores, Dragonscale Basecamp
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 47.7, 83.3, THE_WAKING_SHORES },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(76531, {	-- Bar Tab Barrel @ The Waking Shores, Ruby Lifeshrine
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 58.3,67.5, THE_WAKING_SHORES },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77095, {	-- Bar Tab Barrel @ The Waking Shores, Wingrest Embassy
				["provider"] = { "o", 405010 },	-- Bar Tab Barrel
				["coord"] = { 76.3, 35.4, THE_WAKING_SHORES },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(77208, {	-- Barreling Down
				["qg"] = 207496,	-- Bragdur Battlebrew
				["coord"] = { 29.7, 56.2, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_7 },
				["isDaily"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(11293, {	-- Bark for the Barleybrews! (A)
				["qg"] = 23627,	-- Becan Barleybrew
				["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
				--[[
				-- TODO: If they don't both check off when you complete one, uncomment.
				["altQuests"] = {
					11293,	-- Bark for the Barleybrews! (A)
					11294,	-- Bark for the Thunderbrews! (A)
				},
				]]--
				-- #if AFTER CATA
				["coord"] = { 56.0, 38.0, DUN_MOROGH },
				-- #else
				["coord"] = { 49.0, 39.8, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["maps"] = { IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isDaily"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(11407, {	-- Bark for Drohn's Distillery! (H)
				["qg"] = 24498,	-- Cort Gorestein
				["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
				--[[
				-- TODO: If they don't both check off when you complete one, uncomment.
				["altQuests"] = {
					11407,	-- Bark for Drohn's Distillery! (H)
					11408,	-- Bark for T'chali's Voodoo Brewery! (H)
				},
				]]--
				-- #if AFTER CATA
				["coord"] = { 40.5, 18.3, DUROTAR },
				-- #else
				["coord"] = { 44.4, 17.9, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["maps"] = { ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isDaily"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(11294, {	-- Bark for the Thunderbrews! (A)
				["qg"] = 23628,	-- Daran Thunderbrew
				["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
				--[[
				-- TODO: If they don't both check off when you complete one, uncomment.
				["altQuests"] = {
					11293,	-- Bark for the Barleybrews! (A)
					11294,	-- Bark for the Thunderbrews! (A)
				},
				]]--
				-- #if AFTER CATA
				["coord"] = { 56.6, 36.8, DUN_MOROGH },
				-- #else
				["coord"] = { 49.5, 38.7, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["maps"] = { IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isDaily"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(11408, {	-- Bark for T'chali's Voodoo Brewery! (H)
				["qg"] = 24498,	-- Cort Gorestein
				["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
				--[[
				-- TODO: If they don't both check off when you complete one, uncomment.
				["altQuests"] = {
					11407,	-- Bark for Drohn's Distillery! (H)
					11408,	-- Bark for T'chali's Voodoo Brewery! (H)
				},
				]]--
				-- #if AFTER CATA
				["coord"] = { 40.5, 18.3, DUROTAR },
				-- #else
				["coord"] = { 44.4, 17.9, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["maps"] = { ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(11441, {	-- Brewfest! (A)
				["qgs"] = {
					18927,	-- Human Commoner
					19148,	-- Dwarf Commoner
					19171,	-- Draenei Commoner
					19172,	-- Gnome Commoner
					19173,	-- Night Elf Commoner
					20102,	-- Goblin Commoner
				},
				["altQuests"] = {
					11441,	-- Brewfest! (A)
					11442,	-- Welcome to Brewfest! (A)
				},
				["timeline"] = { "added 2.2.2" },
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					DARNASSUS,
					THE_EXODAR,
					ISLE_OF_THUNDER,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					i(33030, {	-- Barleybrew Clear
						["timeline"] = { "added 2.2.2" },
					}),
					i(33034, {	-- Gordok Grog
						["timeline"] = { "added 2.2.2" },
					}),
					i(33031, {	-- Thunder 45
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			q(11446, {	-- Brewfest! (H)
				["qgs"] = {
					19169,	-- Blood Elf Commoner
					19175,	-- Orc Commoner
					19176,	-- Tauren Commoner
					19177,	-- Troll Commoner
					19178,	-- Forsaken Commoner
					20102,	-- Goblin Commoner
				},
				["altQuests"] = {
					11446,	-- Brewfest! (H)
					11447,	-- Welcome to Brewfest! (H)
				},
				["timeline"] = { "added 2.2.2" },
				["maps"] = {
					DUROTAR,
					NORTHERN_BARRENS,
					TANARIS,
					WINTERSPRING,
					ORGRIMMAR,
					THUNDER_BLUFF,
					UNDERCITY,
					EVERSONG_WOODS,
					NETHERSTORM,
					SILVERMOON_CITY,
					SHATTRATH_CITY,
					THE_STORM_PEAKS,
					NORTHREND_DALARAN,
					THE_CAPE_OF_STRANGLETHORN,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					i(33034, {	-- Gordok Grog
						["timeline"] = { "added 2.2.2" },
					}),
					i(34020, {	-- Jungle River Water
						["timeline"] = { "added 2.2.2" },
					}),
					i(34017, {	-- Small Step Brew
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			q(56764, {	-- Brewfest Chowdown (A)
				["qg"] = 153574,	-- Britta Steinheart
				["coord"] = { 54.8, 38.6, DUN_MOROGH },
				["timeline"] = { "added 8.2.0.31478" },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					i(169599, {	-- Chowdown Champion Token
						["timeline"] = { "added 8.2.0.31478" },
						["description"] = "Awarded for winning, you can participate as much as you can stomach!",
					}),
				}),
			}),
			q(56748, {	-- Brewfest Chowdown (H)
				["qg"] = 155133,	-- Etga
				["coord"] = { 42.3, 18.4, DUROTAR },
				["timeline"] = { "added 8.2.0.31478" },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					i(169599, {	-- Chowdown Champion Token
						["timeline"] = { "added 8.2.0.31478" },
						["description"] = "Awarded for winning, you can participate as much as you can stomach!",
					}),
				}),
			}),
			q(76577, {	-- Brewfest in Valdrakken (A)
				["qg"] = 24710,	-- Ipfelkofer Ironkeg
				["coord"] = { 55.1, 38.1, DUN_MOROGH },
				["timeline"] = { ADDED_10_1_7 },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(76579, {	-- Brewfest in Valdrakken (H)
				["qg"] = 155194,	-- La'gar Brewshout
				["coord"] = { 41.6, 18.4, DUROTAR },
				["timeline"] = { ADDED_10_1_7 },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(76545, {	-- Brewfest in Valdrakken (N)
				["qg"] = 199261,	-- Holiday Enthusiast
				["coord"] = { 54.4, 60.2, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_7 },
				["isYearly"] = true,
			}),
			q(11400, {	-- Brewfest Riding Rams (A)
				["provider"] = { "i", 34028 },	-- "Honorary Brewer" Hand Stamp (A)
				-- #if AFTER WRATH
				["timeline"] = { "added 2.0.1", "removed 2.4.3" },
				-- #else
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },	-- Originally removed 2.4.3, actually available in classic!
				-- #endif
				["maps"] = { DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = lvlsquish(40, 40, 1),
			}),
			q(11419, {	-- Brewfest Riding Rams (H)
				["provider"] = { "i", 33978 },	-- "Honorary Brewer" Hand Stamp (H)
				-- #if AFTER WRATH
				["timeline"] = { "added 2.0.1", "removed 2.4.3" },
				-- #else
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },	-- Originally removed 2.4.3, actually available in classic!
				-- #endif
				["maps"] = { DUROTAR },
				["races"] = HORDE_ONLY,
				["lvl"] = lvlsquish(40, 40, 1),
			}),
			q(29394, {	-- Brew For Brewfest (A)
				["qg"] = 23558,	-- Neill Ramstein
				["sourceQuest"] = 11122,	-- There and Back Again (A)
				-- #if AFTER CATA
				["coord"] = { 53.6, 38.6, DUN_MOROGH },
				-- #else
				["coord"] = { 46.6, 40.3, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 4.2.0.14288" },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isDaily"] = true,
			}),
			q(29393, {	-- Brew For Brewfest (H)
				["qg"] = 24497,	-- Ram Master Ray
				["sourceQuest"] = 11412,	-- There and Back Again (H)
				-- #if AFTER CATA
				["coord"] = { 42.6, 17.6, DUROTAR },
				-- #else
				["coord"] = { 46.3, 14.8, DUROTAR },
				-- #endif
				["timeline"] = { "added 4.2.0.14288" },
				["races"] = HORDE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isDaily"] = true,
			}),
			q(12278, {	-- Brew of the Month Club (A)
				["timeline"] = { "added 2.2.2" },	-- Originally added 3.0.2, but in TBC Classic?!
				["maps"] = { DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["altQuests"] = { 12420 },	-- Brew of the Month Club (A) [???]
				-- #IF ANYCLASSIC
				-- #if AFTER WRATH
				["OnUpdate"] = [[function(t)
					if not (_.IsQuestFlaggedCompleted(t.questID) or _.IsQuestFlaggedCompleted(t.altQuests[1])) then
						if ATTAccountWideData.Achievements[2796] then
							t.collected = 2;
							t.OnUpdate = nil;
						end
					end
				end]],
				-- #endif
				-- #endif
				-- #if AFTER 3.0.0
				["provider"] = { "i", 37571 },    -- "Brew of the Month" Club Membership Form (current)
				-- #else
				["provider"] = { "i", 37736 },    -- "Brew of the Month" Club Membership Form (original)
				["description"] = "We're not sure if completing this at the moment will get you progress on the achievement during Wrath as it does NOT retain its completion status after acquired.",
				["repeatable"] = true,
				-- #endif
			}),
			-- #IF NOT ANYCLASSIC
			q(12420, {	-- Brew of the Month Club (A)
				["provider"] = { "i", 37736 },    -- "Brew of the Month" Club Membership Form (original)
				["altQuests"] = { 12278 },	-- Brew of the Month Club (A)
				["timeline"] = { "added 2.2.2" },	-- Originally added 3.0.2, but in TBC Classic?!
				["u"] = REMOVED_FROM_GAME,	-- this version isn't available, but don't know when it was 'removed'
				["maps"] = { DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,	-- original quest was reset yearly
			}),
			-- #ENDIF
			q(12306, {	-- Brew of the Month Club (H)
				["timeline"] = { "added 2.2.2" },	-- Originally added 3.0.2, but in TBC Classic?!
				["maps"] = { DUROTAR },
				["races"] = HORDE_ONLY,
				["altQuests"] = { 12421 },	-- Brew of the Month Club (H) [???]
				-- #IF ANYCLASSIC
				-- #if AFTER WRATH
				["OnUpdate"] = [[function(t)
					if not (_.IsQuestFlaggedCompleted(t.questID) or _.IsQuestFlaggedCompleted(t.altQuests[1])) then
						if ATTAccountWideData.Achievements[2796] then
							t.collected = 2;
							t.OnUpdate = nil;
						end
					end
				end]],
				-- #endif
				-- #endif
				-- #if AFTER 3.0.0
				["provider"] = { "i", 37599 },    -- "Brew of the Month" Club Membership Form (current)
				-- #else
				["provider"] = { "i", 37737 },    -- "Brew of the Month" Club Membership Form (original)
				["description"] = "We're not sure if completing this at the moment will get you progress on the achievement during Wrath as it does NOT retain its completion status after acquired.",
				["repeatable"] = true,
				-- #endif
			}),
			-- #IF NOT ANYCLASSIC
			q(12421, {	-- Brew of the Month Club (H)
				["provider"] = { "i", 37737 },    -- "Brew of the Month" Club Membership Form (original)
				["altQuests"] = { 12306 },	-- Brew of the Month Club (H)
				["timeline"] = { "added 2.2.2" },	-- Originally added 3.0.2, but in TBC Classic?!
				["u"] = REMOVED_FROM_GAME,	-- this version isn't available, but don't know when it was 'removed'
				["maps"] = { DUROTAR },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,	-- original quest was reset yearly
			}),
			-- #ENDIF
			q(76591, {	-- Bubbling Brews
				["qg"] = 207496,	-- Bragdur Battlebrew
				["coord"] = { 29.7, 56.2, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_7 },
				["isDaily"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(11117, {	-- Catch the Wild Wolpertinger! (A) [Non-EU Only!]
				["qg"] = 23486,	-- Goldark Snipehunter
				-- #if AFTER CATA
				["coord"] = { 55.2, 37.8, DUN_MOROGH },
				-- #else
				["coord"] = { 48.0, 39.5, DUN_MOROGH },
				-- #endif
				-- #if ANYCLASSIC
				["timeline"] = { "created 2.2.2", "added 3.0.1" },
				-- #else
				["timeline"] = { "added 2.2.2" },
				-- #endif
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- 0/5 Stunned Wolpertinger
						["provider"] = { "i", 32906 },	-- Stunned Wolpertinger
						["cost"] = {
							{ "i", 32907, 1 },	-- Wolpertinger Net
							-- #if AFTER 3.2.0.10314
							{ "i", 46735, 1 },	-- Synthebrew Goggles
							-- #endif
						},
						["cr"] = 23487,	-- Wild Wolpertinger
					}),
					i(46735, {	-- Synthebrew Goggles
						["timeline"] = { "added 3.2.0.10314" },
					}),
					i(32233, {	-- Wolpertinger (PET!)
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			q(11431, {	-- Catch the Wild Wolpertinger! (H) [Non-EU Only!]
				["qg"] = 24657,	-- Glodrak Huntsniper
				-- #if AFTER CATA
				["coord"] = { 41.2, 18.4, DUROTAR },
				-- #else
				["coord"] = { 45.0, 17.4, DUROTAR },
				-- #endif
				-- #if ANYCLASSIC
				["timeline"] = { "created 2.2.2", "added 3.0.1" },
				-- #else
				["timeline"] = { "added 2.2.2" },
				-- #endif
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- 0/5 Stunned Wolpertinger
						["provider"] = { "i", 32906 },	-- Stunned Wolpertinger
						["cost"] = {
							{ "i", 32907, 1 },	-- Wolpertinger Net
							-- #if AFTER 3.2.0.10314
							{ "i", 46735, 1 },	-- Synthebrew Goggles
							-- #endif
						},
						["cr"] = 23487,	-- Wild Wolpertinger
					}),
					i(46735, {	-- Synthebrew Goggles
						["timeline"] = { "added 3.2.0.10314" },
					}),
					i(32233, {	-- Wolpertinger (PET!)
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			q(12022, {	-- Chug and Chuck! (A)
				["qg"] = 27215,	-- Boxey Boltspinner
				["sourceQuests"] = {
					11441,	-- Brewfest! (A)
					11442,	-- Welcome to Brewfest! (A)
				},
				-- #if AFTER CATA
				["coord"] = { 54.7, 38.0, DUN_MOROGH },
				-- #else
				["coord"] = { 47.5, 39.8, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					objective(1, {	-- S.T.O.U.T. Hit
						["provider"] = { "i", 33096 },	-- Alcohol-Free Brewfest Sampler
						["cr"] = 24108,	-- Self-Turning and Oscillating Utility Target <S.T.O.U.T.>
					}),
				}),
			}),
			q(12191, {	-- Chug and Chuck! (H)
				["qg"] = 27216,	-- Bizzle Quicklift
				["sourceQuests"] = {
					11446,	-- Brewfest! (H)
					11447,	-- Welcome to Brewfest! (H)
				},
				-- #if AFTER CATA
				["coord"] = { 41.4, 17.6, DUROTAR },
				-- #else
				["coord"] = { 45.3, 17.3, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					objective(1, {	-- S.T.O.U.T. Hit
						["provider"] = { "i", 33096 },	-- Alcohol-Free Brewfest Sampler
						["cr"] = 24108,	-- Self-Turning and Oscillating Utility Target <S.T.O.U.T.>
					}),
				}),
			}),
			q(56322, {	-- Contained Alemental (A)
				["provider"] = { "o", 327669 },	-- Contained Alemental
				["altQuests"] = {
					56322,	-- Contained Alemental (A)
					56341,	-- Direbrew Cog (A)
					56372,	-- Hozen Totem (A)
				},
				["coord"] = { 55.5, 37.7, DUN_MOROGH },
				["timeline"] = { "added 8.2.0.30918" },
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
			}),
			q(56714, {	-- Contained Alemental (H)
				["provider"] = { "o", 330168 },	-- Contained Alemental
				["altQuests"] = {
					56714,	-- Contained Alemental (H)
					56716,	-- Direbrew Cog (H)
					56715,	-- Hozen Totem (H)
				},
				["coord"] = { 41.0, 17.8, DUROTAR },
				["timeline"] = { "added 8.2.0.30918" },
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
			}),
			q(11321, {	-- Did Someone Say "Souvenir?" (A)
				["qg"] = 24468,	-- Pol Amberstill
				-- #if AFTER CATA
				["coord"] = { 53.6, 38.6, DUN_MOROGH },
				-- #else
				["coord"] = { 46.4, 40.3, DUN_MOROGH },
				-- #endif
				-- #if BEFORE WRATH
				["description"] = "This quest was only available during the 2007 Brewfest.",
				-- #endif
				["timeline"] = { "added 2.0.1", "removed 2.4.3" },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33955, 1 },	-- Brewfest Stein Voucher
				},
				["isYearly"] = true,
				["groups"] = {
					i(32912, {	-- Yellow Brewfest Stein
						["timeline"] = { "added 2.0.1", "removed 2.4.3" },
					}),
				},
			}),
			q(11413, {	-- Did Someone Say "Souvenir?" (H)
				["qg"] = 24497,	-- Ram Master Ray
				-- #if AFTER CATA
				["coord"] = { 42.6, 17.6, DUROTAR },
				-- #else
				["coord"] = { 46.3, 14.8, DUROTAR },
				-- #endif
				-- #if BEFORE WRATH
				["description"] = "This quest was only available during the 2007 Brewfest.",
				-- #endif
				["timeline"] = { "added 2.0.1", "removed 2.4.3" },
				["races"] = HORDE_ONLY,
				["cost"] = {
					{ "i", 33955, 1 },	-- Brewfest Stein Voucher
				},
				["isYearly"] = true,
				["groups"] = {
					i(32912, {	-- Yellow Brewfest Stein
						["timeline"] = { "added 2.0.1", "removed 2.4.3" },
					}),
				},
			}),
			q(12491, {	-- Direbrew's Dire Brew (A)
				["provider"] = { "i", 38280 },	-- Direbrew's Dire Brew
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				-- #if AFTER SHADOWLANDS
				["lvl"] = 20,
				-- #elseif AFTER WRATH
				["lvl"] = 75,
				-- #else
				["lvl"] = 65,
				-- #endif
				["groups"] = BREWFEST_TOKEN,
			}),
			q(12492, {	-- Direbrew's Dire Brew (H)
				["provider"] = { "i", 38281 },	-- Direbrew's Dire Brew
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				-- #if AFTER SHADOWLANDS
				["lvl"] = 20,
				-- #elseif AFTER WRATH
				["lvl"] = 75,
				-- #else
				["lvl"] = 65,
				-- #endif
				["groups"] = BREWFEST_TOKEN,
			}),
			q(56341, {	-- Direbrew Cog (A)
				["provider"] = { "o", 328343 },	-- Direbrew Cog
				["altQuests"] = {
					56322,	-- Contained Alemental (A)
					56341,	-- Direbrew Cog (A)
					56372,	-- Hozen Totem (A)
				},
				["coord"] = { 55.5, 37.7, DUN_MOROGH },
				["timeline"] = { "added 8.2.0.30918" },
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
			}),
			q(56716, {	-- Direbrew Cog (H)
				["provider"] = { "o", 330169 },	-- Direbrew Cog
				["altQuests"] = {
					56714,	-- Contained Alemental (H)
					56716,	-- Direbrew Cog (H)
					56715,	-- Hozen Totem (H)
				},
				["coord"] = { 41.0, 17.8, DUROTAR },
				["timeline"] = { "added 8.2.0.30918" },
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
			}),
			q(56372, {	-- Hozen Totem (A)
				["provider"] = { "o", 328413 },	-- Hozen Totem
				["altQuests"] = {
					56322,	-- Contained Alemental (A)
					56341,	-- Direbrew Cog (A)
					56372,	-- Hozen Totem (A)
				},
				["coord"] = { 55.5, 37.7, DUN_MOROGH },
				["timeline"] = { "added 8.2.0.30918" },
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
			}),
			q(56715, {	-- Hozen Totem (H)
				["provider"] = { "o", 330170 },	-- Hozen Totem
				["altQuests"] = {
					56714,	-- Contained Alemental (H)
					56716,	-- Direbrew Cog (H)
					56715,	-- Hozen Totem (H)
				},
				["coord"] = { 41.0, 17.8, DUROTAR },
				["timeline"] = { "added 8.2.0.30918" },
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
			}),
			q(12062, {	-- Insult Coren Direbrew
				["qg"] = 26719,	-- Brewfest Spy
				["sourceQuest"] = 12318,	-- Save Brewfest!
				["timeline"] = { "added 2.4.3", "removed 3.3.3" },
				["maps"] = { BLACKROCK_DEPTHS },
				["isDaily"] = true,
				["lvl"] = lvlsquish(65, 65, 10),
			}),
			q(11318, {	-- Now This is Ram Racing... Almost. (A)
				["qg"] = 23558,	-- Neill Ramstein
				["sourceQuests"] = {
					11441,	-- Brewfest! (A)
					11442,	-- Welcome to Brewfest! (A)
				},
				-- #if AFTER CATA
				["coord"] = { 53.6, 38.6, DUN_MOROGH },
				-- #else
				["coord"] = { 46.6, 40.3, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isYearly"] = true,
			}),
			q(11409, {	-- Now This is Ram Racing... Almost. (H)
				["qg"] = 24497,	-- Ram Master Ray
				["sourceQuests"] = {
					11446,	-- Brewfest! (H)
					11447,	-- Welcome to Brewfest! (H)
				},
				-- #if AFTER CATA
				["coord"] = { 42.6, 17.6, DUROTAR },
				-- #else
				["coord"] = { 46.3, 14.8, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isYearly"] = true,
			}),
			q(11118, {	-- Pink Elekks On Parade (A) [Non-EU Only!]
				["qg"] = 23486,	-- Goldark Snipehunter
				-- #if AFTER CATA
				["coord"] = { 55.2, 37.8, DUN_MOROGH },
				-- #else
				["coord"] = { 48.0, 39.5, DUN_MOROGH },
				-- #endif
				-- #if ANYCLASSIC
				["timeline"] = { "created 2.2.2", "added 3.0.1" },
				-- #else
				["timeline"] = { "added 2.2.2" },
				-- #endif
				["maps"] = { AZUREMYST_ISLE, THE_EXODAR, ELWYNN_FOREST, DARNASSUS, TELDRASSIL, SHATTRATH_CITY },
				["races"] = ALLIANCE_ONLY,
				-- #if AFTER 3.2.0.10314
				["cost"] = { { "i", 46735, 1 } },	-- Synthebrew Goggles
				-- #endif
				["isYearly"] = true,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					objective(1, {	-- 0/3 Azuremyst Pink Elekk slain
						["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
						["cr"] = 23528,	-- Azuremyst Pink Elekk
					}),
					objective(2, {	-- 0/3 Elwynn Pink Elekk slain
						["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
						["cr"] = 23507,	-- Elwynn Pink Elekk
					}),
					objective(3, {	-- 0/3 Teldrassil Pink Elekk slain
						["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
						["cr"] = 23527,	-- Teldrassil Pink Elekk
					}),
					i(46735, {	-- Synthebrew Goggles
						["timeline"] = { "added 3.2.0.10314" },
					}),
				}),
			}),
			q(11120, {	-- Pink Elekks On Parade (H) [Non-EU Only!]
				["qg"] = 24657,	-- Glodrak Huntsniper
				-- #if AFTER CATA
				["coord"] = { 41.2, 18.4, DUROTAR },
				-- #else
				["coord"] = { 45.0, 17.4, DUROTAR },
				-- #endif
				-- #if ANYCLASSIC
				["timeline"] = { "created 2.2.2", "added 3.0.1" },
				-- #else
				["timeline"] = { "added 2.2.2" },
				-- #endif
				["maps"] = { EVERSONG_WOODS, MULGORE, TIRISFAL_GLADES },
				["races"] = HORDE_ONLY,
				-- #if AFTER 3.2.0.10314
				["cost"] = { { "i", 46735, 1 } },	-- Synthebrew Goggles
				-- #endif
				["isYearly"] = true,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					objective(1, {	-- 0/3 Eversong Pink Elekk slain
						["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
						["cr"] = 23531,	-- Eversong Pink Elekk
					}),
					objective(2, {	-- 0/3 Mulgore Pink Elekk slain
						["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
						["cr"] = 23529,	-- Mulgore Pink Elekk
					}),
					objective(3, {	-- 0/3 Tirisfal Pink Elekk slain
						["provider"] = { "i", 32960 },	-- Elekk Dispersion Ray
						["cr"] = 23530,	-- Tirisfal Pink Elekk
					}),
					i(46735, {	-- Synthebrew Goggles
						["timeline"] = { "added 3.2.0.10314" },
					}),
				}),
			}),
			q(12318, {	-- Save Brewfest!
				["qgs"] = {
					27584,	-- Darna Honeybock
					28329,	-- Slurpo Fizzykeg
				},
				["sourceQuests"] = {
					11441,	-- Brewfest! (A)
					11446,	-- Brewfest! (H)
					11442,	-- Welcome to Brewfest! (A)
					11447,	-- Welcome to Brewfest! (H)
				},
				["coords"] = {
					{ 46.2, 52.8, DUN_MOROGH },
					{ 47.9, 26.9, DUROTAR },
				},
				["timeline"] = { "added 2.4.3", "removed 3.3.3" },
				["isBreadcrumb"] = true,
				["lvl"] = lvlsquish(65, 65, 10),
			}),
			q(12193, {	-- Say, There Wouldn't Happen to be a Souvenir This Year, Would There? (A)
				["qg"] = 24468,	-- Pol Amberstill
				-- #if AFTER CATA
				["coord"] = { 53.6, 38.6, DUN_MOROGH },
				-- #else
				["coord"] = { 46.4, 40.3, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33955, 1 },	-- Brewfest Stein Voucher
				},
				["isYearly"] = true,
				["groups"] = {
					i(33016, {	-- Blue Brewfest Stein
						["timeline"] = { "added 2.0.1", "removed 3.0.1" },
					}),
				},
			}),
			q(12194, {	-- Say, There Wouldn't Happen to be a Souvenir This Year, Would There? (H)
				["qg"] = 24497,	-- Ram Master Ray
				-- #if AFTER CATA
				["coord"] = { 42.6, 17.6, DUROTAR },
				-- #else
				["coord"] = { 46.3, 14.8, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.0.1", "removed 3.0.1" },
				["races"] = HORDE_ONLY,
				["cost"] = {
					{ "i", 33955, 1 },	-- Brewfest Stein Voucher
				},
				["isYearly"] = true,
				["groups"] = {
					i(33016, {	-- Blue Brewfest Stein
						["timeline"] = { "added 2.0.1", "removed 3.0.1" },
					}),
				},
			}),
			q(11454, {	-- Seek the Saboteurs
				["provider"] = { "o", 186881 },	-- Dark Iron Sabotage Plans
				["coords"] = {
					{ 44.3, 17.5, DUROTAR },
					{ 48.1, 39.1, DUN_MOROGH },
				},
				["timeline"] = { "added 2.0.1", "removed 2.4.3" },
				["maps"] = { BLACKROCK_DEPTHS },
				["lvl"] = lvlsquish(48, 48, 48),
			}),
			q(11486, {	-- The Best of Brews (A)
				["qg"] = 23872,	-- Coren Direbrew
				["sourceQuest"] = 11454,	-- Seek the Saboteurs
				["timeline"] = { "added 2.0.1", "removed 2.4.3" },
				["maps"] = { BLACKROCK_DEPTHS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = lvlsquish(48, 48, 48),
				["groups"] = {
					i(34140, {	-- Dark Iron Tankard
						["timeline"] = { "added 2.0.1", "removed 2.4.3" },
					}),
				},
			}),
			q(11487, {	-- The Best of Brews (H)
				["qg"] = 23872,	-- Coren Direbrew
				["sourceQuest"] = 11454,	-- Seek the Saboteurs
				["timeline"] = { "added 2.0.1", "removed 2.4.3" },
				["maps"] = { BLACKROCK_DEPTHS },
				["races"] = HORDE_ONLY,
				["lvl"] = lvlsquish(48, 48, 48),
				["groups"] = {
					i(34140, {	-- Dark Iron Tankard
						["timeline"] = { "added 2.0.1", "removed 2.4.3" },
					}),
				},
			}),
			q(11122, {	-- There and Back Again (A)
				["qg"] = 23558,	-- Neill Ramstein
				["sourceQuest"] = 11318,	-- Now This is Ram Racing... Almost. (A)
				-- #if AFTER CATA
				["coord"] = { 53.6, 38.6, DUN_MOROGH },
				-- #else
				["coord"] = { 46.6, 40.3, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(11412, {	-- There and Back Again (H)
				["qg"] = 24497,	-- Ram Master Ray
				["sourceQuest"] = 11409,	-- Now This is Ram Racing... Almost. (H)
				-- #if AFTER CATA
				["coord"] = { 42.6, 17.6, DUROTAR },
				-- #else
				["coord"] = { 46.3, 14.8, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["cost"] = {
					{ "i", 33306, 1 },	-- Ram Racing Reins
				},
				["isYearly"] = true,
				["groups"] = BREWFEST_TOKEN,
			}),
			q(12020, {	-- This One Time, When I Was Drunk... (A)
				["provider"] = { "o", 189989 },	-- Dark Iron Mole Machine Wreckage
				-- #if AFTER CATA
				["coord"] = { 56.0, 37.1, DUN_MOROGH },
				-- #else
				["coord"] = { 47.5, 39.8, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2", "removed 8.2.0" },
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					ach(1186, {	-- Down With The Dark Iron
						["timeline"] = { "added 3.0.1", "removed 8.2.0" },
					}),
				}),
			}),
			q(12192, {	-- This One Time, When I Was Drunk... (H)
				["provider"] = { "o", 189990 },	-- Dark Iron Mole Machine Wreckage
				-- #if AFTER CATA
				["coord"] = { 40.7, 17.4, DUROTAR },
				-- #else
				["coord"] = { 40.7, 17.4, DUROTAR },	-- TODO: Get accurate coordinates for TBC
				-- #endif
				["timeline"] = { "added 2.2.2", "removed 8.2.0" },
				["races"] = HORDE_ONLY,
				["isDaily"] = true,
				["groups"] = appendGroups(BREWFEST_TOKEN, {
					ach(1186, {	-- Down With The Dark Iron
						["timeline"] = { "added 3.0.1", "removed 8.2.0" },
					}),
				}),
			}),
			q(11442, {	-- Welcome to Brewfest! (A)
				["qg"] = 24710,	-- Ipfelkofer Ironkeg
				["altQuests"] = {
					11441,	-- Brewfest! (A)
					11442,	-- Welcome to Brewfest! (A)
				},
				-- #if AFTER CATA
				["coord"] = { 55.1, 38.1, DUN_MOROGH },
				-- #else
				["coord"] = { 48.0, 39.8, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					i(33030, {	-- Barleybrew Clear
						["timeline"] = { "added 2.2.2" },
					}),
					i(33034, {	-- Gordok Grog
						["timeline"] = { "added 2.2.2" },
					}),
					i(33031, {	-- Thunder 45
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			q(11447, {	-- Welcome to Brewfest! (H)
				-- #if AFTER 8.2.0
				["qg"] = 155194,	-- La'gar Brewshout
				["coord"] = { 41.6, 18.4, DUROTAR },
				-- #else
				["qg"] = 24711,	-- Tapper Swindlekeg <Brewfest Organizer>
				-- #if AFTER CATA
				["coord"] = { 41.6, 18.4, DUROTAR },
				-- #else
				["coord"] = { 45.6, 17.2, DUROTAR },
				-- #endif
				-- #endif
				["altQuests"] = {
					11446,	-- Brewfest! (H)
					11447,	-- Welcome to Brewfest! (H)
				},
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					i(33034, {	-- Gordok Grog
						["timeline"] = { "added 2.2.2" },
					}),
					i(34020, {	-- Jungle River Water
						["timeline"] = { "added 2.2.2" },
					}),
					i(34017, {	-- Small Step Brew
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
		},
	}),
	n(REWARDS, bubbleDown({
		-- #IF NOT ANYCLASSIC
		["f"] = COSMETIC,	-- These Steins turn into 'Miscellanous' filter, which doesn't allow SourceIDs to be attached in Retail
		-- #ENDIF
	},{
		-- #if AFTER TRANSMOG
		i(33016, bubbleDown({ ["timeline"] = { "added 2.4.3", "removed 3.0.1" } }, {	-- Blue Brewfest Stein
			["description"] = "Fill up the stein with one brew, relog, and then manually refresh your collection. Once it has registered, move on to the next brew and repeat.\n\nBarleybrew Clear and Thunder 45 can only be found in Dun Morogh, while Small Step Brew and Jungle River Water can be only found in Durotar. Gordok Grog is in both areas. Players can use the opposite faction's kegs; it just requires a little traveling!",
			["lore"] = "This stein was the reward from the 2008 Brewfest.",
			["groups"] = {
				i(33017),	-- Filled Blue Brewfest Stein [Barleybrew Clear - Alliance]
				i(33018),	-- Filled Blue Brewfest Stein [Thunder 45 - Alliance]
				i(33019),	-- Filled Blue Brewfest Stein [Gordok Grog - Alliance/Horde]
				i(33020),	-- Filled Blue Brewfest Stein [Small Step Brew - Horde]
				i(33021),	-- Filled Blue Brewfest Stein [Jungle River Water - Horde]
			},
		})),
		-- #else
		i(33016, {	-- Blue Brewfest Stein
			["lore"] = "This stein was the reward from the 2008 Brewfest.",
			["timeline"] = { "added 2.4.3", "removed 3.0.1" },
			["groups"] = {
				i(33017),	-- Filled Blue Brewfest Stein [Barleybrew Clear - Alliance]
				i(33018),	-- Filled Blue Brewfest Stein [Thunder 45 - Alliance]
				i(33019),	-- Filled Blue Brewfest Stein [Gordok Grog - Alliance/Horde]
				i(33020),	-- Filled Blue Brewfest Stein [Small Step Brew - Horde]
				i(33021),	-- Filled Blue Brewfest Stein [Jungle River Water - Horde]
			},
		}),
		-- #endif
		i(169448, {	-- Bottomless Brewfest Stein
			-- #if AFTER TRANSMOG
			["description"] = "Fill up the stein with one brew, unequip and re-equip the filled stein, and then manually refresh your collection. Once it has registered, move on to the next brew and repeat.\n\nBarleybrew Clear and Thunder 45 can only be found in Dun Morogh, while Small Step Brew and Jungle River Water can be only found in Durotar. Gordok Grog is in both areas. Players can use the opposite faction's kegs; it just requires a little traveling!",
			-- #endif
			["timeline"] = { "added 8.0.1" },
			["groups"] = {
				i(169450),	-- Filled Bottomless Brewfest Stein [Barleybrew Clear - Alliance]
				i(169452),	-- Filled Bottomless Brewfest Stein [Thunder 45 - Alliance]
				i(169453),	-- Filled Bottomless Brewfest Stein [Gordok Grog - Alliance/Horde]
				i(169454),	-- Filled Bottomless Brewfest Stein [Small Step Brew - Horde]
				i(169455),	-- Filled Bottomless Brewfest Stein [Jungle River Water - Horde]
			},
		}),
		-- #if AFTER TRANSMOG
		i(37892, bubbleDown({ ["timeline"] = { "added 3.0.1", "removed 4.0.1" } }, {	-- Green Brewfest Stein
			["description"] = "Fill up the stein with one brew, relog, and then manually refresh your collection. Once it has registered, move on to the next brew and repeat.\n\nBarleybrew Clear and Thunder 45 can only be found in Dun Morogh, while Small Step Brew and Jungle River Water can be only found in Durotar. Gordok Grog is in both areas. Players can use the opposite faction's kegs; it just requires a little traveling!",
			["lore"] = "This stein was the reward from the 2009 & 2010 Brewfest.",
			["groups"] = {
				i(37893),	-- Filled Green Brewfest Stein [Barleybrew Clear - Alliance]
				i(37894),	-- Filled Green Brewfest Stein [Thunder 45 - Alliance]
				i(37895),	-- Filled Green Brewfest Stein [Gordok Grog - Alliance/Horde]
				i(37896),	-- Filled Green Brewfest Stein [Small Step Brew - Horde]
				i(37897),	-- Filled Green Brewfest Stein [Jungle River Water - Horde]
			},
		})),
		-- #else
		i(37892, {	-- Green Brewfest Stein
			["lore"] = "This stein was the reward from the 2009 & 2010 Brewfest.",
			["timeline"] = { "added 3.0.1", "removed 4.0.1" },
			["groups"] = {
				i(37893),	-- Filled Green Brewfest Stein [Barleybrew Clear - Alliance]
				i(37894),	-- Filled Green Brewfest Stein [Thunder 45 - Alliance]
				i(37895),	-- Filled Green Brewfest Stein [Gordok Grog - Alliance/Horde]
				i(37896),	-- Filled Green Brewfest Stein [Small Step Brew - Horde]
				i(37897),	-- Filled Green Brewfest Stein [Jungle River Water - Horde]
			},
		}),
		-- #endif

		i(56836, {	-- Overflowing Purple Brewfest Stein
			["lore"] = "This stein was the reward from the 2011 Brewfest onward.",
			["timeline"] = { "added 4.0.1" },
		}),
		-- #if AFTER TRANSMOG
		i(32912, bubbleDown({ ["timeline"] = { "added 2.0.1", "removed 2.4.3" } }, {	-- Yellow Brewfest Stein
			["description"] = "Fill up the stein with one brew, relog, and then manually refresh your collection. Once it has registered, move on to the next brew and repeat.\n\nBarleybrew Clear and Thunder 45 can only be found in Dun Morogh, while Small Step Brew and Jungle River Water can be only found in Durotar. Gordok Grog is in both areas. Players can use the opposite faction's kegs; it just requires a little traveling!",
			["lore"] = "This stein was the reward from the 2007 Brewfest.",
			["groups"] = {
				i(32915),	-- Filled Yellow Brewfest Stein [Barleybrew Clear - Alliance]
				i(32917),	-- Filled Yellow Brewfest Stein [Thunder 45 - Alliance]
				i(32918),	-- Filled Yellow Brewfest Stein [Gordok Grog - Alliance/Horde]
				i(32919),	-- Filled Yellow Brewfest Stein [Small Step Brew - Horde]
				i(32920),	-- Filled Yellow Brewfest Stein [Jungle River Water - Horde]
			},
		})),
		-- #else
		i(32912, {	-- Yellow Brewfest Stein
			["lore"] = "This stein was the reward from the 2007 Brewfest.",
			["timeline"] = { "added 2.0.1", "removed 2.4.3" },
			["groups"] = {
				i(32915),	-- Filled Yellow Brewfest Stein [Barleybrew Clear - Alliance]
				i(32917),	-- Filled Yellow Brewfest Stein [Thunder 45 - Alliance]
				i(32918),	-- Filled Yellow Brewfest Stein [Gordok Grog - Alliance/Horde]
				i(32919),	-- Filled Yellow Brewfest Stein [Small Step Brew - Horde]
				i(32920),	-- Filled Yellow Brewfest Stein [Jungle River Water - Horde]
			},
		}),
		-- #endif
	})),
	n(VENDORS, {
		-- #if ANYCLASSIC
		["OnTooltip"] = BREWFEST_VENDOR_OnTooltip,
		-- #endif
		["groups"] = {
			n(23604,  {	-- Agnes Farwithers <Cheese Vendor>
				-- #if AFTER CATA
				["coord"] = { 41.0, 18.3, DUROTAR },
				-- #else
				["coord"] = { 43.9, 17.9, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(34065, {	-- Spiced Onion Cheese
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			n(23521,  {	-- Anne Summers <Cheese Vendor>
				["coord"] = { 56.4, 37.6, DUN_MOROGH },
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(34065, {	-- Spiced Onion Cheese
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			n(23522,  {	-- Arlen Lochlan <Bread Vendor>
				-- #if AFTER CATA
				["coord"] = { 55.6, 38.0, DUN_MOROGH },
				-- #else
				["coord"] = { 48.5, 40.0, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(33043, {	-- The Essential Brewfest Pretzel
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			n(23482,  {	-- Barleybrew Apprentice <Barleybrew Brew Vendor>
				-- #if AFTER CATA
				["coord"] = { 56.0, 38.0, DUN_MOROGH },
				-- #else
				["coord"] = { 48.9, 39.8, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(33030, {	-- Barleybrew Clear
						["timeline"] = { "added 2.2.2" },
					}),
					i(33029, {	-- Barleybrew Dark
						["timeline"] = { "added 2.2.2" },
					}),
					i(46400, {	-- Barleybrew Gold
						["timeline"] = { "added 3.2.0.10314" },
					}),
					i(33028, {	-- Barleybrew Light
						["timeline"] = { "added 2.2.2" },
					}),
					i(138867, {	-- Shimmer Stout
						["timeline"] = { "added 7.0.3.22248" },
					}),
				},
			}),
			n(23710,  {	-- Belbi Quikswitch <Token Redeemer>
				-- #if AFTER CATA
				["coord"] = { 56.3, 37.5, DUN_MOROGH },
				-- #else
				["coord"] = { 49.3, 39.6, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["groups"] = appendGroups(BREWFEST_REGALIA, {
					i(122339, {	-- Ancient Heirloom Scabbard
						["cost"] = BREWFEST_TOKEN_COST(300),
						["timeline"] = { "added 6.1.0.19445" },
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(167732, {	-- Battle-Hardened Heirloom Scabbard
						["cost"] = BREWFEST_TOKEN_COST(500),
						["timeline"] = { "added 8.1.5.29701" },
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(187998, {	-- Eternal Heirloom Scabbard
						["cost"] = BREWFEST_TOKEN_COST(500),
						["timeline"] = { ADDED_9_1_5 },
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(122341, {	-- Timeworn Heirloom Scabbard
						["cost"] = BREWFEST_TOKEN_COST(500),
						["timeline"] = { "added 6.1.0.19445" },
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(151615, {	-- Weathered Heirloom Scabbard
						["timeline"] = { "added 7.2.5.24076" },
						["cost"] = BREWFEST_TOKEN_COST(500),
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(37571, {	-- "Brew of the Month" Club Membership Form (current)
						["timeline"] = { "created 2.2.2", "added 3.0.0" },	-- NOTE: Not used in 2007
						["cost"] = BREWFEST_TOKEN_COST(200),
						["races"] = ALLIANCE_ONLY,
					}),
					i(37736, {	-- "Brew of the Month" Club Membership Form (original)
						["timeline"] = { "added 2.2.2", "removed 3.0.0" },
						["cost"] = BREWFEST_TOKEN_COST(200),
						["races"] = ALLIANCE_ONLY,
					}),
					i(34028, {	-- "Honorary Brewer" Hand Stamp (Alliance)
						-- #if AFTER WRATH
						["timeline"] = { "added 2.0.1", "removed 2.4.3" },
						-- #else
						["timeline"] = { "added 2.0.1", "removed 3.0.1" },	-- Originally removed 2.4.3, actually available in classic!
						-- #endif
						["cost"] = BREWFEST_TOKEN_COST(600),
						["races"] = ALLIANCE_ONLY,
					}),
					i(119209, {	-- Angry Brewfest Letter
						["timeline"] = { "added 6.0.2.18816" },
						["cost"] = BREWFEST_TOKEN_COST(50),
					}),
					i(33047, {	-- Belbi's Eyesight Enhancing Romance Goggles
						-- #if BEFORE 10.0.5
						["collectible"] = false,	-- Needs marked because for some reason ATT thinks it is a collectible TODO: Look into this
						-- #endif
						["timeline"] = { "added 2.2.0.7272" },
						["cost"] = BREWFEST_TOKEN_COST(100),
						["races"] = ALLIANCE_ONLY,
					}),
					i(169448, {	-- Bottomless Brewfest Stein
						["timeline"] = { "added 8.0.1" },
						["cost"] = BREWFEST_TOKEN_COST(10),
					}),
					i(209052, {	-- Brew Barrel (TOY!)
						["timeline"] = { ADDED_10_1_7 },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(116758, {	-- Brewfest Banner (TOY!)
						["timeline"] = { "added 6.0.1.18594" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(71137, {	-- Brewfest Keg Pony (TOY!)
						["timeline"] = { "added 4.2.0.14333" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(33927, {	-- Brewfest Pony Keg (TOY!)
						["timeline"] = { "added 2.2.0.7272" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(166747, {	-- Brewfest Reveler's Hearthstone (TOY!)
						["timeline"] = { "added 8.1.5.29701" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(90426, {	-- Brewhelm
						["timeline"] = { "added 5.0.4.15913" },
						["cost"] = BREWFEST_TOKEN_COST(2),
					}),
					i(37750, {	-- Fresh Brewfest Hops
						["timeline"] = { "added 2.4.3.8601" },
						["cost"] = BREWFEST_TOKEN_COST(2),
					}),
					i(39476, {	-- Fresh Goblin Brewfest Hops
						["timeline"] = { "added 2.4.3.8601" },
						["cost"] = BREWFEST_TOKEN_COST(5),
					}),
					i(169461, {	-- Garland of Grain
						["timeline"] = { "added 8.2.0.30918" },
						["cost"] = BREWFEST_TOKEN_COST(150),
					}),
					i(209044, {	-- Orange Brewfest Bulwark
						["timeline"] = { ADDED_10_1_7 },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(90427, {	-- Pandaren Brewpack (TOY!)
						["timeline"] = { "added 5.0.4.15913" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(46707, {	-- Pint-Sized Pink Pachyderm (PET!)
						["timeline"] = { "added 3.2.0.10314" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(37816, {	-- Preserved Brewfest Hops
						["timeline"] = { "added 2.4.3.8601" },
						["cost"] = BREWFEST_TOKEN_COST(20),
					}),
					i(116757, {	-- Steamworks Sausage Grill (TOY!)
						["timeline"] = { "added 6.0.1.18594" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(116756, {	-- Stout Alemental (PET!)
						["timeline"] = { "added 6.0.1.18594" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(138730, {	-- Synthebrew Goggles XL
						["timeline"] = { "added 7.0.3.22248" },
						["cost"] = BREWFEST_TOKEN_COST(200),
						-- #if BEFORE 10.0.5
						["collectible"] = false,	-- TODO: Look into this
						-- #endif
					}),
					i(168915, {	-- Tabard of Brew
						["timeline"] = { "added 8.2.0.30918" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(32233, {	-- Wolpertinger (PET!)
						["cost"] = BREWFEST_TOKEN_COST(200),
						["timeline"] = { "added 2.2.2" },
					}),
				}),
			}),
			n(207496,  {	-- Bragdur Battlebrew
				["coord"] = { 29.8, 56.6, VALDRAKKEN },
				["sym"] = {{"sub","common_vendor",23710}},	-- Belbi Quikswitch <Token Redeemer> (Ally Version)
			}),
			n(23605,  {	-- Bron <Sausage Vendor>
				-- #if AFTER CATA
				["coord"] = { 41.6, 17.8, DUROTAR },
				-- #else
				["coord"] = { 44.4, 16.6, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(34063, {	-- Dried Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(138900, {	-- Gravil Goldbraid's Famous Sausage Hat (TOY!)
						["timeline"] = { "added 7.0.3.22248" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(33024, {	-- Pickled Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(33023, {	-- Savory Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(33025, {	-- Spicy Smoked Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(34064, {	-- Succulent Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(33026, {	-- The Golden Link
						["timeline"] = { "added 2.2.2" },
					}),
					i(138884, {	-- Throwing Sausage
						["timeline"] = { "added 7.0.3.22248" },
					}),
				},
			}),
			n(24495,  {	-- Blix Fixwidget <Token Redeemer>
				-- #if AFTER CATA
				["coord"] = { 41.0, 17.0, DUROTAR },
				-- #else
				["coord"] = { 44.1, 18.0, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["groups"] = appendGroups(BREWFEST_REGALIA, {
					i(122339, {	-- Ancient Heirloom Scabbard
						["cost"] = BREWFEST_TOKEN_COST(300),
						["timeline"] = { "added 6.1.0.19445" },
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(167732, {	-- Battle-Hardened Heirloom Scabbard
						["cost"] = BREWFEST_TOKEN_COST(500),
						["timeline"] = { "added 8.1.5.29701" },
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(187998, {	-- Eternal Heirloom Scabbard
						["cost"] = BREWFEST_TOKEN_COST(500),
						["timeline"] = { ADDED_9_1_5 },
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(122341, {	-- Timeworn Heirloom Scabbard
						["cost"] = BREWFEST_TOKEN_COST(500),
						["timeline"] = { "added 6.1.0.19445" },
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(151615, {	-- Weathered Heirloom Scabbard
						["timeline"] = { "added 7.2.5.24076" },
						["cost"] = BREWFEST_TOKEN_COST(500),
						["sym"] = { { "fill" } },	-- simply fill this item
					}),
					i(37599, {	-- "Brew of the Month" Club Membership Form (current)
						["timeline"] = { "created 2.2.2", "added 3.0.0" },	-- NOTE: Not used in 2007
						["cost"] = BREWFEST_TOKEN_COST(200),
						["races"] = HORDE_ONLY,
					}),
					i(37737, {	-- "Brew of the Month" Club Membership Form (original)
						["timeline"] = { "added 2.2.2", "removed 3.0.0" },
						["cost"] = BREWFEST_TOKEN_COST(200),
						["races"] = HORDE_ONLY,
					}),
					i(33978, {	-- "Honorary Brewer" Hand Stamp (Horde)
						-- #if AFTER WRATH
						["timeline"] = { "added 2.0.1", "removed 2.4.3" },
						-- #else
						["timeline"] = { "added 2.0.1", "removed 3.0.1" },	-- Originally removed 2.4.3, actually available in classic!
						-- #endif
						["cost"] = BREWFEST_TOKEN_COST(600),
						["races"] = HORDE_ONLY,
					}),
					i(119209, {	-- Angry Brewfest Letter
						["timeline"] = { "added 6.0.2.18816" },
						["cost"] = BREWFEST_TOKEN_COST(50),
					}),
					i(34008, {	-- Blix's Eyesight Enhancing Romance Goggles
						-- #if BEFORE 10.0.5
						["collectible"] = false,	-- Needs marked because for some reason ATT thinks it is a collectible
						-- #endif
						["timeline"] = { "added 2.2.0.7272" },
						["cost"] = BREWFEST_TOKEN_COST(100),
						["races"] = HORDE_ONLY,
					}),
					i(169448, {	-- Bottomless Brewfest Stein
						["timeline"] = { "added 8.0.1" },
						["cost"] = BREWFEST_TOKEN_COST(10),
					}),
					i(209052, {	-- Brew Barrel (TOY!)
						["timeline"] = { ADDED_10_1_7 },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(116758, {	-- Brewfest Banner (TOY!)
						["timeline"] = { "added 6.0.1.18594" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(71137, {	-- Brewfest Keg Pony (TOY!)
						["timeline"] = { "added 4.2.0.14333" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(33927, {	-- Brewfest Pony Keg (TOY!)
						["timeline"] = { "added 2.2.0.7272" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(166747, {	-- Brewfest Reveler's Hearthstone (TOY!)
						["timeline"] = { "added 8.1.5.29701" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(90426, {	-- Brewhelm
						["timeline"] = { "added 5.0.4.15913" },
						["cost"] = BREWFEST_TOKEN_COST(2),
					}),
					i(37750, {	-- Fresh Brewfest Hops
						["timeline"] = { "added 2.4.3.8601" },
						["cost"] = BREWFEST_TOKEN_COST(2),
					}),
					i(39477, {	-- Fresh Dwarven Brewfest Hops
						["timeline"] = { "added 2.4.3.8601" },
						["cost"] = BREWFEST_TOKEN_COST(5),
					}),
					i(169461, {	-- Garland of Grain
						["timeline"] = { "added 8.2.0.30918" },
						["cost"] = BREWFEST_TOKEN_COST(150),
					}),
					i(209044, {	-- Orange Brewfest Bulwark
						["timeline"] = { ADDED_10_1_7 },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(90427, {	-- Pandaren Brewpack (TOY!)
						["timeline"] = { "added 5.0.4.15913" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(46707, {	-- Pint-Sized Pink Pachyderm (PET!)
						["timeline"] = { "added 3.2.0.10314" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(37816, {	-- Preserved Brewfest Hops
						["timeline"] = { "added 2.4.3.8601" },
						["cost"] = BREWFEST_TOKEN_COST(20),
					}),
					i(116757, {	-- Steamworks Sausage Grill (TOY!)
						["timeline"] = { "added 6.0.1.18594" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(116756, {	-- Stout Alemental (PET!)
						["timeline"] = { "added 6.0.1.18594" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(138730, {	-- Synthebrew Goggles XL
						["timeline"] = { "added 7.0.3.22248" },
						["cost"] = BREWFEST_TOKEN_COST(200),
						-- #if BEFORE 10.0.5
						["collectible"] = false,	-- TODO: Look into this
						-- #endif
					}),
					i(168915, {	-- Tabard of Brew
						["timeline"] = { "added 8.2.0.30918" },
						["cost"] = BREWFEST_TOKEN_COST(200),
					}),
					i(32233, {	-- Wolpertinger (PET!)
						["cost"] = BREWFEST_TOKEN_COST(200),
						["timeline"] = { "added 2.2.2" },
					}),
				}),
			}),
			n(153574, {	-- Britta Steinheart <Chowdown Organizer>
				["coord"] = { 54.8, 38.6, DUN_MOROGH },
				["timeline"] = { "added 8.2.0.30918" },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(169865, {	-- Brewfest Chowdown Trophy (TOY!)
						["cost"] = { { "i", 169599, 5 } },	-- 5x Chowdown Champion Token
						["timeline"] = { "added 8.2.0.30918" },
					}),
				},
			}),
			n(24510, {	-- Driz Tumblequick <Ram Racing Apprentice>
				["sourceQuest"] = 11419,	-- Brewfest Riding Rams (H)
				["OnUpdate"] = BREWFEST_RIDING_RAMS_ONUPDATE,
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(33977, {	-- Swift Brewfest Ram (MOUNT!)
						["timeline"] = { "added 2.0.1" },
						["cost"] = { { "g", 1000000 } },	-- 100g
					}),
					i(33976, {	-- Brewfest Ram (MOUNT!)
						["timeline"] = { "added 2.0.1", "removed 2.4.3" },
						["cost"] = { { "g", 100000 } },	-- 10g
					}),
				},
			}),
			n(24501,  {	-- Drohn's Distillery Apprentice <Drohn's Distillery Brew Vendor>
				-- #if AFTER CATA
				["coord"] = { 40.4, 18.1, DUROTAR },
				-- #else
				["coord"] = { 44.3, 18.0, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(34018, {	-- Long Stride Brew
						["timeline"] = { "added 2.2.2" },
					}),
					i(138868, {	-- Mannoroth's Blood Red Ale
						["timeline"] = { "added 7.0.3.22248" },
					}),
					i(34019, {	-- Path of Brew
						["timeline"] = { "added 2.2.2" },
					}),
					i(46402, {	-- Promise of the Pandaren
						["timeline"] = { "added 3.2.0.10314" },
					}),
					i(34017, {	-- Small Step Brew
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			n(155133, {	-- Etga <Chowdown Organizer>
				["coord"] = { 42.2, 18.5, DUROTAR },
				["timeline"] = { "added 8.2.0.30918" },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(169865, {	-- Brewfest Chowdown Trophy (TOY!)
						["cost"] = { { "i", 169599, 5 } },	-- 5x Chowdown Champion Token
						["timeline"] = { "added 8.2.0.30918" },
					}),
				},
			}),
			n(23511,  {	-- Gordok Brew Apprentice <Gordok Brew Vendor>
				["coords"] = {
					-- #if AFTER CATA
					{ 55.6, 36.6, DUN_MOROGH },
					{ 40.9, 16.8, DUROTAR },
					-- #else
					{ 48.4, 38.4, DUN_MOROGH },
					{ 44.0, 16.6, DUROTAR },
					-- #endif
				},
				["timeline"] = { "added 2.2.2" },
				["groups"] = {
					i(46403, {	-- Chuganpug's Delight
						["timeline"] = { "added 3.2.0.10314" },
					}),
					i(138869, {	-- Gordok Bock
						["timeline"] = { "added 7.0.3.22248" },
					}),
					i(33034, {	-- Gordok Grog
						["timeline"] = { "added 2.2.2" },
					}),
					i(33036, {	-- Mudder's Milk
						["timeline"] = { "added 2.2.2" },
					}),
					i(33035, {	-- Ogre Mead
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			n(23481,  {	-- Keiran Donoghue <Sausage Vendor>
				-- #if AFTER CATA
				["coord"] = { 55.33, 37.17, DUN_MOROGH },
				-- #else
				["coord"] = { 48.9, 38.1, DUN_MOROGH },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(34063, {	-- Dried Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(138900, {	-- Gravil Goldbraid's Famous Sausage Hat (TOY!)
						["timeline"] = { "added 7.0.3.22248" },
						["cost"] = BREWFEST_TOKEN_COST(100),
					}),
					i(33024, {	-- Pickled Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(33023, {	-- Savory Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(33025, {	-- Spicy Smoked Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(34064, {	-- Succulent Sausage
						["timeline"] = { "added 2.2.2" },
					}),
					i(33026, {	-- The Golden Link
						["timeline"] = { "added 2.2.2" },
					}),
					i(138884, {	-- Throwing Sausage
						["timeline"] = { "added 7.0.3.22248" },
					}),
				},
			}),
			n(24468, {	-- Pol Amberstill <Ram Racing Apprentice>
				["sourceQuest"] = 11400,	-- Brewfest Riding Rams (A)
				["OnUpdate"] = BREWFEST_RIDING_RAMS_ONUPDATE,
				["timeline"] = { "added 2.2.2" },
				-- #if AFTER CATA
				["coord"] = { 53.6, 38.6, DUN_MOROGH },
				-- #else
				["coord"] = { 46.4, 40.3, DUN_MOROGH },
				-- #endif
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(33977, {	-- Swift Brewfest Ram (MOUNT!)
						["timeline"] = { "added 2.0.1" },
						["cost"] = { { "g", 1000000 } },	-- 100g
					}),
					i(33976, {	-- Brewfest Ram (MOUNT!)
						["timeline"] = { "added 2.0.1", "removed 2.4.3" },
						["cost"] = { { "g", 100000 } },	-- 10g
					}),
				},
			}),
			n(23533,  {	-- T'chali's Voodoo Brewery Apprentice <Voodoo Brew Vendor>
				["coord"] = { 40.3, 16.9, DUROTAR },
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(34021, {	-- Brewdoo Magic
						["timeline"] = { "added 2.2.2" },
					}),
					i(46401, {	-- Crimson Stripe
						["timeline"] = { "added 3.2.0.10314" },
					}),
					i(34020, {	-- Jungle River Water
						["timeline"] = { "added 2.2.2" },
					}),
					i(138870, {	-- Spirit Spirits
						["timeline"] = { "added 7.0.3.22248" },
					}),
					i(34022, {	-- Stout Shrunken Head
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			n(23510,  {	-- Thunderbrew Apprentice <Thunderbrew Brew Vendor>
				["coord"] = { 56.6, 37.0, DUN_MOROGH },
				["timeline"] = { "added 2.2.2" },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(138871, {	-- Storming Saison
						["timeline"] = { "added 7.0.3.22248" },
					}),
					i(33031, {	-- Thunder 45
						["timeline"] = { "added 2.2.2" },
					}),
					i(46399, {	-- Thunder's Plunder
						["timeline"] = { "added 3.2.0.10314" },
					}),
					i(33032, {	-- Thunderbrew Ale
						["timeline"] = { "added 2.2.2" },
					}),
					i(33033, {	-- Thunderbrew Stout
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
			n(23603,  {	-- Uta Roughdough <Bread Vendor>
				-- #if AFTER CATA
				["coord"] = { 41.6, 17.8, DUROTAR },
				-- #else
				["coord"] = { 44.8, 17.5, DUROTAR },
				-- #endif
				["timeline"] = { "added 2.2.2" },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(33043, {	-- The Essential Brewfest Pretzel
						["timeline"] = { "added 2.2.2" },
					}),
				},
			}),
		},
	}),
})));

-- #if AFTER 6.0.1
root(ROOTS.HiddenQuestTriggers, {
	tier(WOD_TIER, {
		q(37247, {	-- Angry Brewfest Letter - triggers when using "Angry Brewfest Letter" to cancel Brew of the Month subscription
			["timeline"] = { "added 6.0.1" },
		}),
	}),
	tier(DF_TIER, {
		q(77775, {	-- Daily kill of Coren Direbrew
			["timeline"] = { ADDED_10_1_7 },
		}),
	}),
});
-- #endif