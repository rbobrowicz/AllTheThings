---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local COOKING_AWARD_GROUPS = {
	-- #if AFTER 5.0.4
	currency(81),	-- Epicurean's Award
	-- #else
	currency(402),	-- Ironpaw Token // Pre 5.0.4 named Chef's Award
	-- #endif
};
local FISHING_AWARD_GROUPS = {
	i(67414, {	-- Bag of Shiny Things
		["timeline"] = { "added 4.0.1.12984" },
		["sym"] = {{"fill"}},
	}),
};
local JEWELCRAFTING_AWARD_GROUPS = {
	currency(361),	-- Illustrious Jewelcrafter's Token
};
local PVP_MOUNT_COST = {
	-- #if AFTER 7.0.3.22248
	{ "i", 137642, 15 },	-- Mark of Honor
	-- #elseif AFTER 4.0
	{ "c", 1901, 2000 },	-- 2000 Honor Points
	-- #elseif AFTER WRATH
	{ "c", 1901, 16650 },	-- 16650 Honor Points
	-- #else
	{ "i", 20560, 30 },	-- Alterac Valley Mark of Honor
	{ "i", 20559, 30 },	-- Arathi Basin Mark of Honor
	{ "i", 20558, 30 },	-- Warsong Gulch Mark of Honor
	-- #endif
};

root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(STORMWIND_CITY, {
		["lore"] = "Stormwind City is the capital city of the Alliance. It is located in the northwestern part of Elwynn Forest.\n\nDuring the First War, the Kingdom of Azeroth, including its capital, Stormwind Keep, was utterly destroyed by the Horde and its survivors fled to Lordaeron. After the orcs were defeated at the Dark Portal at the end of the Second War, it was decided that the city would be rebuilt. The nobles of Stormwind assembled a team of the most skilled and ingenious stonemasons and architects they could find--which later turned sour and led to the rise of the Defias.\n\nWith the fall of the northern kingdoms, Stormwind is by far the most populated city in the world. It serves in many ways as the cultural and trade center of the Alliance, even with remote access to the sea. It is home to the Academy of Arcane Sciences, the only wizarding school in Eastern Kingdoms, as well as SI:7, a rogue intelligence organization.",
		-- #if AFTER WRATH
		["icon"] = "Interface\\Icons\\inv_misc_tournaments_banner_human",
		-- #endif
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(CATA_PHASE_ONE, ach(5476, {	-- Fish or Cut Bait: Stormwind
					["timeline"] = { "added 4.2.0" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "achievement_criteria" }},
				})),
				applyclassicphase(CATA_PHASE_ONE, ach(5474, {	-- Let's Do Lunch: Stormwind
					["timeline"] = { "added 4.2.0" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "achievement_criteria" }},
				})),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					378,	-- Rabbit (PET!)
					379,	-- Squirrel (PET!)
					675,	-- Stormwind Rat (PET!)
				}},
			}),
			n(FACTIONS, {
				faction(1134, {	-- Gilneas
					["timeline"] = { ADDED_4_0_3 },
				}),
				faction(72, {	-- Stormwind
					-- #if AFTER WRATH
					["icon"] = "Interface\\Icons\\Achievement_Character_Human_Female",
					-- #else
					["icon"] = [[~_.asset("Achievement_Character_Human_Female")]],
					-- #endif
					["OnTooltip"] = FUNCTION_TEMPLATES.OnTooltip.RuneclothTurnIns,
					["races"] = ALLIANCE_ONLY,
				}),
				faction(1353, {	-- Tushui Pandaren
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(2, {	-- Stormwind City, Elwynn
					["cr"] = 352,	-- Dungar Longdrink <Gryphon Master>
					-- #if AFTER CATA
					["coord"] = { 71.0, 72.6, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 71.0, 72.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 66.2, 62.4, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(5499, {	-- Lilyssia Nightbreeze <Alchemy Trainer>
						["coord"] = { 55.6, 85.8, STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_ALCHEMY,
							-- #if AFTER CATA
							CATA_ALCHEMY
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(BLACKSMITHING, {
					n(5511, {	-- Therum Deepforge <Expert Blacksmith>
						["coord"] = { 57.0, 16.6, STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_BLACKSMITHING,
							-- #if AFTER CATA
							CATA_BLACKSMITHING
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(COOKING, {
					n(5482, {	-- Stephen Ryback <Cooking Trainer>
						["coord"] = { 76.8, 53.6, STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_COOKING,
							-- #if AFTER CATA
							CATA_COOKING
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(ENCHANTING, {
					n(1317, {	-- Lucan Cordell <Enchanting Trainer>
						["coord"] = { 53.0, 74.2, STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_ENCHANTING,
							-- #if AFTER CATA
							CATA_ENCHANTING
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(FISHING, {
					i(34864, {	-- Baby Crocolisk
						["timeline"] = { "added 2.4.0.7897" },
					}),
					i(67414, {	-- Bag of Shiny Things
						["description"] = "Fishing Daily Quest Reward",
						["timeline"] = { "added 4.0.1.12984" },
						["cr"] = 5494,	-- Catherine Leland
						["groups"] = {
							i(44983, {	-- Strand Crawler (PET!)
								["timeline"] = { "added 3.1.0.9658" },
							}),
							i(33820, {	-- Weather-Beaten Fishing Hat
								["timeline"] = { "added 2.4.0.7897" },
							}),
							i(45991, {	-- Bone Fishing Pole
								["timeline"] = { "added 3.1.0.9658" },
							}),
							i(45992, {	-- Jeweled Fishing Pole
								["timeline"] = { "added 3.1.0.9658" },
							}),
							i(67410, {	-- Very Unlucky Rock
								["timeline"] = { "added 4.0.1.12984" },
							}),
							i(67388, {	-- String of Alligator Teeth
								["timeline"] = { "added 4.0.1.12984" },
							}),
						},
					}),
				}),
				prof(HERBALISM, {
					n(5566, {	-- Tannysa <Herbalism Trainer>
						["coords"] = {
							-- #if AFTER CATA
							{ 54.6, 83.6, STORMWIND_CITY },
							-- #else
							{ 44.8, 77.0, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_HERBALISM,
							-- #if AFTER CATA
							CATA_HERBALISM
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				-- #if NOT ANYCLASSIC
				prof(INSCRIPTION, {
					n(30713, {	-- Catarina Stanford <Inscription Trainer>
						-- #if AFTER LEGION
						["coord"] = { 49.8, 74.0, STORMWIND_CITY },
						-- #else
						["coord"] = { 49.8, 74.6, STORMWIND_CITY },
						-- #endif
						["timeline"] = { "added 3.0.2.8905" },
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_INSCRIPTION,
					}),
				}),
				-- #endif
				prof(JEWELCRAFTING, {
					n(44582, {	-- Theresa Denman <Jewelcrafting Trainer>
						["coord"] = { 63.6, 61.6, STORMWIND_CITY },
						["timeline"] = { "added 4.0.1.12984" },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							r(404740, {	-- Cataclysm Crushing
								["timeline"] = { ADDED_10_0_7 },
							}),
						},
					}),
				}),
				prof(LEATHERWORKING, {
					n(5564, {	-- Simon Tanner <Expert Leatherworker>
						["coords"] = {
							-- #if BEFORE CATA
							{ 67.2, 49.6, STORMWIND_CITY },
							-- #else
							{ 71.8, 62.8, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_CATA_LEGION_LEATHERWORKING,
					}),
				}),
				prof(MINING, {
					n(5513, {	-- Gelman Stonehand <Mining Trainer>
						["coords"] = {
							-- #if AFTER CATA
							{ 59.4, 37.6, STORMWIND_CITY },
							-- #else
							{ 51.0, 17.2, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_CATA_MINING,
					}),
				}),
			}),
			n(QUESTS, {
				q(7794, {	-- A Donation of Mageweave
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7795, {	-- A Donation of Runecloth
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(7793, {	-- A Donation of Silk
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(7791, {	-- A Donation of Wool
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(26190, {	-- A Fisherman's Feast
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(46275, {	-- A Kingdom's Heart
					["qg"] = 119357,	-- Anduin Wrynn
					["sourceQuest"] = 46274,	-- Consoling the King
					["coord"] = { 49.8, 45.2, STORMWIND_CITY },
					["timeline"] = { "added 7.2.0.23746" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(5645, {	-- A Lack of Fear
					["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
					["coord"] = { 38.8, 26.4, STORMWIND_CITY },
					["altQuests"] = {
						5647,	-- A Lack of Fear [Darnassus]
						5641,	-- A Lack of Fear [Ironforge]
					},
					["timeline"] = { "removed 2.3.0" },
					["maps"] = { IRONFORGE },
					["classes"] = { PRIEST },
					["races"] = { DWARF },
					["lvl"] = 20,
					-- #if BEFORE 2.3.0
					["groups"] = {
						recipe(6346),	-- Fear Ward
					},
					-- #endif
				}),
				q(212, {	-- A Meal Served Cold
					["qg"] = 1141,	-- Angus Stern
					-- #if AFTER WRATH
					["coord"] = { 51.8, 93.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Chilled Basilisk Haunch
							["provider"] = { "i", 2476 },	-- Chilled Basilisk Haunch
							["cr"] = 690,	-- Cold Eye Basilisk
						}),
					},
				}),
				q(335, {	-- A Noble Brew (1/2)
					["qg"] = 1435,	-- Zardeth of the Black Claw
					-- #if AFTER WRATH
					["coord"] = { 40.1, 85.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 26.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUSKWOOD, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Tear of Tilloa
							["providers"] = {
								{ "i", 2779 },	-- Tear of Tilloa
								{ "o", 321 },	-- Tear of Tilloa
							},
							["coord"] = { 78.5, 36.0, DUSKWOOD },
						}),
						objective(2, {	-- 0/1 Musquash Root
							["providers"] = {
								{ "i", 2784 },	-- Musquash Root
								{ "o", 2084 },	-- Musquash Root
							},
							["coord"] = { 64.7, 75.5, WETLANDS },
						}),
					},
				}),
				q(336, {	-- A Noble Brew (2/2)
					["providers"] = {
						{ "n", 1435 },	-- Zardeth of the Black Claw
						{ "i", 2788 },	-- Black Claw Stout
					},
					["sourceQuest"] = 335,	-- A Noble Brew (1/2)
					-- #if AFTER WRATH
					["coord"] = { 40.1, 85.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 26.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(62250, {	-- A New Adventure Awaits
					["description"] = "This quest is automatically offered upon reaching the specified level while in Chromie Time.",
					["timeline"] = { "created 9.0.2", ADDED_10_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", 61 },	-- either level or some HQT probably locks this... good luck
					["g"] = {
						i(183185),	-- Chromie's Scroll (A) (QI!)
					},
				}),
				q(47202, {	-- A Personal Message
					["qg"] = 119357,	-- Anduin Wrynn
					["sourceQuest"] = 46275,	-- A Kingdom's Heart
					["coord"] = { 85.9, 34.3, STORMWIND_CITY },
					["timeline"] = { "added 7.2.0.23746" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25154, {	-- A Present for Lila
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78090, {	-- A Second Opinion
					["providers"] = {
						{ "n",   5492 },	-- Katherine the Pure <Paladin Trainer>
						{ "i", 209748 },	-- Althalaxx Orb
					},
					["sourceQuest"] = 78089,	-- Advice From Stormwind
					["coord"] = { 37.4, 32, STORMWIND_CITY },
					["timeline"] = { "removed 2.0.1" },
					["classes"] = { PALADIN },
				})),
				-- #endif
				q(27106, {	-- A Villain Unmasked
					["provider"] = { "o", 205198 },	-- Pile of Explosives
					["sourceQuest"] = 27092,	-- Cataclysm in the Catacombs
					["coord"] = { 50.4, 42.4, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63919, {	-- Corruption-Seeking Chestguard
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63918, {	-- Detective's Shoulderplates
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63920, {	-- Treads of Revelation
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63921, {	-- Truth-Seeker Belt
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63917, {	-- Truthbreaker Shield
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
					},
				}),
				q(1638, {	-- A Warrior's Training
					["qgs"] = {
						913,	-- Lyria Du Lac <Warrior Trainer>
						5480,	-- Ilsa Corbin <Warrior Trainer>
					},
					["altQuests"] = {
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						1678,	-- Vejrek
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["coords"] = {
						{ 41, 65.8, ELWYNN_FOREST },
						-- #if AFTER WRATH
						{ 80.4, 59.8, STORMWIND_CITY },
						-- #else
						{ 78.6, 45.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(44473, {	-- A Weapon of the Alliance
					["qg"] = 100973,	-- Anduin Wrynn
					["sourceQuest"] = 44463,	-- Demons Among Them
					["coord"] = { 85.6, 31.8, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["classes"] = { DEMONHUNTER },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7796, {	-- Additional Runecloth [Stormwind]
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["sourceQuest"] = 7795,	-- A Donation of Runecloth
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["maxReputation"] = { 72, EXALTED },	-- Stormwind, Exalted.
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(62567, {	-- Adventurers Wanted: Chromie's Call
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.6, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(11451, {	-- Alicia's Poem
					["providers"] = {
						{ "n", 24729 },	-- Alicia
						{ "i", 34089 },	-- Alicia's Poem
					},
					-- #if AFTER LEGION
					["coord"] = { 81.6, 28.2, STORMWIND_CITY },
					-- #elseif AFTER CATA
					["coord"] = { 81.5, 28.6, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 70.9, 35.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 66.9, 13.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "added 2.3.0" },
					["maps"] = { SHATTRATH_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(60, 60, 15),
				}),
				q(396, {	-- An Audience with the King
					["providers"] = {
						{ "n", 1646 },	-- Baros Alexston <City Architect>
						{ "i", 2956 },	-- Report on the Defias Brotherhood
					},
					["sourceQuest"] = 395,	-- Brotherhood's End
					-- #if AFTER WRATH
					["coord"] = { 57.7, 47.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 49, 30.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						i(2933, {	-- Seal of Wrynn
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(30989, {	-- An Old Pit Fighter
					["qg"] = 61796,	-- King Varian Wrynn
					["sourceQuest"] = 30988,	-- The Alliance Way
					["coord"] = { 82.6, 28.2, STORMWIND_CITY },
					["timeline"] = { "added 5.0.4", "removed 7.0.3" },
					["races"] = { PANDAREN_ALLIANCE },
				}),
				q(58496, {	-- An Unwelcome Advisor
					["provider"] = { "o", 369893 },	-- Urgent Missive
					["coord"] = { 68.1, 22.4, BORALUS },	-- Urgent Missive
					["description"] = "This quest is automatically offered.",
					["timeline"] = { "added 8.3.0.33062" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7643, {	-- Ancient Equine Spirit
					["providers"] = {
						{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
						{ "i", 18753 },	-- Arcanite Barding
						{ "n", 14566 },	-- Ancient Equine Spirit
					},
					["sourceQuest"] = 7642,	-- Collection of Goods
					["coord"] = { 37.6, 32.6, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DIRE_MAUL, HILLSBRAD_FOOTHILLS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					["groups"] = {
						q(7645, {	-- Ancient Equine Spirit
							["qg"] = 2357,	-- Merideth Carlson <Horse Breeder>
							["coord"] = { 52, 55.6, HILLSBRAD_FOOTHILLS },
							["cost"] = {
								{ "i", 13724, 20 },	-- Enriched Manna Biscuit
								{ "g", 500000 },	-- 50g
							},
							["timeline"] = { "removed 4.0.3" },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Manna-Enriched Horse Feed
									["questID"] = 7643,	-- Ancient Equine Spirit
									["provider"] = { "i", 18775 },	-- Manna-Enriched Horse Feed
								}),
							},
						}),
					},
				}),
				q(5676, {	-- Arcane Feedback [Stormwind City]
					["qgs"] = {
						11406,	-- High Priest Rohan <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
					},
					["coords"] = {
						{ 26.4, 7.6, IRONFORGE },
						{ 38.8, 26.6, STORMWIND_CITY },
					},
					["altQuests"] = {
						5678,	-- Arcane Feedback [Darnassus, NYI?]
						5677,	-- Arcane Feedback [Ironforge]
					},
					["timeline"] = { "removed 3.0.2" },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13896,	-- Feedback (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				q(1942, {	-- Astral Knot Garment
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["sourceQuest"] = 1940,	-- Pristine Spider Silk
					-- #if AFTER WRATH
					["coord"] = { 51.8, 83.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.8, 76.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						i(9516, {	-- Astral Knot Blouse
							["timeline"] = { "removed 4.0.3" },
						}),
						i(7511, {	-- Astral Knot Robe
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1639, {	-- Bartleby the Drunk
					["qg"] = 6089,	-- Harry Burlguard
					["sourceQuests"] = {
						1638,	-- A Warrior's Training
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					-- #if AFTER WRATH
					["coord"] = { 77.1, 53.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 74, 37.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(1665, {	-- Bartleby's Mug
					["providers"] = {
						{ "n", 6090 },	-- Bartleby
						{ "i", 6781 },	-- Bartleby's Mug
					},
					["sourceQuest"] = 1640,	-- Beat Bartleby
					["altQuests"] = {
						--1665,	-- Bartleby's Mug
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
						1678,	-- Vejrek
						1683,	-- Vorlus Vilehoof
					},
					-- #if AFTER WRATH
					["coord"] = { 76.8, 52.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 73.8, 36.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					-- #if BEFORE CATA
					["groups"] = {
						recipe(71),		-- Defensive Stance
						--recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
					},
					-- #endif
				}),
				-- #if AFTER SHADOWLANDS
				q(53370, {	-- Battle for Azeroth: Hour of Reckoning [SL+] / Hour of Reckoning
					["qg"] = 144095,	-- Master Mathias Shaw
					["description"] = "If this quest is not automatically offered, you can try picking it up from a War Board, or taking the boat from Stormwind to Boralus.",
					["timeline"] = { "added 8.0.1.27291" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(163542, {	-- Footman's Warmace
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163541, {	-- Longbow of the Hunt
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163539, {	-- Spear of the Hunt
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163537, {	-- Footman's Warhammer
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163534, {	-- Warmage's Spellblade
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163526, {	-- Footman's Handaxe
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163540, {	-- Footman's Boot Knife
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163538, {	-- Footman's Gladius
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163536, {	-- Warmage's Spire
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163533, {	-- Footman's Cleaver
							["timeline"] = { "added 8.0.1.27291" },
						}),
					},
				}),
				q(58983, {	-- Battle for Azeroth: Tides of War
					["qg"] = 163219,	-- Captain Garrick
					["sourceQuest"] = 58912,	-- An Urgent Meeting [A]
					["coord"] = { 85.2, 32.1, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_9_0_1 },
					["groups"] = {
						i(178941),	-- Alliance Dog Tags,
					}
				}),
				-- #endif
				q(1640, {	-- Beat Bartleby
					["qg"] = 6090,	-- Bartleby
					["sourceQuest"] = 1639,	-- Bartleby the Drunk
					-- #if AFTER WRATH
					["coord"] = { 76.8, 52.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 73.8, 36.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(26488, {	-- Big Gulp
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(7644, {	-- Blessed Arcanite Barding
					["providers"] = {
						{ "n", 14566 },	-- Ancient Equine Spirit
						{ "i", 18792 },	-- Blessed Arcanite Barding
						{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					},
					["sourceQuest"] = 7643,	-- Ancient Equine Spirit
					["coord"] = { 37.6, 32.6, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DIRE_MAUL },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(29412, {	-- Blown Away
					["qg"] = 54117,	-- Vin
					["coord"] = { 58.8, 52.8, STORMWIND_CITY },
					["timeline"] = { "added 4.2.0.14133" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(72042, {	-- Alliance Balloon (PET!)
							["timeline"] = { "added 4.2.0.14133" },
						}),
					},
				}),
				q(344, {	-- Brother Paxton
					["qg"] = 1440,	-- Milton Sheaf
					["sourceQuest"] = 343,	-- Speaking of Fortitude
					-- #if AFTER WRATH
					["coord"] = { 77.1, 30.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 74.2, 7.5, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(395, {	-- Brotherhood's End
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 394,	-- The Head of the Beast
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
					["questID"] = 75300,	-- Burly Brawl HQT
					["qgs"] = {
						203475,	-- Liv Bradford <Bartender>
						203478,	-- Stuart
					},
					["coord"] = { 22.6, 64.7, STORMWIND_CITY },
					["timeline"] = { "removed 2.0.1" },
					["classes"] = { PALADIN, WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(204716, {	-- Rune of Frenzied Assault
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425447),	-- Engrave Pants - Frenzied Assault
							},
						}),
						i(205683, {	-- Rune of Rebuke
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(425621),	-- Engrave Pants - Rebuke
							},
						}),
					},
				})),
				-- #endif
				q(1705, {	-- Burning Blood
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1700,	-- Grimand Elmore
					-- #if AFTER WRATH
					["coord"] = { 59.7, 33.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/20 Burning Blood
							["provider"] = { "i", 6844 },	-- Burning Blood
							["coord"] = { 74.2, 77.8, DUSKWOOD },
							["crs"] = {
								205,	-- Nightbane Dark Runner
								533,	-- Nightbane Shadow Weaver
								920,	-- Nightbane Tainted One
								206,	-- Nightbane Vile Fang
								898,	-- Nightbane Worgen
							},
						}),
						objective(1, {	-- 0/1 Burning Rock
							["provider"] = { "i", 6845 },	-- Burning Rock
							["coord"] = { 74.2, 77.8, DUSKWOOD },
							["cr"] = 6170,	-- Gutspill
						}),
					},
				}),
				q(60959, {	-- Burning Crusade: Onward to Adventure in Outland
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["sourceQuest"] = 60120,	-- Burning Crusade: To Outland!
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(60120, {	-- Burning Crusade: To Outland!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(29100, {	-- Bwemba's Spirit [A]
					["qg"] = 52654,	-- Bwemba
					["sourceQuest"] = 29156,	-- The Troll Incursion
					["coord"] = { 25.9, 29.2, STORMWIND_CITY },
					["timeline"] = { "added 4.1.0.13682" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(14482, {	-- Call of Duty
					["qg"] = 36799,	-- Recruiter Burns
					["sourceQuests"] = {
						14481,	-- Into The Abyss
						27724,	-- Hero's Call: Vashj'ir!
						28827,	-- To the Depths
					},
					["coord"] = { 27.4, 24.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(60891, {	-- Cataclysm: Onward to Adventure in the Eastern Kingdoms
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(27092, {	-- Cataclysm in the Catacombs
					["qg"] = 50049,	-- Jack Bauden <SI:7 Agent>
					["sourceQuest"] = 27072,	-- The Old Barracks
					["coord"] = { 37.2, 56.4, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7642, {	-- Collection of Goods
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 7641,	-- The Work of Grimand Elmore
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					["cost"] = {
						{ "i", 13180, 5 },	-- Stratholme Holy Water
						{ "i", 8836, 10 },	-- Arthas' Tears
						{ "i", 14047, 40 },	-- Runecloth
						{ "i", 12360, 6 },	-- Arcanite Bar
						{ "g", 1500000 },	-- 150g
					},
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(46274, {	-- Consoling the King
					["qg"] = 119338,	-- Genn Greymane
					["sourceQuest"] = 46272,	-- Summons to the Keep
					["coord"] = { 85.7, 32.1, STORMWIND_CITY },
					["timeline"] = { "added 7.2.0.23746" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(32469, {	-- Crystal Clarity (A)
					["qg"] = 16908,	-- Arielle Snapflash
					["sourceQuest"] = 32470,	-- Light Camera Action (A)
					["coord"] = { 61.2, 22.8, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5" },
					["collectible"] = false,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(122661, {	-- S.E.L.F.I.E. Lens Upgrade Kit
							["timeline"] = { "added 6.1.0" },
							["groups"] = {
								i(122674, {	-- S.E.L.F.I.E. Camera MkII
									["timeline"] = { "added 6.1.0" },
								}),
							},
						}),
					},
				}),
				q(44463, {	-- Demons Among Them
					["qg"] = 102585,	-- Jace Darkweaver
					["sourceQuest"] = 44471,	-- Second Sight
					["coord"] = { 84.4, 33.6, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
					["groups"] = {
						i(128959, {	-- Seal of House Wrynn
							["timeline"] = { "added 7.0.3.21796" },
						}),
					},
				}),
				q(40593, {	-- Demons Among Us
					["qg"] = 100675,	-- Jace Darkweaver
					["sourceQuest"] = 40517,	-- The Fallen Lion
					["coord"] = { 85.2, 32.3, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(128959, {	-- Seal of House Wrynn
							["timeline"] = { "added 7.0.3.21796" },
						}),
						i(138774, {	-- Accolade of House Wrynn
							["timeline"] = { "added 7.0.3.21796" },
						}),
						i(138773, {	-- Favor of House Wrynn
							["timeline"] = { "added 7.0.3.21796" },
						}),
					},
				}),
				q(5634, {	-- Desperate Prayer
					["qgs"] = {
						11401,	-- Priestess Alathea <Priest Trainer>
						1226,	-- Maxan Anvol <Priest Trainer>
						377,	-- Priestess Josetta <Priest Trainer>
						11406,	-- High Priest Rohan <Priest Trainer>
						11397,	-- Nara Meideros <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
						3600,	-- Laurna Morninglight <Priest Trainer>
					},
					["coords"] = {
						{ 39.6, 80.8, DARNASSUS },
						{ 47.2, 52.2, DUN_MOROGH },
						{ 43.4, 65.6, ELWYNN_FOREST },
						{ 26.4, 7.6, IRONFORGE },
						{ 20.8, 50.2, STORMWIND_CITY },
						{ 38.8, 26.6, STORMWIND_CITY },
						{ 55.6, 56.8, TELDRASSIL },
					},
					["altQuests"] = {
						5635,	-- Desperate Prayer [Elwynn Forest]
						5636,	-- Desperate Prayer [Teldrassil]
						5637,	-- Desperate Prayer [Dun Morogh]
						5638,	-- Desperate Prayer [Stormwind City #2]
						5639,	-- Desperate Prayer [Ironforge]
						5640,	-- Desperate Prayer [Darnassus]
					},
					["timeline"] = { "removed 3.0.2" },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				q(26420, {	-- Diggin' For Worms
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(6261, {	-- Dungar Longdrink
					["providers"] = {
						{ "n", 1323 },	-- Osric Strang
						{ "i", 16115 },	-- Osric's Crate
					},
					["sourceQuest"] = 6281,	-- Continue to Stormwind
					-- #if AFTER WRATH
					["coord"] = { 77.2, 61.0, STORMWIND_CITY },
					-- #else
					["coord"] = { 74.2, 47.5, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["lvl"] = 10,
				}),
				q(26395, {	-- Dungar Longdrink
					["qg"] = 1323,	-- Osric Strang
					["sourceQuest"] = 26394,	-- Continue to Stormwind
					["coord"] = { 77.0, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3" },
					["races"] = { HUMAN, KULTIRAN },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78091, {	-- Earning Your Salt
					["qg"] = 5495,	-- Ursula Deline <Warlock Trainer>
					["sourceQuest"] = 78090,	-- A Second Opinion
					["coord"] = { 26.2, 77.4, STORMWIND_CITY },
					["timeline"] = { "removed 2.0.1" },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["classes"] = { PALADIN },
					["groups"] = {
						objective(1, {	-- 0/14 Summoner's Salt
							["provider"] = { "i", 209778 },	-- Summoner's Salt
							["crs"] = {
								4463,	-- Blackrock Summoner
								435,	-- Blackrock Champion
								615,	-- Blackrock Tracker
								4464,	-- Blackrock Gladiator
								4462,	-- Blackrock Hunter
								4065,	-- Blackrock Sentry
								436,	-- Blackrock Shadowcaster
							},
						}),
					},
				})),
				-- #endif
				q(25156, {	-- Elemental Goo
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(7637, {	-- Emphasis on Sacrifice
					["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					["sourceQuests"] = {
						7670,	-- Lord Grayson Shadowbreaker [Ironforge]
						7638,	-- Lord Grayson Shadowbreaker [Stormwind City]
					},
					["coord"] = { 37.6, 32.6, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["cost"] = 1500000,	-- 150g
					["maps"] = { IRONFORGE },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(7640, {	-- Exorcising Terrordale
					["providers"] = {
						{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
						{ "i", 18752 },	-- Exorcism Censer
					},
					["sourceQuest"] = 7639, -- To Show Due Judgment
					["coord"] = { 37.6, 32.6, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { EASTERN_PLAGUELANDS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/25 Terrordale Spirit slain
							["provider"] = { "n", 14564 },	-- Terrordale Spirit
							-- #if AFTER WRATH
							["coord"] = { 16.4, 31.8, EASTERN_PLAGUELANDS },
							-- #else
							["coord"] = { 19.6, 36.8, EASTERN_PLAGUELANDS },
							-- #endif
						}),
					},
				}),
				q(28807, {	-- Expert Opinion
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["sourceQuests"] = {
						27064,	-- He's Holding Out on Us
						27060,	-- Unholy Cow
					},
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(58708, {	-- Fame Waits for Gnome One
					["qg"] = 162393,	-- Gila Crosswires
					["coord"] = { 52.7, 14.1, STORMWIND_CITY },
					["timeline"] = { "added 8.3.0.33062" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26177, {	-- Feeling Crabby?
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(1701, {	-- Fire Hardened Mail
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6842 },	-- Furen's Instructions
					},
					["sourceQuest"] = 1702,	-- The Shieldsmith
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { RAZORFEN_KRAUL, WETLANDS, STONETALON_MOUNTAINS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/50 Scorched Spider Fang
							["provider"] = { "i", 6838 },	-- Scorched Spider Fang
							["crs"] = {
								4040,	-- Cave Stalker
								1111,	-- Leech Stalker
							},
						}),
						objective(2, {	-- 0/12 Charred Horn
							["provider"] = { "i", 6839 },	-- Charred Horn
							["crs"] = {
								4031,	-- Fledgling Chimaera
								4032,	-- Young Chimaera
							},
						}),
						objective(3, {	-- 0/1 Galvanized Horn
							["provider"] = { "i", 6840 },	-- Galvanized Horn
							["cr"] = 6167,	-- Chimaera Matriarch
						}),
						objective(4, {	-- 0/1 Vial of Phlogiston
							["provider"] = { "i", 6841 },	-- Vial of Phlogiston
							["cr"] = 6168,	-- Roogug
						}),
					},
				}),
				q(6184, {	-- Flint Shadowmore
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6183,	-- Honor the Dead
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(27675, {	-- Forged Documents
					["provider"] = { "i", 62056 },	-- Forged Documents
					["description"] = "After creating Forged Documents with Inscription, search the city for an NPC to accept them - the quest can end in a variety of different places.",
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = INSCRIPTION,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
				}),
				-- #if AFTER SHADOWLANDS
				q(27271, {	-- Frazzle's Request [SL+] / Journey to the Wizard's Sanctum
					["qgs"] = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					["coords"] = {
						{ 47.2, 61.8, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					["timeline"] = { "added 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(1782, {	-- Furen's Armor
					["qg"] = 5413,	-- Furen Longbeard
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(6972, {	-- Fire Hardened Hauberk
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1685, {	-- Gakin's Summons (Voidwalker)
					["qg"] = 6121,	-- Remen Marcot
					["altQuests"] = { 1715 },	-- The Slaughtered Lamb
					["coord"] = { 44.4, 66.2, ELWYNN_FOREST },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1717, {	-- Gakin's Summons (Succubus)
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1921, {	-- Gathering Materials
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1920,	-- Investigate the Blue Recluse
					-- #if AFTER WRATH
					["coord"] = { 49.5, 85.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { LOCH_MODAN },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(2, {	-- 0/6 Charged Rift Gem
							["provider"] = { "i", 7249 },	-- Charged Rift Gem
							["coord"] = { 35, 27, LOCH_MODAN },
						}),
					},
				}),
				q(49976, {	-- Gifts of the Fallen
					["qg"] = 132255,	-- Master Mathias Shaw
					["sourceQuest"] = 50371,	-- Summons to Stormwind
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5", "removed 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(39800, {	-- Greymane's Gambit
					["qg"] = 96663,	-- Genn Greymane
					["sourceQuest"] = 38206,	-- Making the Rounds
					["coord"] = { 18.6, 50.8, STORMWIND_CITY },
					["timeline"] = { "added 7.0.1.20756" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(139914, {	-- 7th Legion Battlemage Amice
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(121760, {	-- 7th Legion Battlemage Wraps
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(139950, {	-- Gryphon Rider's Shoulderpads
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(139955, {	-- Gryphon Rider's Cuffs
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(139976, {	-- Skyfire Engineer's Mantle
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(121762, {	-- Skyfire Engineer's Wristguards
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(121753, {	-- Skyfire Marine's Pauldrons
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(121761, {	-- Skyfire Marine's Vambraces
							["timeline"] = { "added 7.0.1.20756" },
						}),
					},
				}),
				q(1700, {	-- Grimand Elmore
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1706, {	-- Grimand's Armor
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1705,	-- Burning Blood
					-- #if AFTER WRATH
					["coord"] = { 59.7, 33.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(6971, {	-- Fire Hardened Coif
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(7648, {	-- Grimand's Finest Work
					["providers"] = {
						{ "n", 1416 },	-- Grimand Elmore
						{ "i", 18753 },	-- Arcanite Barding
					},
					["sourceQuest"] = 7642,	-- Collection of Goods
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(66420, {	-- Happy Hour
					["qg"] = 188342,	-- Onnesa
					["sourceQuest"] = 66390,	-- Missing Merchandise
					["coord"] = { 51.5, 70.4, STORMWIND_CITY },
					["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(191865, {	-- Bottle of Briny Seawater (QI!)
							["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
						}),
					},
				}),
				q(333, {	-- Harlan Needs a Resupply
					["providers"] = {
						{ "n", 1427 },	-- Harlan Bagley
						{ "i", 2724 },	-- Cloth Request
					},
					-- #if AFTER CATA
					["coord"] = { 62.2, 67.8, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 62.3, 67.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 55.1, 56.0, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				q(27064, {	-- He's Holding Out on Us
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["sourceQuest"] = 26997,	-- The Usual Suspects
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1939, {	-- High Sorcerer Andromath
					["qgs"] = {
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
					},
					["coords"] = {
						{ 27.0, 8.2, IRONFORGE },
						-- #if AFTER WRATH
						{ 49.5, 85.8, STORMWIND_CITY },
						-- #else
						{ 38.6, 79.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(26414, {	-- Hitting a Walleye
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(6183, {	-- Honor the Dead
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6182,	-- The First and the Last
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				-- #if BEFORE SHADOWLANDS
				q(53370, {	-- Hour of Reckoning / Battle for Azeroth: Hour of Reckoning [SL+]
					["qg"] = 144095,	-- Master Mathias Shaw
					["description"] = "If this quest is not automatically offered, you can try picking it up from a War Board, or taking the boat from Stormwind to Boralus.",
					["timeline"] = { "added 8.0.1.27291" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(163542, {	-- Footman's Warmace
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163541, {	-- Longbow of the Hunt
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163539, {	-- Spear of the Hunt
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163537, {	-- Footman's Warhammer
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163534, {	-- Warmage's Spellblade
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163526, {	-- Footman's Handaxe
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163540, {	-- Footman's Boot Knife
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163538, {	-- Footman's Gladius
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163536, {	-- Warmage's Spire
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163533, {	-- Footman's Cleaver
							["timeline"] = { "added 8.0.1.27291" },
						}),
					},
				}),
				-- #endif
				q(399, {	-- Humble Beginnings
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					-- #if AFTER WRATH
					["coord"] = { 57.7, 47.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 49, 30.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 A Simple Compass
							["providers"] = {
								{ "i", 2998 },	-- A Simple Compass
								{ "o", 1166 },	-- Alexston's Chest
							},
							["coord"] = { 36.3, 54.6, WESTFALL },
						}),
					},
				}),
				q(32675, {	-- I Believe You Can Fly
					["description"] = "This quest is automatically offered to Alliance players upon reaching the specified level.",
					["timeline"] = { "added 5.2.0" },
					["races"] = ALLIANCE_ONLY,
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["lockCriteria"] = { 1,
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["lvl"] = lvlsquish(60, 60, 30),
				}),
				q(44120, {	-- Illidari Allies
					["qg"] = 100973,	-- Anduin Wrynn
					["sourceQuest"] = 40593,	-- Demons Among Us
					["coord"] = { 85.6, 31.8, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2759, {	-- In Search of Galvan
					["providers"] = {
						{ "n", 7798 },	-- Hank the Hammer
						{ "i", 8663 },	-- Mithril Insignia
					},
					["sourceQuest"] = 2758,	-- The Origins of Smithing
					-- #if AFTER WRATH
					["coord"] = { 63.0, 36.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 56.0, 16.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(1448, {	-- In Search of The Temple
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					-- #if AFTER WRATH
					["coord"] = { 69.5, 40.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 70.0, 55.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2745, {	-- Infiltrating the Castle
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 350,	-- Look to an Old Friend
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(1920, {	-- Investigate the Blue Recluse
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1919,	-- Report to Jennea
					-- #if AFTER WRATH
					["coord"] = { 49.5, 85.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/3 Filled Containment Coffer
							["provider"] = { "i", 7292 },	-- Filled Containment Coffer
							-- #if AFTER WRATH
							["coord"] = { 51.0, 95.0, STORMWIND_CITY },
							-- #else
							["coord"] = { 39.4, 86, STORMWIND_CITY },
							-- #endif
							["cost"] = {
								{ "i", 7247, 1 },	-- Chest of Containment Coffers
								{ "i", 7308, 1 },	-- Cantation of Manifestation
							},
							["cr"] = 6492,	-- Rift Spawn
						}),
						objective(2, {	-- 0/1 Chest of Containment Coffers
							["provider"] = { "i", 7247 },	-- Chest of Containment Coffers
							-- #if AFTER WRATH
							["coord"] = { 49.6, 85.4, STORMWIND_CITY },
							-- #else
							["coord"] = { 38.7, 79.1, STORMWIND_CITY },
							-- #endif
						}),
						objective(3, {	-- 0/1 Cantation of Manifestation
							["provider"] = { "i", 7308 },	-- Cantation of Manifestation
							-- #if AFTER WRATH
							["coord"] = { 49.6, 85.4, STORMWIND_CITY },
							-- #else
							["coord"] = { 38.7, 79.1, STORMWIND_CITY },
							-- #endif
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78092, {	-- It Must Be Destroyed
					["providers"] = {
						{ "n",   5495 },	-- Ursula Deline <Warlock Trainer>
						{ "i", 209748 },	-- Althalaxx Orb
						{ "o",   409311 },	-- Spear of Mannoroth
					},
					["sourceQuest"] = 78091,	-- Earning Your Salt
					["coords"] = {
						{ 26.2, 77.4, STORMWIND_CITY },
						{ 89.5, 76.9, ASHENVALE },
					},
					["timeline"] = { "removed 2.0.1" },
					["classes"] = { PALADIN },
					["groups"] = {
						objective(1, {	-- 0/12 Mote of Mannoroth
							["provider"] = { "i", 209779 },	-- Mote of Mannoroth
							["crs"] = {
								11697,	-- Mannoroc Lasher
								6115,	-- Roaming Felguard
								6073,	-- Searing Infernal
								6071,	-- Legion Hound
							},
						}),
					},
				})),
				-- #endif
				q(2746, {	-- Items of Some Consequence
					["qg"] = 7766,	-- Tyrion
					["sourceQuest"] = 2745,	-- Infiltrating the Castle
					-- #if AFTER WRATH
					["coord"] = { 73.2, 35.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 69.2, 14.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["cost"] = { { "i", 4306, 3 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(2, {	-- 0/2 Clara's Fresh Apple
							["providers"] = {
								{ "i",   8683 },	-- Clara's Fresh Apple
								{ "o", 142076 },	-- Clara's Fresh Apples
							},
							["coord"] = { 34, 57.2, ELWYNN_FOREST },
						}),
					},
				}),
				q(30987, {	-- Joining the Alliance
					["qg"] = 60566,	-- Aysa Cloudsinger
					["coord"] = { 74.2, 92.4, STORMWIND_CITY },
					["timeline"] = { "added 5.0.4" },
					["races"] = { PANDAREN_NEUTRAL },
				}),
				-- #if BEFORE SHADOWLANDS
				q(27271, {	-- Journey to the Wizard's Sanctum / Frazzle's Request [SL+]
					["qgs"] = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					["coords"] = {
						{ 47.2, 61.8, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					["timeline"] = { "added 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(1704, {	-- Klockmort Spannerspan
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARRIOR },
					["races"] = { DWARF, GNOME },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(32665, {	-- Learn To Ride
					["description"] = "This quest is automatically granted to Pandaren upon reaching the specified level.",
					["timeline"] = { "added 5.2.0", REMOVED_10_1_5 },
					["races"] = { PANDAREN_ALLIANCE },
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(60971, {	-- Legion: Onward to Adventure in the Broken Isles
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(65896, {	-- Let the Healing Begin
					["qg"] = 190830,	-- Otan Tennoh
					["coord"] = { 44.2, 57.0, STORMWIND_CITY },
					["timeline"] = { ADDED_10_0_2 },
					["races"] = { DRACTHYR_ALLIANCE },
					["classes"] = { EVOKER },
				}),
				q(32470, {	-- Light Camera Action (A)
					["qg"] = 16908,	-- Arielle Snapflash
					["coord"] = { 61.2, 22.8, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5" },
					["cost"] = { { "i", 4406, 1 } },	-- Standard Scope
					["collectible"] = false,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Iron Box
							["provider"] = { "i", 155856 },	-- Iron Box
							["coord"] = { 68.1, 66.9, STORMWIND_CITY },
						}),
						objective(3, {	-- 0/1 Russet Belt
							["provider"] = { "i", 3593 },	-- Russet Belt
							["coord"] = { 53.2, 81.8, STORMWIND_CITY },
						}),
						i(122637, {	-- S.E.L.F.I.E. Camera
							["timeline"] = { "added 6.1.0.19508" },
						}),
					},
				}),
				q(7670, {	-- Lord Grayson Shadowbreaker [Ironforge]
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.4, 6.2, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { IRONFORGE },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 60,
				}),
				q(7638, {	-- Lord Grayson Shadowbreaker [Stormwind City]
					["qg"] = 6171,	-- Duthorian Rall
					["coord"] = { 40, 29.8, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 60,
				}),
				q(350, {	-- Look to an Old Friend
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 393,	-- Shadow of the Past
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(38206, {	-- Making the Rounds
					["qg"] = 96644,	-- Sky Admiral Rogers
					["sourceQuest"] = 38035,	-- A Royal Summons
					["coord"] = { 18.8, 42.6, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1941, {	-- Manaweave Robe
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["sourceQuest"] = 1921,	-- Gathering Materials
					-- #if AFTER WRATH
					["coord"] = { 51.8, 83.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.8, 76.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						i(7509, {	-- Manaweave Robe
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in the Ghostlands for Blood Elf Mages, originally only available to the Alliance in Stormwind.",
							-- #endif
							["timeline"] = { "removed 4.0.3" },	-- Item is still available in the Ghostlands for Horde, but removed from this source.
						}),
					},
				}),
				q(65047, {	-- Mark of the Nightwing Raven
					["qg"] = 44395,	-- Celestine of the Harvest
					["coord"] = { 57.6, 24.8, STORMWIND_CITY },
					["name"] = "Mark of the Nightwing Raven",	-- TODO: What is this?
					["timeline"] = { ADDED_9_1_5 },
					["classes"] = { DRUID },
				}),
				q(1666, {	-- Marshal Haggard
					["qg"] = 6089,	-- Harry Burlguard
					["sourceQuest"] = 1665,	-- Bartleby's Mug
					-- #if AFTER WRATH
					["coord"] = { 77.1, 53.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 74, 37.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(2360, {	-- Mathias and the Defias
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(1703, {	-- Mathiel
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARRIOR },
					["races"] = { NIGHTELF },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1363, {	-- Mazen's Behest (1/2)
					["qg"] = 338,	-- Mazen Mac'Nadir
					-- #if AFTER WRATH
					["coord"] = { 51.8, 74.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.4, 64.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(1364, {	-- Mazen's Behest (2/2)
					["qg"] = 5386,	-- Acolyte Dellis
					["sourceQuest"] = 1363,	-- Mazen's Behest (1/2)
					-- #if AFTER WRATH
					["coord"] = { 51.4, 73.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 40.8, 64, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/1 Khadgar's Essays on Dimensional Convergence
							["provider"] = { "i", 6065 },	-- Khadgar's Essays on Dimensional Convergence
							["crs"] = {
								1081,	-- Mire Lord
								14448,	-- Molt Thorn
								764,	-- Swampwalker
								765,	-- Swampwalker Elder
								766,	-- Tangled Horror
							},
						}),
						i(10747, {	-- Teacher's Sash
							["timeline"] = { "removed 4.0.3" },
						}),
						i(10748, {	-- Wanderlust Boots
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1861, {	-- Mirror Lake
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1860,	-- Speak with Jennea
					["altQuests"] = { 1880 },	-- Mage-tastic Gizmonitor
					-- #if AFTER WRATH
					["coord"] = { 49.5, 85.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Mirror Lake Water Sample
							["provider"] = { "i", 7206 },	-- Mirror Lake Water Sample
							["cost"] = { { "i", 7207, 1 } },	-- Jennea's Flask
							["coord"] = { 28, 62, ELWYNN_FOREST },
						}),
						i(7508, {	-- Ley Orb
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in Eversong Woods for Horde Mages.",
							-- #endif
							["timeline"] = { "removed 4.0.3" },	-- Item is still available in the Eversong Woods for Horde, but removed from this source.
						}),
						i(9513, {	-- Ley Staff
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in Eversong Woods for Horde Mages.",
							-- #endif
							["timeline"] = { "removed 4.0.3" },	-- Item is still available in the Eversong Woods for Horde, but removed from this source.
						}),
					},
				}),
				q(66390, {	-- Missing Merchandise
					["qg"] = 188342,	-- Onnesa
					["coord"] = { 51.5, 70.4, STORMWIND_CITY },
					["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27038, {	-- Missing Parts
					["qg"] = 44749,	-- Supply Sergeant Graves
					["sourceQuest"] = 26975,	-- Rallying the Fleet
					["coord"] = { 33.2, 39.4, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63927, {	-- Machine-Linker Girdle
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63926, {	-- Reconstructing Hauberk
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63925, {	-- Scavenger Bracers
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
					},
				}),
				q(60965, {	-- Mists of Pandaria: Onward to Adventure in Pandaria
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(60125, {	-- Mists of Pandaria: To Pandaria!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["timeline"] = { "added 7.3.5" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26960, {	-- My Son, the Prince
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25105, {	-- Nibbler! No!
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(25155, {	-- Ogrezonians in the Mood
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(6187, {	-- Order Must Be Restored
					-- #if AFTER WRATH
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 79.8, 38.6, STORMWIND_CITY },
					-- #else
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78, 18, STORMWIND_CITY },
					-- #endif
					["sourceQuest"] = 6186,	-- The Blightcaller Cometh
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Nathanos Blightcaller slain
							["provider"] = { "n", 11878 },	-- Nathanos Blightcaller <Champion of the Banshee Queen>
						}),
						i(16996, {	-- Gorewood Bow
							["timeline"] = { "removed 4.0.3" },
						}),
						i(16997, {	-- Stormrager
							["timeline"] = { "removed 4.0.3" },
						}),
						i(16998, {	-- Sacred Protector
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(26192, {	-- Orphans Like Cookies Too!
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(334, {	-- Package for Thurman
					["qg"] = 1428,	-- Rema Schneider
					-- #if AFTER LEGION
					["coord"] = { 58.0, 67.2, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 58.1, 67.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 49.5, 55.3, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2760),	-- Thurman's Sewing Kit (QI!)
					},
				}),
				q(27044, {	-- Peasant Problems
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["sourceQuests"] = {
						26975,	-- Rallying the Fleet
						26997,	-- The Usual Suspects
					},
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26153, {	-- Penny's Pumpkin Pancakes
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(1940, {	-- Pristine Spider Silk
					["qg"] = 5694,	-- High Sorcerer Andromath
					["sourceQuest"] = 1938,	-- Ur's Treatise on Shadow Magic
					-- #if AFTER WRATH
					["coord"] = { 48.7, 87.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUSKWOOD },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/8 Pristine Spider Silk
							["provider"] = { "i", 7267 },	-- Pristine Spider Silk
							["crs"] = {
								949,	-- Carrion Recluse
								930,	-- Black Widow Hatchling
							},
						}),
					},
				}),
				q(26975, {	-- Rallying the Fleet
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["sourceQuest"] = 26960,	-- My Son, the Prince
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2281, {	-- Redridge Rendezvous
					["qg"] = 6946,	-- Renzik "The Shiv"
					["sourceQuests"] = {
						2260,	-- Erion's Behest(Darnassus)
						2298,	-- Kingly Shakedown(Ironforge)
						2300,	-- SI:7(Elwynn Forest)
					},
					["coord"] = { 75.9, 60.3, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
				q(1919, {	-- Report to Jennea
					["qg"] = 7312,	-- Dink <Mage Trainer>
					["coord"] = { 26.8, 8.6, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(58498, {	-- Return of the Warrior King
					["qg"] = 154532,	-- Magni Bronzebeard <The Speaker>
					["sourceQuest"] = 58496,	-- An Unwelcome Advisor
					["coord"] = { 85.2, 32.5, STORMWIND_CITY },
					["timeline"] = { "added 8.3.0.33062" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26396, {	-- Return to Argus
					["qg"] = 352,	-- Dungar Longdrink
					["sourceQuest"] = 26395,	-- Dungar Longdrink
					["coord"] = { 71.0, 72.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3" },
					["races"] = { HUMAN, KULTIRAN, VOIDELF },
				}),
				q(6285, {	-- Return to Lewis
					["providers"] = {
						{ "n", 352 },	-- Dungar Longdrink <Gryphon Master>
						{ "i", 16115 },	-- Osric's Crate
					},
					["sourceQuest"] = 6261,	-- Dungar Longdrink
					-- #if AFTER WRATH
					["coord"] = { 71.0, 72.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 66.2, 62.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["lvl"] = 10,
				}),
				q(26442, {	-- Rock Lobster
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(44471, {	-- Second Sight
					["qg"] = 102585,	-- Jace Darkweaver
					["sourceQuest"] = 39691,	-- The Call of War
					["coord"] = { 84.4, 33.6, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78194, {	-- Secrets of Elune (1/2)
					["qg"] = 11397,	-- Nara Meideros <Priest Trainer>
					["coord"] = { 20.8, 50.2, STORMWIND_CITY },
					["timeline"] = { "removed 2.0.1" },
					["maps"] = { DUSKWOOD },
					["classes"] = { PRIEST },
					["races"] = { DWARF, HUMAN },
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Dire Wolf Paw
							["provider"] = { "i", 210053 },	-- Dire Wolf Paw
							["coord"] = { 67.2, 27.2, DUSKWOOD },
							["crs"] = {
								565,	-- Rabid Dire Wolf
								213,	-- Starving Dire Wolf
								628,	-- Black Ravager
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78195, {	-- Secrets of Elune (2/2)
					["qg"] = 11397,	-- Nara Meideros <Priest Trainer>
					["sourceQuest"] = 78194,	-- Secrets of Elune (1/2)
					["coord"] = { 20.8, 50.2, STORMWIND_CITY },
					["description"] = "Completing this quest will allow you to meditate in the same manner as the night elves.",
					["timeline"] = { "removed 2.0.1" },
					["maps"] = { DARKSHORE },
					["classes"] = { PRIEST },
					["races"] = { DWARF, HUMAN },
					["lvl"] = 17,
					["groups"] = {
						recipe(424036, {	-- Secrets of Elune
							["classes"] = { PRIEST },
						}),
					},
				})),
				-- #endif
				q(393, {	-- Shadow of the Past
					["providers"] = {
						{ "n", 1646 },	-- Baros Alexston <City Architect>
						{ "i", 8687 },	-- Sealed Description of Thredd's Visitor
					},
					["sourceQuest"] = 392,	-- The Curious Visitor
					-- #if AFTER WRATH
					["coord"] = { 57.7, 47.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 49, 30.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(79077, {	-- Sharing the Faith
					["qg"] = 1212,	-- Bishop Farthing
					["coord"] = { 39.2, 28, STORMWIND_CITY },
					["timeline"] = { "removed 2.0.1" },
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { PRIEST },
					["races"] = { DWARF, HUMAN },
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- Pray over the Supplicant
							["provider"] = { "n", 215062 },	-- Supplicant
							["description"] = "You must first have your Meditation buff and then use /pray on the kneeling Supplicant.",
						}),
					},
				})),
				-- #endif
				q(2206, {	-- Snatch and Grab
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 2205,	-- Seek out SI:7
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Shipping Schedule
							["provider"] = { "i", 7675 },	-- Defias Shipping Schedule
							["coord"] = { 48.2, 87.6, ELWYNN_FOREST },
							["cr"] = 6846,	-- Defias Dockmaster
						}),
						i(7298, {	-- Blade of Cunning
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(createHeader({	-- Speak to Brother Romulus
					readable = "Speak to Brother Romulus",
					icon = "Interface\\CURSOR\\Speak",
					text = {
						en = "Speak to Brother Romulus",
						es = "Habla con el Hermano Romulus",
						de = "Sprich mit Bruder Romulus",
						fr = "Parlez à Frère Romulus",
						it = "Parla con Fratello Romulus",
						pt = "Fale com o Irmão Romulus",
						ru = "Поговорите с Брат Ромул",
						ko = "로물루스 형제와 대화하세요",
						cn = "与罗穆卢斯修士交谈",
					},
				}), {
					["questID"] = 75939,	-- Brother Romulus HQT
					["qg"] = 205278,	-- Brother Romulus
					["coord"] = { 38.6, 28.8, STORMWIND_CITY },
					["timeline"] = { "removed 2.0.1" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
				})),
				-- #endif
				q(343, {	-- Speaking of Fortitude
					["qg"] = 1444,	-- Brother Kristoff
					-- #if AFTER WRATH
					["coord"] = { 55.0, 54.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 45.7, 38.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(353, {	-- Stormpike's Delivery
					["providers"] = {
						{ "n", 1416 },	-- Grimand Elmore
						{ "i", 2806 },	-- Package for Stormpike
					},
					["sourceQuest"] = 1097,	-- Elmore's Task
					-- #if AFTER WRATH
					["coord"] = { 59.7, 33.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				q(579, {	-- Stormwind Library
					["qg"] = 2504,	-- Donyal Tovald <Librarian>
					-- #if AFTER WRATH
					["coord"] = { 84.6, 24.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 71.6, 7.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["cost"] = { { "i", 3898, 1 } },	-- Library Scrip
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(3899, {	-- Legends of the Gurubashi, Volume 3
							["timeline"] = { "removed 4.0.3" },
						}),
						i(2154, {	-- The Story of Morgan Ladimore
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(50371, {	-- Summons to Stormwind
					["qg"] = 132255,	-- Master Mathias Shaw
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5", "removed 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1688, {	-- Surena Caledon
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1685,	-- Gakin's Summons (Voidwalker)
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Surena's Choker
							["provider"] = { "i", 6810 },	-- Surena's Choker
							["coord"] = { 71.0, 80.6, ELWYNN_FOREST },
							["cr"] = 881,	-- Surena Caledon
						}),
					},
				}),
				q(30988, {	-- The Alliance Way
					["qg"] = 61796,	-- King Varian Wrynn
					["sourceQuest"] = 30987,	-- Joining the Alliance
					["coord"] = { 82.6, 28.2, STORMWIND_CITY },
					["timeline"] = { "added 5.0.4", "removed 7.0.3" },
					["races"] = { PANDAREN_ALLIANCE },
				}),
				q(434, {	-- The Attack!
					["qg"] = 7766,	-- Tyrion
					["sourceQuest"] = 2746,	-- Items of Some Consequence
					-- #if AFTER WRATH
					["coord"] = { 73.2, 35.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 69.2, 14.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Lord Gregor Lescovar slain
							["provider"] = { "n", 1754 },	-- Lord Gregor Lescovar
						}),
						objective(2, {	-- 0/1 Marzon the Silent Blade slain
							["provider"] = { "n", 1755 },	-- Marzon the Silent Blade
						}),
					},
				}),
				q(42740, {	-- The Battle for Broken Shore
					-- CRIEVE NOTE: Perhaps move this and related quests/things to the Expansion Features section?
					-- Also find the right mapID for the scenario.
					["qg"] = 108916,	-- Knight Dameron
					["sourceQuest"] = 42782,	-- To Be Prepared
				--	["altQuests"] = { 43806 },	-- Scenario Skip (A)
					["coord"] = { 19.0, 26.1, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["classes"] = exclude({ DEMONHUNTER }, ALL_CLASSES),
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(138767),	-- Stormwind Vanguard Battle Mace
						i(138772),	-- Stormwind Vanguard Bonegrinder
						i(138770),	-- Stormwind Vanguard Dagger
						i(138771),	-- Stormwind Vanguard Longbow
						i(138765),	-- Stormwind Vanguard Mageblade
						i(138769),	-- Stormwind Vanguard Polearm
						i(138768),	-- Stormwind Vanguard Quickblade
						i(136586),	-- Stormwind Vanguard Splitter
						i(138766),	-- Stormwind Vanguard Stave
						i(138764),	-- Stormwind Vanguard Waraxe
						i(139389, {	-- Charred Locket
							["description"] = "In order to get this you must do the scenario 'Battle for Broken Shore' and on Stage 6 search for a pile of ash titled 'Ashes of a Fallen Crusader' to retrieve the item.  You will then go to 85, 67 in Elywnn Forest located at the Eastvale Logging Camp.  From there you will go to the bedroom on the second floor to talk to Alaina.  After talking to her leave (log or swap zones) and then come back to her to retrieve the item.",
							["groups"] = {
								i(139391),	-- Alaina's Bonnet
							},
						}),
					},
				}),
				q(51795, {	-- The Battle for Lordaeron
					["qg"] = 144095,	-- Master Mathias Shaw
					["sourceQuest"] = 53370,	-- Hour of Reckoning
					["coord"] = { 22.4, 32.6, STORMWIND_CITY },
					["timeline"] = { "added 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if ANYCLASSIC
				q(65603, {	-- The Binding (Incubus) [Stormwind City]
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 65602,	-- What Is Love?
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Incubus slain
							["provider"] = { "n", 185335 },	-- Summoned Incubus
							["cost"] = { { "i", 190186, 1 } },	-- Wooden Figurine
						}),
						-- #if BEFORE 4.0.3
						recipe(713),	-- Summon Incubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				-- #endif
				q(1739, {	-- The Binding (Succubus) [Stormwind City]
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1738,	-- Heartswood
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Succubus slain
							["provider"] = { "n", 5677 },	-- Summoned Succubus
							["cost"] = { { "i", 6913, 1 } },	-- Heartswood Core
						}),
						-- #if BEFORE 4.0.3
						recipe(712),	-- Summon Succubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1689, {	-- The Binding (Voidwalker) [Stormwind City]
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1688,	-- Surena Caledon
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Voidwalker slain
							["provider"] = { "n", 5676 },	-- Summoned Voidwalker
							["cost"] = { { "i", 6928, 1 } },	-- Bloodstone Choker
						}),
						-- #if BEFORE 4.0.3
						recipe(697),	-- Summon Voidwalker
						-- #endif
					},
				}),
				q(29439, {	-- The Call of the World-Shaman
					["qg"] = 45226,	-- Naraat the Earthspeaker
					["coord"] = { 74.4, 18.8, STORMWIND_CITY },
					["timeline"] = { "added 4.2.0" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(39691, {	-- The Call of War
					["qg"] = 97296,	-- Archmage Khadgar
					["coord"] = { 72.4, 47.2, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
				}),
				q(392, {	-- The Curious Visitor
					["providers"] = {
						{ "n", 1719 },	-- Warden Thelwater
						{ "i", 8687 },	-- Sealed Description of Thredd's Visitor
					},
					["sourceQuest"] = 391,	-- The Stockage Riots
					-- #if AFTER WRATH
					["coord"] = { 51.6, 69.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.2, 58, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(7646, {	-- The Divination Scryer
					["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					["sourceQuest"] = 7644,	-- Blessed Arcanite Barding
					["coord"] = { 37.6, 32.6, STORMWIND_CITY },
					["cost"] = {
						{ "i", 12800, 1 },	-- Azerothian Diamond
						{ "i", 18335, 1 },	-- Pristine Black Diamond
					},
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(28826, {	-- The Eye of the Storm
					["qg"] = 45226,	-- Naraat the Earthspeaker
					["sourceQuest"] = 28825,	-- A Personal Summons
					["coord"] = { 74.4, 18.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(40517, {	-- The Fallen Lion
					["qg"] = 100395,	-- Genn Greymane
					["sourceQuest"] = 42740,	-- The Battle for Broken Shore (QuestID 43806 - Scenario Skip)
					["coord"] = { 19.8, 34.9, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(6182, {	-- The First and the Last
					-- #if AFTER WRATH
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 79.8, 38.6, STORMWIND_CITY },
					-- #else
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78, 18, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(394, {	-- The Head of the Beast
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 434,	-- The Attack!
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(26183, {	-- The King's Cider
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(25157, {	-- The Latest Fashion!
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(1274, {	-- The Missing Diplomat (1/17)
					["qg"] = 4982,	-- Thomas <Altar Boy>
					-- #if AFTER WRATH
					["coord"] = { 49.6, 44.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 28.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1241, {	-- The Missing Diplomat (2/17)
					["providers"] = {
						{ "n", 4960 },	-- Bishop DeLavey
						{ "i", 5948 },	-- Letter to Jorgen
					},
					["sourceQuest"] = 1274,	-- The Missing Diplomat (1/17)
					-- #if AFTER WRATH
					["coord"] = { 80.3, 44.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 78.4, 25.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1242, {	-- The Missing Diplomat (3/17)
					["providers"] = {
						{ "n", 4959 },	-- Jorgen
						{ "i", 5946 },	-- Sealed Note to Elling
					},
					["sourceQuest"] = 1241,	-- The Missing Diplomat (2/17)
					-- #if AFTER WRATH
					["coord"] = { 76.3, 85.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 73.2, 78.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1243, {	-- The Missing Diplomat (4/17)
					["providers"] = {
						{ "n", 482 },	-- Elling Trias <Master of Cheese>
						{ "i", 5960 },	-- Sealed Note to Watcher Backus
					},
					["sourceQuest"] = 1242,	-- The Missing Diplomat (3/17)
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1244, {	-- The Missing Diplomat (5/17)
					["qg"] = 840,	-- Watcher Backus
					["sourceQuest"] = 1243,	-- The Missing Diplomat (4/17)
					["coord"] = { 73.21, 38.81, DUSKWOOD },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Docket
							["providers"] = {
								{ "o", 21052 },	-- Defias Strongbox
								{ "i", 5947 },	-- Defias Docket
							},
							["coord"] = { 24.0, 72.1, DUSKWOOD },
						}),
					},
				}),
				q(1245, {	-- The Missing Diplomat (6/17)
					["providers"] = {
						{ "n", 840 },	-- Watcher Backus
						{ "i", 5947 },	-- Defias Docket
					},
					["sourceQuest"] = 1244,	-- The Missing Diplomat (5/17)
					["coord"] = { 73.21, 38.81, DUSKWOOD },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1246, {	-- The Missing Diplomat (7/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 1245,	-- The Missing Diplomat (6/17)
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1447, {	-- The Missing Diplomat (8/17)
					["qg"] = 4961,	-- Dashel Stonefist
					["sourceQuest"] = 1246,	-- The Missing Diplomat (7/17)
					["description"] = "Dashel Stonefist will spawn 2 level 26 adds to fight alongside him.",
					-- #if AFTER WRATH
					["coord"] = { 74.3, 59.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1247, {	-- The Missing Diplomat (9/17)
					["qg"] = 4961,	-- Dashel Stonefist
					["sourceQuest"] = 1447,	-- The Missing Diplomat (8/17)
					-- #if AFTER WRATH
					["coord"] = { 74.3, 59.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1248, {	-- The Missing Diplomat (10/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 1247,	-- The Missing Diplomat (9/17)
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(46728, {	-- The Nation of Kul Tiras
					["qg"] = 120756,	-- Anduin Wyrnn
					["sourceQuest"] = 46727,	-- Tides of War
					["coord"] = { 85.0, 32.4, STORMWIND_CITY },
					["timeline"] = { "added 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59641, {	-- The Nation of Kul Tiras
					["qg"] = 165395,	-- Anduin Wrynn
					["sourceQuest"] = 58983,	-- Battle for Azeroth: Tides of War
					["coord"] = { 85.8, 31.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_9_0_1 },
				}),
				q(27072, {	-- The Old Barracks
					["qg"] = 50049,	-- Jack Bauden <SI:7 Agent>
					["sourceQuest"] = 28807,	-- Expert Opinion
					["coord"] = { 81.2, 63.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2758, {	-- The Origins of Smithing
					["qg"] = 7798,	-- Hank the Hammer
					-- #if AFTER WRATH
					["coord"] = { 63.0, 36.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 56, 16, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["cost"] = { { "i", 6040, 6 } },	-- Golden Scale Bracers
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9367, {	-- Plans: Golden Scale Gauntlets (RECIPE!)
							["timeline"] = { "removed 4.0.3" },
							-- #if BEFORE 4.0.3
							["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
							-- #endif
						}),
					},
				}),
				q(543, {	-- The Perenolde Tiara
					["qg"] = 2285,	-- Count Remington Ridgewell
					-- #if AFTER CATA
					["coord"] = { 81.6, 34.1, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 76.9, 47.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 74, 30, STORMWIND_CITY },
					-- #endif
					-- #if AFTER CATA
					["maps"] = { HILLSBRAD_FOOTHILLS },
					-- #else
					["maps"] = { ALTERAC_MOUNTAINS },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(30, 30, 7),
					["groups"] = {
						objective(1, {	-- 0/1 Perenolde Tiara
							["provider"] = { "i", 3684 },	-- Perenolde Tiara
							-- #if AFTER CATA
							["coord"] = { 45.0, 24.5, HILLSBRAD_FOOTHILLS },
							-- #else
							["coord"] = { 39.6, 52.8, ALTERAC_MOUNTAINS },
							-- #endif
							["cr"] = 2417,	-- Grel'borg the Miser
						}),
					},
				}),
				q(58675, {	-- The Price of Peace
					["qg"] = 162178,	-- Master Mathias Shaw
					["sourceQuest"] = 58674,	-- A Gathering of Champions
					["coord"] = { 53.2, 15.0, STORMWIND_CITY },
					["timeline"] = { "added 8.3.0" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2998, {	-- The Tome of Divinity (1a/10)
					["qg"] = 927,	-- Brother Wilhelm
					["altQuests"] = {
						3681,	-- The Tome of Divinity (1b/10)
						1787,	-- The Tome of Divinity (8)
					},
					["coord"] = { 41, 66, ELWYNN_FOREST },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(3681, {	-- The Tome of Divinity (1b/10)
					["qg"] = 5149,	-- Brandur Ironhammer
					["altQuests"] = {
						2998,	-- The Tome of Divinity (1a/10)
						1787,	-- The Tome of Divinity (8)
					},
					["coord"] = { 23.4, 6.2, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1641, {	-- The Tome of Divinity (2/10)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuests"] = {
						2998,	-- The Tome of Divinity (1a/10)
						3681,	-- The Tome of Divinity (1b/10)
					},
					["altQuests"] = { 1787 },	-- The Tome of Divinity (8)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1642, {	-- The Tome of Divinity (3/10)
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6775 },	-- Tome of Divinity
					},
					["sourceQuest"] = 1641,	-- The Tome of Divinity (2/10)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1643, {	-- The Tome of Divinity (4/10)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1642,	-- The Tome of Divinity (3/10)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1644, {	-- The Tome of Divinity (5/10)
					["qg"] = 6174,	-- Stephanie Turner
					["sourceQuest"] = 1643,	-- The Tome of Divinity (4/10)
					-- #if AFTER WRATH
					["coord"] = { 63.8, 72.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 57, 61.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1780, {	-- The Tome of Divinity (6/10)
					["qg"] = 6174,	-- Stephanie Turner
					["sourceQuest"] = 1644,	-- The Tome of Divinity (5/10)
					-- #if AFTER WRATH
					["coord"] = { 63.8, 72.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 57, 61.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1781, {	-- The Tome of Divinity (7/10)
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6866 },	-- Symbol of Life
					},
					["sourceQuest"] = 1780,	-- The Tome of Divinity (6/10)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1786, {	-- The Tome of Divinity (8/10)
					["qg"] = 6173,	-- Gazin Tenorm
					["sourceQuest"] = 1781,	-- The Tome of Divinity (7/10)
					-- #if AFTER WRATH
					["coord"] = { 49.5, 44.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 26.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					["groups"] = {
						q(1790, {	-- The Symbol of Life
							["qg"] = 6171,	-- Duthorian Rall
							-- #if AFTER WRATH
							["coord"] = { 50.5, 47.5, STORMWIND_CITY },
							-- #else
							["coord"] = { 39.8, 30.8, STORMWIND_CITY },
							-- #endif
							["timeline"] = { "removed 4.0.3" },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Symbol of Life
									["questID"] = 1786,	-- The Tome of Divinity (8/10)
									["provider"] = { "i", 6866 },	-- Symbol of Life
								}),
							},
						}),
					},
				}),
				q(1787, {	-- The Tome of Divinity (9/10)
					["qg"] = 6172,	-- Henze Faulk
					["sourceQuest"] = 1786,	-- The Tome of Divinity (8/10)
					["coord"] = { 72.6, 51.6, ELWYNN_FOREST },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Script
							["provider"] = { "i", 6846 },	-- Defias Script
							["cr"] = 474,	-- Defias Rogue Wizard
						}),
					},
				}),
				q(1788, {	-- The Tome of Divinity (10/10)
					["qg"] = 6173,	-- Gazin Tenorm
					["sourceQuest"] = 1787,	-- The Tome of Divinity (9/10)
					-- #if AFTER WRATH
					["coord"] = { 49.5, 44.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 26.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					-- #if BEFORE 4.0.1
					["groups"] = {
						--recipe(7328),	-- Redemption [Rank 1]
					},
					-- #endif
				}),
				q(4485, {	-- The Tome of Nobility (Stormwind City)
					["qg"] = 5491,	-- Arthur the Faithful <Paladin Trainer>
					-- #if AFTER WRATH
					["coord"] = { 49.6, 49.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.7, 32.9, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 2.4.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4486, {	-- The Tome of Nobility (Ironforge)
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.6, 6.6, IRONFORGE },
					["timeline"] = { "removed 2.4.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(1661, {	-- The Tome of Nobility
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuests"] = {
						4485,	-- The Tome of Nobility (Stormwind City)
						4486,	-- The Tome of Nobility (Ironforge)
					},
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 2.4.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 40,
					-- #if BEFORE 2.4.3
					["groups"] = {
						mount(13819),	-- Summon Warhorse
					},
					-- #endif
				}),
				q(1794, {	-- The Tome of Valor [Dwarf]
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.6, 6.4, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = { DWARF },
					["repeatable"] = true,
					["lvl"] = 20,
				}),
				q(1793, {	-- The Tome of Valor [Human]
					["qg"] = 6171,	-- Duthorian Rall
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = { HUMAN },
					["repeatable"] = true,
					["lvl"] = 20,
				}),
				q(1649, {	-- The Tome of Valor (1/4)
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6776 },	-- Tome of Valor
					},
					["sourceQuests"] = {
						1794,	-- The Tome of Valor [Dwarf]
						1793,	-- The Tome of Valor [Human]
					},
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1650, {	-- The Tome of Valor (2/4)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1649,	-- The Tome of Valor (1/4)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1651, {	-- The Tome of Valor (3/4)
					["qg"] = 6182,	-- Daphne Stilwell
					["sourceQuest"] = 1650,	-- The Tome of Valor (2/4)
					["coord"] = { 42.4, 88.4, WESTFALL },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1652, {	-- The Tome of Valor (4/4)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1651,	-- The Tome of Valor (3/4)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
					["groups"] = {
						-- #if BEFORE 4.0.3
						recipe(5502),	-- Sense Undead
						-- #endif
						i(9607, {	-- Bastion of Stormwind
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(2607, {	-- The Touch of Zanzil (1/3)
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 2359,	-- Klaven's Tower
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(2608, {	-- The Touch of Zanzil (2/3)
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2607,	-- The Touch of Zanzil (1/3)
					-- #if AFTER WRATH
					["coord"] = { 80.1, 69.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- Diagnosis Complete
							["description"] = "Type /lay to lie down to be examined.",
						}),
					},
				}),
				q(2609, {	-- The Touch of Zanzil (3/3)
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2608,	-- The Touch of Zanzil (2/3)
					-- #if AFTER WRATH
					["coord"] = { 80.1, 69.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 3372, 1 },	-- Leaded Vial
						{ "i", 4371, 1 },	-- Bronze Tube
					},
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Simple Wildflowers
							["provider"] = { "i", 3421 },	-- Simple Wildflowers
							["coord"] = { 64.4, 60.8, STORMWIND_CITY },
							["crs"] = {
								1302,	-- Bernard Gump <Florist>
								1303,	-- Felicia Gump <Herbalism Supplies>
							},
						}),
						objective(4, {	-- 0/1 Spool of Light Chartreuse Silk Thread
							["provider"] = { "i", 8431 },	-- Spool of Light Chartreuse Silk Thread
							["coord"] = { 39.9, 46.3, STORMWIND_CITY },
						}),
						i(8432, {	-- Eau de Mixilpixil
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(26997, {	-- The Usual Suspects
					["qg"] = 2439,	-- Major Samuelson <Stormwind City Guard>
					["sourceQuest"] = 26977,	-- Twilight Investigation
					["coord"] = { 85.1, 31.0, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7641, {	-- The Work of Grimand Elmore
					["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					["sourceQuest"] = 7640,	-- Exorcising Terrordale
					["coord"] = { 37.6, 32.6, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(26536, {	-- Thunder Falls
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(46727, {	-- Tides of War
					["qgs"] = {
						142930,	-- Halford Wyrmbane
						-- #if AFTER 9.0.2
						49748,	-- Hero's Herald
						-- #endif
					},
					["coord"] = { 27.6, 21.2, STORMWIND_CITY },
					["timeline"] = { "added 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(42782, {	-- To Be Prepared
					["qg"] = 107934,	-- Recruiter Lee
					["sourceQuest"] = 40519,	-- The Legion Returns
					["coord"] = { 36.8, 43.1, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(138450, {	-- Signet of Stormwind
							["timeline"] = { "added 7.0.3" },
						}),
					},
				}),
				q(29102, {	-- To Fort Livingston
					["qg"] = 52654,	-- Bwemba
					["sourceQuest"] = 29100,	-- Bwemba's Spirit [A]
					["coord"] = { 25.9, 29.2, STORMWIND_CITY },
					["timeline"] = { "added 4.1.0.13682" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7639, {	-- To Show Due Judgment
					["providers"] = {
						{ "n", 11406 },	-- High Priest Rohan <Priest Trainer>
						{ "i", 18819 },	-- Rohan's Exorcism Censer
					},
					["sourceQuest"] = 7637, -- Emphasis on Sacrifice
					["coord"] = { 25, 8.2, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(28827, {	-- To the Depths
					["qg"] = 45226,	-- Naraat the Earthspeaker
					["sourceQuest"] = 28826,	-- The Eye of the Storm
					["coord"] = { 74.4, 18.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1449, {	-- To The Hinterlands
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["sourceQuest"] = 1448,	-- In Search of The Temple
					-- #if AFTER WRATH
					["coord"] = { 69.5, 40.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 64.3, 20.7, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(26977, {	-- Twilight Investigation
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["sourceQuest"] = 26960,	-- My Son, the Prince
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28238, {	-- Twilight Shores (1/2)
					["qgs"] = {
						1750,	-- Grand Admiral Jes-Tereth
						29611,	-- King Varian Wrynn
						107574,	-- Anduin Wrynn
					},
					["sourceQuest"] = 28716,	-- Hero's Call: Twilight Highlands!
					["coord"] = { 85.6, 31.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28832, {	-- Twilight Shores (2/2)
					["qg"] = 44806,	-- Fargo Flintlocke
					["sourceQuest"] = 28238,	-- Twilight Shores (1/2)
					["coord"] = { 26.2, 47.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(47222, {	-- Two If By Sea
					["qg"] = 121754,	-- Vereesa Windrunner
					["sourceQuests"] = {
						47221,	-- The Hand of Fate
						48506,	-- The Hand of Fate
					},
					["coord"] = { 21.4, 30.4, STORMWIND_CITY },
					["timeline"] = { "added 7.3.0" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27060, {	-- Unholy Cow
					["qg"] = 44807,	-- Farmer Wollerton
					["sourceQuest"] = 27044,	-- Peasant Problems
					["coord"] = { 52.0, 5.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1938, {	-- Ur's Treatise on Shadow Magic
					["qg"] = 5694,	-- High Sorcerer Andromath
					["sourceQuest"] = 1939,	-- High Sorcerer Andromath
					-- #if AFTER WRATH
					["coord"] = { 48.7, 87.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Ur's Treatise on Shadow Magic
							["provider"] = { "i", 7266 },	-- Ur's Treatise on Shadow Magic
							["coord"] = { 79.0, 37.6, REDRIDGE_MOUNTAINS },
							["description"] = "Located in one of the bookshelves at the top of the tower.",
						}),
					},
				}),
				q(60969, {	-- Warlords of Draenor: Onward to Adventure in Draenor
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),

				-- #if ANYCLASSIC
				q(65602, {	-- What Is Love?
					["qg"] = 6122,	-- Gakin the Darkbinder
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ASHENVALE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Wooden Figurine
							["providers"] = {
								{ "i", 190309 },	-- Wooden Figurine
								{ "o", 375544 },	-- Wooden Figurine
								{ "o", createCustomObject({	-- Archaeologist's Cart [Couldn't find the proper objectID, so I faked it.]
									readable = "Archaeologist's Cart",
									text = {
										en = "Archaeologist's Cart",
										-- TODO: Find the proper translation so it appears on the tooltip.
										--[[es = "",
										de = "",
										fr = "",
										it = "",
										pt = "",
										ru = "",
										ko = "",
										cn = "",]]--
									},
								}) },
							},
							["coord"] = { 26, 22, ASHENVALE },
							["cost"] = {{ "i", 190308, 1 }},	-- Burning Torch
						}),
						i(190308, {	-- 0/1 Burning Torch
							["providers"] = {
								{ "i", 190307 },	-- Unlit Torch
								{ "o", createCustomObject({	-- Unlit Torch [Couldn't find the proper objectID, so I faked it.]
									readable = "Unlit Torch",
									model = 201129,
									icon = 135434,
									text = {
										en = "Unlit Torch",
										es = "Antorcha apagada",
										de = "Nicht angezündete Fackel",
										fr = "Torche éteinte",
										it = "Unlit Torch",
										pt = "Tocha Apagada",
										ru = "Незажженный факел",
										ko = "불을 붙이지 않은 횃불",
										cn = "未点燃的火把",
									},
								}) },
							},
							["coords"] = {
								{ 26.79, 22.42, ASHENVALE },
								{ 15, 31, ASHENVALE },
							},
							["description"] = "You can light the torch using a campfire. If you don't have the cooking skill (or mats), you can go to the campfire near Talen at 15,31. Once lit, toss the torch on to the Archaeologist's Cart.",
						}),
					},
				}),
				-- #endif

				q(58502, {	-- Where the Heart Is
					["qg"] = 154532,	-- Magni Bronzebeard <The Speaker>
					["sourceQuest"] = 58498,	-- Return of the Warrior King
					["coord"] = { 87.5, 35.5, STORMWIND_CITY },
					["timeline"] = { "added 8.3.0.33062" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(332, {	-- Wine Shop Advert
					["providers"] = {
						{ "n", 1432 },	-- Renato Gallina
						{ "i", 2722 },	-- Wine Ticket
					},
					-- #if BEFORE CATA
					["sourceQuest"] = 61,	-- Shipment to Stormwind
					-- #endif
					-- #if AFTER LEGION
					["coord"] = { 63.8, 73.4, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 63.8, 73.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 57.0, 63.4, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2723),	-- Bottle of Dalaran Noir
					},
				}),
				q(60962, {	-- Wrath of the Lich King: Onward to Adventure in Northrend
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["sourceQuest"] = 60096,	-- Wrath of the Lich King: To Northrend!
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(60096, {	-- Wrath of the Lich King: To Northrend!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5" },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(397, {	-- You Have Served Us Well
					["qg"] = 1435,	-- Zardeth of the Black Claw
					["sourceQuest"] = 336,	-- A Noble Brew (2/2)
					-- #if AFTER WRATH
					["coord"] = { 40.1, 85.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 26.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["lvl"] = 25,
					["groups"] = {
						i(3556, {	-- Dread Mage Hat
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78297, {	-- You've Got Yourself A Deal [A]
					["providers"] = {
						{ "n",   8383 },	-- Master Wood
						{ "i", 211448 },	-- Signed Procurement Contract
					},
					["sourceQuest"] = 78287,	-- Let Me Make You An Offer [A]
					["coord"] = { 79.2, 47.6, STORMWIND_CITY },
					["timeline"] = { "removed 2.0.1" },
					["maps"] = { THE_BARRENS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(210210),	-- Grizzwerks Defense Industries Founder's Certificate
					},
				})),
				-- #endif
			}),
			n(RARES, {
				n(130828, {	-- Gordon MacKellar
					["coord"] = { 43.0, 78.0, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5.25692" },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(134831, {	-- Doomsayer's Robes (TOY!)
							["timeline"] = { "added 7.0.3.22248" },
						}),
					},
				}),
				n(3581, {	-- Sewer Beast
					-- #if AFTER CATA
					["coords"] = {
						{ 48.4, 61.8, STORMWIND_CITY },
						{ 54.6, 65.6, STORMWIND_CITY },
						{ 56.0, 72.8, STORMWIND_CITY },
						{ 58.4, 79.2, STORMWIND_CITY },
						{ 58.4, 42.0, STORMWIND_CITY },
						{ 62.8, 51.8, STORMWIND_CITY },
						{ 71.0, 48.8, STORMWIND_CITY },
						{ 67.0, 55.0, STORMWIND_CITY },
						{ 66.0, 61.2, STORMWIND_CITY },
						{ 68.8, 64.2, STORMWIND_CITY },
						{ 70.6, 68.0, STORMWIND_CITY },
					},
					-- #else
					["coords"] = {
						{ 49.8, 22.6, STORMWIND_CITY },
						{ 53.8, 30.6, STORMWIND_CITY },
						{ 66.8, 32.2, STORMWIND_CITY },
						{ 62.6, 38.0, STORMWIND_CITY },
						{ 66.6, 57.0, STORMWIND_CITY },
						{ 62.4, 50.2, STORMWIND_CITY },
						{ 35.2, 42.4, STORMWIND_CITY },
						{ 38.6, 47.4, STORMWIND_CITY },
						{ 31.4, 64.4, STORMWIND_CITY },
						{ 34.2, 60.2, STORMWIND_CITY },
						{ 50.0, 69.6, STORMWIND_CITY },
						{ 47.2, 61.6, STORMWIND_CITY },
					},
					-- #endif
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(204070, {	-- Soboz
					-- TODO: Try to get an objectID for this.
					--["provider"] = { "o",  },	-- Summoning Circle
					["coord"] = { 25.8, 76.2, STORMWIND_CITY },
					["cost"] = {
						{ "i", 204905, 1 },	-- Ominous Tome
						{ "i", 204906, 1 },	-- Gnoll Blood
						{ "i", 204907, 1 },	-- Wolf Jawbone
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(204912, {	-- Rune of Grace
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(425477),	-- Engrave Pants - Demonic Grace
							},
						}),
					},
				})),
				-- #endif
				n(112958, {	-- Soulare of Andorhal
					["description"] = "Emote |cFFFFFFFF/tired|r at him to get the toy.  Horde players can do this, too!",
					["coord"] = { 38.2, 64.6, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.22290" },
					["groups"] = {
						i(117573, {	-- Wayfarer's Bonfire (TOY!)
							["timeline"] = { "added 6.0.1.18663" },
						}),
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(205864, {	-- Charred Note
					["provider"] = { "o", 402215 },	-- Charred Note
					["questID"] = 75940,	-- Charred Note HQT
					["sourceQuest"] = 75939,	-- Brother Romulus HQT
					["coord"] = { 33.0, 24.75, STORMWIND_CITY },
					["maps"] = { DUSKWOOD },
					["timeline"] = { "removed 2.0.1" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205897, {	-- Rune of Martyrdom
					["provider"] = { "n", 205153 },	-- Ada Gelhardt
					["questID"] = 75969,	-- Ada Gelhardt HQT
					["sourceQuest"] = 75940,	-- Charred Note HQT
					["coord"] = { 4.3, 28.25, DUSKWOOD },
					["timeline"] = { "removed 2.0.1" },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						recipe(410015),	-- Engrave Chest - Seal of Martyrdom
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204174, {	-- Rune of Precision
					["provider"] = { "o", 386777 },	-- Dusty Chest
					["description"] = "Looting the chest will spawn 2 muggers. Beware!",
					["coord"] = { 61.9, 29.3, STORMWIND_CITY },
					["timeline"] = { "removed 2.0.1" },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400081),	-- Engrave Pants - Between the Eyes
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(69334, {	-- Adherent Hanjun <Tushui Quartermaster>
					["coord"] = { 68.0, 17.0, STORMWIND_CITY },
					["timeline"] = { "added 5.2.0.16577" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(92071, {	-- Tushui Satchel
							["timeline"] = { "added 5.1.0.16309" },
						}),
						i(83079, {	-- Tushui Tabard
							["timeline"] = { "added 5.0.1.15544" },
						}),
					},
				}),
				n(1347, {	-- Alexandra Bolero <Tailoring Supplies>
					-- #if AFTER WRATH
					["coord"] = { 53.2, 81.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 43.4, 74.0, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(COMMON_CATACLYSM_TAILORING_RECIPES, {
						i(6274, {	-- Pattern: Blue Overalls
							["isLimited"] = true,
						}),
						i(10325, {	-- Pattern: White Wedding Dress
							["isLimited"] = true,
						}),
					}),
				}),
				-- #if AFTER 10.0.5
				n(1294, {	-- Aldric Moore <Mail Armor Merchant>
					["coord"] = { 62.2, 67.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = sharedData({ ["timeline"] = { ADDED_10_0_5 } }, {
						i(847),	-- Chainmail Armor
						i(1845),	-- Chainmail Belt
						i(849),	-- Chainmail Boots
						i(1846),	-- Chainmail Bracers
						i(850),	-- Chainmail Gloves
						i(848),	-- Chainmail Pants
						i(2392),	-- Light Mail Armor
						i(2393),	-- Light Mail Belt
						i(2395),	-- Light Mail Boots
						i(2396),	-- Light Mail Bracers
						i(2397),	-- Light Mail Gloves
						i(2394),	-- Light Mail Leggings
						i(129),	-- Rugged Trapper's Boots
						i(147),	-- Rugged Trapper's Pants
						i(58232),	-- Rugged Trapper's Vest
						i(1853),	-- Scalemail Belt
						i(287),	-- Scalemail Boots
						i(1852),	-- Scalemail Bracers
						i(718),	-- Scalemail Gloves
						i(286),	-- Scalemail Pants
						i(285),	-- Scalemail Vest
						i(23348),	-- Scout's Boots
						i(23344),	-- Scout's Pants
						i(58240),	-- Scout's Vest

						-- SHAMAN --
						i(52540),	-- Primal Boots
						i(52539),	-- Primal Pants
						i(52535),	-- Primal Pants
						i(52538),	-- Primal Robe
						i(52534),	-- Primal Robe
					}),
				}),
				-- #endif
				n(175051, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } }, {	-- Alice Fischer <Corrupted Aspirant Vendor>
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						n(PVP_ASPIRANT, {
							n(WEAPONS, {
								i(172880, {	-- Corrupted Aspirant's Chopper (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(174013, {	-- Corrupted Aspirant's Claw (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172878, {	-- Corrupted Aspirant's Cleaver (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(174015, {	-- Corrupted Aspirant's Decapitator (A)
									["cost"] = { { "c", 1792, 1750 } },	-- 1750x Honor
								}),
								i(172872, {	-- Corrupted Aspirant's Gavel (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172884, {	-- Corrupted Aspirant's Greatsword (A)
									["cost"] = { { "c", 1792, 1750 } },	-- 1750x Honor
								}),
								i(172870, {	-- Corrupted Aspirant's Longbow (A)
									["cost"] = { { "c", 1792, 1750 } },	-- 1750x Honor
								}),
								i(172882, {	-- Corrupted Aspirant's Pike (A)
									["cost"] = { { "c", 1792, 1750 } },	-- 1750x Honor
								}),
								i(172874, {	-- Corrupted Aspirant's Pummeler (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172866, {	-- Corrupted Aspirant's Reprieve (A)
									["cost"] = { { "c", 1792, 425 } },	-- 425x Honor
								}),
								i(174017, {	-- Corrupted Aspirant's Rifle (A)
									["cost"] = { { "c", 1792, 1750 } },	-- 1750x Honor
								}),
								i(172859, {	-- Corrupted Aspirant's Shanker (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172868, {	-- Corrupted Aspirant's Shield Wall (A)
									["cost"] = { { "c", 1792, 425 } },	-- 425x Honor
								}),
								i(172876, {	-- Corrupted Aspirant's Slicer (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(174011, {	-- Corrupted Aspirant's Spellblade (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172858, {	-- Corrupted Aspirant's Stabber (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172864, {	-- Corrupted Aspirant's Staff (A)
									["cost"] = { { "c", 1792, 1750 } },	-- 1750x Honor
								}),
								i(172862, {	-- Corrupted Aspirant's Wand (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(174019, {	-- Corrupted Aspirant's War Staff (A)
									["cost"] = { { "c", 1792, 1750 } },	-- 1750x Honor
								}),
								i(172886, {	-- Corrupted Aspirant's Warglaive (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
							}),
							filter(CLOTH, {
								i(172837, {	-- Corrupted Aspirant's Silk Cord (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172840, {	-- Corrupted Aspirant's Silk Cuffs (A)
									["cost"] = { { "c", 1792, 525 } },	-- 525x Honor
								}),
								i(172823, {	-- Corrupted Aspirant's Silk Gloves (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172825, {	-- Corrupted Aspirant's Silk Hood (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172829, {	-- Corrupted Aspirant's Silk Leggings (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172834, {	-- Corrupted Aspirant's Silk Mantle (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172813, {	-- Corrupted Aspirant's Silk Robe (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172818, {	-- Corrupted Aspirant's Silk Treads (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
							}),
							filter(LEATHER, {
								i(172839, {	-- Corrupted Aspirant's Leather Belt (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172843, {	-- Corrupted Aspirant's Leather Bindings (A)
									["cost"] = { { "c", 1792, 525 } },	-- 525x Honor
								}),
								i(172820, {	-- Corrupted Aspirant's Leather Boots (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172821, {	-- Corrupted Aspirant's Leather Gloves (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172827, {	-- Corrupted Aspirant's Leather Helm (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172831, {	-- Corrupted Aspirant's Leather Legguards (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172832, {	-- Corrupted Aspirant's Leather Spaulders (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172816, {	-- Corrupted Aspirant's Leather Tunic (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
							}),
							filter(MAIL, {
								i(172842, {	-- Corrupted Aspirant's Chain Armbands (A)
									["cost"] = { { "c", 1792, 525 } },	-- 525x Honor
								}),
								i(172815, {	-- Corrupted Aspirant's Chain Armor (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172824, {	-- Corrupted Aspirant's Chain Gauntlets (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172826, {	-- Corrupted Aspirant's Chain Helm (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172830, {	-- Corrupted Aspirant's Chain Leggings (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172819, {	-- Corrupted Aspirant's Chain Sabatons (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172835, {	-- Corrupted Aspirant's Chain Spaulders (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172838, {	-- Corrupted Aspirant's Chain Waistguard (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
							}),
							filter(PLATE, {
								i(172841, {	-- Corrupted Aspirant's Plate Armguards (A)
									["cost"] = { { "c", 1792, 525 } },	-- 525x Honor
								}),
								i(172814, {	-- Corrupted Aspirant's Plate Chestpiece (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172822, {	-- Corrupted Aspirant's Plate Gauntlets (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172836, {	-- Corrupted Aspirant's Plate Girdle (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172812, {	-- Corrupted Aspirant's Plate Helm (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172828, {	-- Corrupted Aspirant's Plate Legguards (A)
									["cost"] = { { "c", 1792, 875 } },	-- 875x Honor
								}),
								i(172833, {	-- Corrupted Aspirant's Plate Pauldrons (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172817, {	-- Corrupted Aspirant's Plate Warboots (A)
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
							}),
							n(FINGER, {
								i(172845, {	-- Corrupted Aspirant's Band
									["cost"] = { { "c", 1792, 525 } },	-- 525x Honor
								}),
								i(172844, {	-- Corrupted Aspirant's Ring
									["cost"] = { { "c", 1792, 525 } },	-- 525x Honor
								}),
							}),
							n(TRINKET, {
								i(172849, {	-- Corrupted Aspirant's Badge
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172846, {	-- Corrupted Aspirant's Bauble
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172847, {	-- Corrupted Aspirant's Emblem
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(172848, {	-- Corrupted Aspirant's Insignia
									["cost"] = { { "c", 1792, 700 } },	-- 700x Honor
								}),
								i(184058, {	-- Corrupted Aspirant's Medallion
									["cost"] = { { "g", 8000000 } },	-- 800g
								}),
								i(184059, {	-- Corrupted Aspirant's Relentless Brooch
									["cost"] = { { "g", 8000000 } },	-- 800g
								}),
								i(184060, {	-- Corrupted Aspirant's Sigil of Adaptation
									["cost"] = { { "g", 8000000 } },	-- 800g
								}),
							}),
						}),
					},
				})),
				n(1315, {	-- Allan Hafgan
					["coord"] = { 52.9, 75.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2527),	-- Battle Staff
						i(2535),	-- War Staff
					},
				}),
				-- #if AFTER 10.0.5
				n(53641, {	-- Allison Potts <Heavy Armor Merchant>
					["coord"] = { 64.8, 48.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = sharedData({ ["timeline"] = { ADDED_10_0_5 } }, {
						i(2419),	-- Augmented Chain Belt
						i(2420),	-- Augmented Chain Boots
						i(2421),	-- Augmented Chain Bracers
						i(2422),	-- Augmented Chain Gloves
						i(3891),	-- Augmented Chain Helm
						i(2418),	-- Augmented Chain Leggings
						i(2417),	-- Augmented Chain Vest
						i(2424),	-- Brigandine Belt
						i(2426),	-- Brigandine Boots
						i(2427),	-- Brigandine Bracers
						i(2428),	-- Brigandine Gloves
						i(3894),	-- Brigandine Helm
						i(2425),	-- Brigandine Leggings
						i(2423),	-- Brigandine Vest
						i(2451),	-- Crested Heater Shield
						i(2448),	-- Heavy Pavise
						i(2446),	-- Kite Shield
						i(17189),	-- Metal Buckler
						i(17190),	-- Ornate Buckler
						i(8094),	-- Platemail Armor
						i(8088),	-- Platemail Belt
						i(8089),	-- Platemail Boots
						i(8090),	-- Platemail Bracers
						i(8091),	-- Platemail Gloves
						i(8092),	-- Platemail Helm
						i(8093),	-- Platemail Leggings
						i(2148),	-- Polished Scale Belt
						i(2149),	-- Polished Scale Boots
						i(2150),	-- Polished Scale Bracers
						i(2151),	-- Polished Scale Gloves
						i(2152),	-- Polished Scale Leggings
						i(2153),	-- Polished Scale Vest
						i(17192),	-- Reinforced Targe

						-- Now any class and race can buy this
						-- PALADIN --
						i(43),	-- Squire's Boots
						i(52533),	-- Squire's Boots
						i(44),	-- Squire's Pants
						i(23477),	-- Squire's Pants
						i(58233),	-- Squire's Vest
						i(58242),	-- Squire's Vest

						-- WARRIOR --
						i(40),	-- Recruit's Boots
						i(6122),	-- Recruit's Boots
						i(23475),	-- Recruit's Boots
						i(39),	-- Recruit's Pants
						i(6121),	-- Recruit's Pants
						i(23474),	-- Recruit's Pants
						i(58231),	-- Recruit's Vest
						i(58244),	-- Recruit's Vest
						i(58243),	-- Recruit's Vest
					}),
				}),
				-- #endif
				n(1312, {	-- Ardwyn Cailen
					["coord"] = { 52.8, 75.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5239),	-- Blackbone Wand
						i(5210),	-- Burning Wand
						i(5236),	-- Combustible Wand
						i(5211),	-- Dusk Wand
						i(5209),	-- Gloom Wand
						i(5347),	-- Pestilent Wand
						i(5238),	-- Pitchwood Wand
						i(5208),	-- Smoldering Wand
					},
				}),
				-- #if AFTER 8.0.1
				n(55285, {	-- Astrid Langstrump <Mountain Horse Handler>
					["description"] = "Appears in Stormwind after War of Thorns.",
					["coord"] = { 52.4, 8.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(73838, {	-- Mountain Horse (MOUNT!)
							["timeline"] = { "added 4.3.0.14732" },
						}),
						i(73839, {	-- Swift Mountain Horse (MOUNT!)
							["timeline"] = { "added 4.3.0.14732" },
						}),
					},
				}),
				-- #endif
				n(1349, {	-- Agustus Moulaine
					["coord"] = { 53.6, 57.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2419,	-- Augmented Chain Belt
						2420,	-- Augmented Chain Boots
						2421,	-- Augmented Chain Bracers
						2422,	-- Augmented Chain Gloves
						3891,	-- Augmented Chain Helm
						2418,	-- Augmented Chain Leggings
						2417,	-- Augmented Chain Vest
						2424,	-- Brigandine Belt
						2426,	-- Brigandine Boots
						2427,	-- Brigandine Bracers
						2428,	-- Brigandine Gloves
						3894,	-- Brigandine Helm
						2425,	-- Brigandine Leggings
						2423,	-- Brigandine Vest
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						8094,	-- Platemail Armor
						8088,	-- Platemail Belt
						8089,	-- Platemail Boots
						8090,	-- Platemail Bracers
						8091,	-- Platemail Gloves
						8092,	-- Platemail Helm
						8093,	-- Platemail Leggings
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						17192,	-- Reinforced Targe
					}},
				}),
				n(1302, {	-- Bernard Gump
					["coord"] = { 69.6, 71.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3422),	-- Beautiful Wildflowers
						i(3420),	-- Black Rose
						i(3424),	-- Bouquet Of Black Roses
						i(3423),	-- Bouquet Of White Roses
						i(3419),	-- Red Rose
						i(3421),	-- Simple Wildflowers
					},
				}),
				n(1319, {	-- Bryan Cross
					["coord"] = { 69.6, 57.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						17192,	-- Reinforced Targe
					}},
					["groups"] = {
						i(2445),	-- Large Metal Shield
						i(17188),	-- Ringed Buckler
					},
				}),
				n(69975, {	-- Captain Dirgehammer <Cataclysmic Gladiator>
					["coord"] = { 75.0, 67.5, STORMWIND_CITY },
					["timeline"] = { "added 5.2.0.16577" },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", CATA_TIER, SEASON_CATACLYSMIC, PVP_GLADIATOR },{"merge"},
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				-- 54661: Captain Dirgehammer <Cataclysmic Gladiator> (Cataclysmic?)
				-- 52546: Captain Dirgehammer <Conquest Quartermaster> (Ruthless?)
				-- 51254: Captain Dirgehammer <Conquest Quartermaster> (Vicious?)
				applyclassicphase(WRATH_PHASE_FOUR, n(34075, {	-- Captain Dirgehammer <Apprentice Armor Quartermaster> // Original S8 Vendor // Relentless Gladiator: Season 7 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_RELENTLESS, PVP_GLADIATOR },{ "pop" }},	-- Relentless Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_THREE, n(34074, {	-- Captain Dirgehammer <Apprentice Armor Quartermaster> // Original S7 Vendor // Furious Gladiator: Season 6 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_FURIOUS, PVP_GLADIATOR },{ "pop" }},	-- Furious Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_TWO, n(34073, {	-- Captain Dirgehammer <Apprentice Armor Quartermaster> // Original S6 Vendor // Deadly Gladiator: Season 5 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" }},	-- Deadly Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_ONE, n(32381, {	-- Captain Dirgehammer // Original S5 Vendor // Hateful Gladiator: Season 5 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_DEADLY, PRE_SEASON_HATEFUL },{ "pop" }},	-- Hateful Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				n(12777, {	-- Captain Dirgehammer <Armor Quartermaster>
					-- #if BEFORE TBC
					["description"] = "Found within the Champion's Hall.",
					-- #else
					["coord"] = { 75.0, 67.5, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 3.0.2.8970" },
					-- #if BEFORE TBC
					["sym"] = {	-- Grand Marshal Armor
						{"sub", "pvp_gear_base", CLASSIC_TIER, FACTION_HEADER_ALLIANCE },
						{ "pop" },
						{ "exclude", "headerID", WEAPONS },
						-- #if BEFORE WRATH
						{ "exclude", "f", TRINKET_F, NECK_F },
						-- #endif
					},
					-- #elseif BEFORE 3.0.2.8970
					["sym"] = {
						{"sub", "pvp_gear_base", TBC_TIER, SEASON_VENGEFUL, PVP_GLADIATOR }, { "finalize" },	-- Vengeful Gladiator's Set
						{"sub", "pvp_gear_base", TBC_TIER, SEASON_MERCILESS, PVP_GLADIATOR }, { "finalize" },	-- Merciless Gladiator's Set
						{"sub", "pvp_gear_base", TBC_TIER, SEASON_GLADIATOR, PVP_GLADIATOR }, { "finalize" },	-- Gladiator's Set
						{"sub", "pvp_gear_base", TBC_TIER, PVP_HONOR, FACTION_HEADER_ALLIANCE },{ "finalize" },	-- Honor Set
						{"merge"},
						{"pop"},
						{ "exclude", "headerID", WEAPONS, BACK },
						{ "exclude", "filterID", NECK_F, FINGER_F, RELICS_F, TRINKET_F },
						{"postprocess"},
					},
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				n(49877, {	-- Captain Lancy Revshon <Stormwind Quartermaster>
					["coord"] = { 67.6, 72.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(64902, {	-- Cape of Stormwind
							["timeline"] = { "added 4.0.1.12941" },
						}),
						i(64901, {	-- Mantle of Stormwind
							["timeline"] = { "added 4.0.1.12941" },
						}),
						i(64903, {	-- Shroud of Stormwind
							["timeline"] = { "added 4.0.1.12941" },
						}),
						i(67531, {	-- Stormwind Satchel
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(45574, {	-- Stormwind Tabard
							["timeline"] = { "added 3.1.0.9626" },
						}),
					},
				}),
				-- 34081: Captain O'Neal <Jewelcrafting Quartermaster> (Wrath season 4?)
				-- 34080: Captain O'Neal <Jewelcrafting Quartermaster> (Wrath season 3?)
				-- 34079: Captain O'Neal <Jewelcrafting Quartermaster> (Wrath season 2?)
				n(32379, {	-- Captain O'Neal <Jewelcrafting Quartermaster>
					["coord"] = { 75.0, 66.7, STORMWIND_CITY },
					["timeline"] = { "added 3.0.2.8970", "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						-- #if BEFORE 4.0.3
						-- Moves to Tiffany in Dalaran
						i(41563),	-- Design: Durable Huge Citrine [WRATH] / Design: Willful Huge Citrine [CATA+]
						-- #endif
						i(41564, {	-- Design: Empowered Huge Citrine [WRATH] / Design: Lucent Huge Citrine [CATA+]
							["timeline"] = { "removed 4.0.3" },
						}),
						-- #if BEFORE 4.0.3
						-- These move to Tiffany in Dalaran
						i(41565),	-- Design: Lucent Huge Citrine
						i(41575),	-- Design: Mysterious Shadow Crystal
						i(41559),	-- Design: Mystic Sun Crystal
						-- #endif
						i(41573, {	-- Design: Opaque Dark Jade [WRATH] / Design: Turbid Dark Jade [CATA+]
							["timeline"] = { "removed 4.0.3" },
						}),
						-- #if BEFORE 4.0.3
						-- These move to Tiffany in Dalaran
						i(41566),	-- Design: Resplendent Huge Citrine
						i(41569),	-- Design: Shattered Dark Jade
						i(41572),	-- Design: Steady Dark Jade
						i(41560),	-- Design: Stormy Chalcedony
						i(41570),	-- Design: Radiant Dark Jade [CATA+] / Design: Tense Dark Jade [WRATH]
						i(41571),	-- Design: Turbid Dark Jade
						-- #endif
						moh(1, i(28118, {	-- Brilliant Ornate Ruby
							["timeline"] = { "added 2.0.1.6180" },
						})),
						moh(1, i(28119, {	-- Smooth Ornate Dawnstone
							["timeline"] = { "added 2.0.1.6180" },
						})),
						moh(1, i(28120, {	-- Gleaming Ornate Dawnstone
							["timeline"] = { "added 2.0.1.6180", "removed 4.0.1" },
						})),
						moh(1, i(28123, {	-- Potent Ornate Topaz
							["timeline"] = { "added 2.0.1.6180" },
						})),
						moh(1, i(28362, {	-- Delicate Ornate Ruby
							["timeline"] = { "added 2.0.1.6180" },
						})),
						moh(1, i(28363, {	-- Deadly Ornate Topaz
							["timeline"] = { "added 2.0.1.6180" },
						})),
					}),
				}),
				n(12782, {	-- Captain O'Neal <Weapons Quartermaster>
					-- #if BEFORE WRATH
					["description"] = "Found within the Champion's Hall.",
					-- #endif
					["timeline"] = { "removed 3.0.2.8970" },
					-- #if BEFORE 3.0.2.8970
					["sym"] = {{"sub", "pvp_gear_base", CLASSIC_TIER, FACTION_HEADER_ALLIANCE, WEAPONS },{ "pop" }},	-- Grand Marshal Weapons
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				n(1291, {	-- Carla Granger <Cloth Armor Merchant>
					-- #if AFTER WRATH
					["coord"] = { 62.2, 67.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 55.0, 56.0, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16059),	-- Common Brown Shirt
						i(3428),	-- Common Grey Shirt
						i(16060),	-- Common White Shirt
						i(837),	-- Heavy Weave Armor
						i(3589),	-- Heavy Weave Belt
						i(3590),	-- Heavy Weave Bracers
						i(839),	-- Heavy Weave Gloves
						i(838),	-- Heavy Weave Pants
						i(840),	-- Heavy Weave Shoes
						i(3602),	-- Knitted Belt
						i(3603),	-- Knitted Bracers
						i(793),	-- Knitted Gloves
						i(794),	-- Knitted Pants
						i(792),	-- Knitted Sandals
						i(795),	-- Knitted Tunic
						i(3597),	-- Thick Cloth Belt
						i(3598),	-- Thick Cloth Bracers
						i(203),	-- Thick Cloth Gloves
						i(201),	-- Thick Cloth Pants
						i(202),	-- Thick Cloth Shoes
						i(200),	-- Thick Cloth Vest
						-- #if AFTER 10.0.5
						-- Now any class and race can buy this
						-- MAGE --
						i(55, {	-- Apprentice's Boots
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(52554, {	-- Apprentice's Boots
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(1395, {	-- Apprentice's Pants
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(56, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(52553, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(23478, {	-- Recruit's Pants
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(23479, {	-- Recruit's Robe
							["timeline"] = { ADDED_10_0_5 }
						}),

						-- PRIEST --
						i(1396, {	-- Acolyte's Pants
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(23322, {	-- Acolyte's Robe
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(51, {	-- Neophyte's Boots
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(6098, {	-- Neophyte's Robe
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(6119, {	-- Neophyte's Robe
							["timeline"] = { ADDED_10_0_5 }
						}),

						-- WARLOCK --
						i(1396, {	-- Acolyte's Pants
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(57, {	-- Acolyte's Robe
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(59, {	-- Acolyte's Shoes
							["timeline"] = { ADDED_10_0_5 }
						}),

						-- ??? --
						i(6116, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(23350, {	-- Battleworn Pants
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(23349, {	-- Battleworn Shoes
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(23472, {	-- Rugged Trapper's Boots
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(23471, {	-- Rugged Trapper's Pants
							["timeline"] = { ADDED_10_0_5 }
						}),
						i(6118, {	-- Squire's Pants
							["timeline"] = { ADDED_10_0_5 }
						}),
						-- #endif
					},
				}),
				-- #if AFTER 7.0.3
				n(30713, {	-- Catarina Stanford <Inscription Trainer>
					["coord"] = { 49.8, 74.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(140566, {	-- Technique: Songs of the Alliance (RECIPE!)
							["timeline"] = { "added 7.0.3" },
						}),
					},
				}),
				-- #endif
				n(5494, {	-- Catherine Leland <Fishing Supplier>
					-- #if AFTER WRATH
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 45.8, 58.5, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(6365),	-- Strong Fishing Pole
					},
				}),
				n(1307, {	-- Charys Yserian <Arcane Trinkets Vendor>
					-- #if AFTER WRATH
					["coord"] = { 44.8, 86.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 32.4, 79.9, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4824, {	-- Blurred Axe
							["isLimited"] = true,
						}),
						i(4825, {	-- Callous Axe
							["isLimited"] = true,
						}),
						i(4829, {	-- Dreamer's Belt
							["isLimited"] = true,
						}),
						i(4826, {	-- Marauder Axe
							["isLimited"] = true,
						}),
						i(4828, {	-- Nightwind Belt
							["isLimited"] = true,
						}),
						i(4827, {	-- Wizard's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(52358, {	-- Craggle Wobbletop <Toys and Novelties>
					["coords"] = {
						{ 66.6, 64.4, STORMWIND_CITY },
						{ 63.6, 61.2, STORMWIND_CITY },
						{ 56.6, 67.6, STORMWIND_CITY },
						{ 58.6, 76.8, STORMWIND_CITY },
					},
					["timeline"] = { "added 4.1.0.13682" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(54436, {	-- Blue Clockwork Rocket Bot (PET!)
							["timeline"] = { "added 3.3.3.11573" },
						}),
						i(95621, {	-- Warbot (PET!)
							["timeline"] = { "added 5.2.0.16539" },
						}),
						i(54343, {	-- Blue Crashin' Thrashin' Racer Controller (TOY!)
							["timeline"] = { "added 3.3.3.11573" },
						}),
						i(104324, {	-- Foot Ball (TOY!)
							["timeline"] = { "added 5.4.0.17227" },
						}),
						applyevent(EVENTS.CHILDRENS_WEEK, i(69895, {	-- Green Balloon Toy (TOY!)
							["timeline"] = { "added 4.1.0.13875" },
						})),
						i(137663, {	-- Soft Foam Sword (TOY!)
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(104323, {	-- The Swineskin (TOY!)
							["timeline"] = { "added 5.4.0.17227" },
						}),
						i(54438, {	-- Tiny Blue Ragdoll (TOY!)
							["timeline"] = { "added 3.3.3.11573" },
						}),
						i(54437, {	-- Tiny Green Ragdoll (TOY!)
							["timeline"] = { "added 3.3.3.11573" },
						}),
						i(44606, {	-- Toy Train Set Toy (TOY!)
							["timeline"] = { "added 3.0.2.8982" },
						}),
						i(45057, {	-- Wind-Up Train Wrecker Toy (TOY!)
							["timeline"] = { "added 3.1.0.9626" },
						}),
						applyevent(EVENTS.CHILDRENS_WEEK, i(69896, {	-- Yellow Balloon Toy (TOY!)
							["timeline"] = { "added 4.1.0.13875" },
						})),
					},
				}),
				n(133411, {	-- Dalia Skyblossom <Cooking Trainer>
					["coord"] = { 51.4, 18.0, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5.25716" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(1304, {	-- Darian Singh <Fireworks Vendor>
					-- #if AFTER WRATH
					["coord"] = { 42.6, 76.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 29.6, 67.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18649, {	-- Schematic: Blue Firework
							["isLimited"] = true,
						}),
					},
				}),
				n(50669, {	-- Dawn Radue <Bag Merchant>
					["coord"] = { 64.8, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(67396, {	-- "Carriage - Christina" Precious Metal Bag
							["timeline"] = { "added 4.0.1.12984" },
						}),
						i(67389, {	-- "Carriage - Exclusive" Enchanting Evening Purse
							["timeline"] = { "added 4.0.1.12984" },
						}),
						i(67392, {	-- "Carriage - Exclusive" Gem Studded Clutch
							["timeline"] = { "added 4.0.1.12984" },
						}),
						i(67393, {	-- "Carriage - Going Green" Herb Tote Bag
							["timeline"] = { "added 4.0.1.12984" },
						}),
						i(67390, {	-- "Carriage - Maddy" High Tech Bag
							["timeline"] = { "added 4.0.1.12984" },
						}),
						i(67395, {	-- "Carriage - Meeya" Leather Bag
							["timeline"] = { "added 4.0.1.12984" },
						}),
						i(67394, {	-- "Carriage - Xandera" Student's Satchel
							["timeline"] = { "added 4.0.1.12984" },
						}),
						i(67387, {	-- "Carriage" Signature Bag
							["timeline"] = { "added 4.0.1.12984" },
						}),
					},
				}),
				n(1314, {	-- Duncan Cullen
					["coord"] = { 53.2, 81.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2142),	-- Cuirboulli Belt
						i(2143),	-- Cuirboulli Boots
						i(2144),	-- Cuirboulli Bracers
						i(2145),	-- Cuirboulli Gloves
						i(2146),	-- Cuirboulli Pants
						i(2141),	-- Cuirboulli Vest
						i(2435),	-- Embroidered Armor
						i(3587),	-- Embroidered Belt
						i(2438),	-- Embroidered Boots
						i(3588),	-- Embroidered Bracers
						i(2440),	-- Embroidered Gloves
						i(3892),	-- Embroidered Hat
						i(2437),	-- Embroidered Pants
						i(2160),	-- Padded Armor
						i(3591),	-- Padded Belt
						i(2156),	-- Padded Boots
						i(3592),	-- Padded Bracers
						i(2158),	-- Padded Gloves
						i(2159),	-- Padded Pants
						i(2471),	-- Reinforced Leather Belt
						i(2473),	-- Reinforced Leather Boots
						i(2474),	-- Reinforced Leather Bracers
						i(3893),	-- Reinforced Leather Cap
						i(2475),	-- Reinforced Leather Gloves
						i(2472),	-- Reinforced Leather Pants
						i(2470),	-- Reinforced Leather Vest
						i(3593),	-- Russet Belt
						i(2432),	-- Russet Boots
						i(3594),	-- Russet Bracers
						i(2434),	-- Russet Gloves
						i(3889),	-- Russet Hat
						i(2431),	-- Russet Pants
						i(2429),	-- Russet Vest
						i(2464),	-- Studded Belt
						i(2467),	-- Studded Boots
						i(2468),	-- Studded Bracers
						i(2463),	-- Studded Doublet
						i(2469),	-- Studded Gloves
						i(3890),	-- Studded Hat
						i(2465),	-- Studded Pants
					},
				}),
				n(52029, {	-- Edlan Halsing <Bloodthirsty Gladiator> [LEGION+] / Edlan Halsing <Honor Trade Goods>
					["coord"] = { 74.7, 68.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.6.13596" },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 7.0.3
					["sym"] = {
						{"sub", "pvp_gear_base", CATA_TIER, SEASON_VICIOUS, PVP_HONOR },{"merge"},
						{"pop"},	-- Discard the Set header and acquire the children.
					},
					-- #else
					-- Used to just sell trade goods for Cataclysm (Embersilk, Shards, Ore, etc)
					-- #endif
				}),
				n(1286, {	-- Edna Mullby <Trade Supplies> [TBC+] / Edna Mullby <Trade Supplier>
					-- #if AFTER WRATH
					["coord"] = { 64.6, 71.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.2, 60.5, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20856, {	-- Design: Heavy Golden Necklace of Battle
							["isLimited"] = true,
						}),
					},
				}),
				n(5503, {	-- Eldraeith <Herbalism Supplies> [TBC+] / Eldraeith <Herbalism Supplier>
					-- #if AFTER WRATH
					["coord"] = { 55.6, 85.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 46.6, 78.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22250),	-- Herb Pouch
					},
				}),
				n(5483, {	-- Erika Tate <Cooking Supplies> [TBC+] / Erika Tate <Cooking Supplier>
					-- #if AFTER WRATH
					["coord"] = { 77.6, 53.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 76.0, 36.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(164942, {	-- Evelyn Thorn <Warlock Trainer>
					["coord"] = { 79.4, 69.8, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["groups"] = {
						i(189719, {	-- Tattered Collar of the Incubus
							["timeline"] = { ADDED_9_2_0, REMOVED_10_0_5 },
						}),
						i(189720, {	-- Tattered Collar of the Succubus
							["timeline"] = { ADDED_9_2_0, REMOVED_10_0_5 },
						}),
					},
				}),
				n(44245, {	-- Faldren Tillsdale
					["coord"] = { 76.1, 66.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = TIER_THIRTEEN_GROUPS,
				}),
				applyclassicphase(CATA_PHASE_FIVE, n(56925, {	-- Farrah Facet <Epic Gem Recipes>
					["coord"] = { 63.8, 61.6, STORMWIND_CITY },
					["timeline"] = { "added 4.3.0.14849" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						currency(361, {	-- Illustrious Jewelcrafter's Token
							["cost"] = { { "i", 204356, 10 }, },	-- 10x Illustrious Gemdust
							["timeline"] = { ADDED_10_0_7 },
						}),
						i(71928, {	-- Design: Accurate Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71917, {	-- Design: Adept Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71919, {	-- Design: Artful Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71893, {	-- Design: Balanced Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71943, {	-- Design: Bold Queen's Garnet
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71941, {	-- Design: Brilliant Queen's Garnet
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71912, {	-- Design: Champion's Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71906, {	-- Design: Crafty Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71905, {	-- Design: Deadly Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71937, {	-- Design: Defender's Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71913, {	-- Design: Deft Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71939, {	-- Design: Delicate Queen's Garnet
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71898, {	-- Design: Energized Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71931, {	-- Design: Etched Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71916, {	-- Design: Fierce Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71920, {	-- Design: Fine Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71942, {	-- Design: Flashing Queen's Garnet
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71901, {	-- Design: Forceful Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71947, {	-- Design: Fractured Lightstone
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71927, {	-- Design: Glinting Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71935, {	-- Design: Guardian's Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71891, {	-- Design: Infused Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71908, {	-- Design: Inscribed Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71899, {	-- Design: Jagged Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71918, {	-- Design: Keen Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71889, {	-- Design: Lightning Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71922, {	-- Design: Lucent Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71887, {	-- Design: Misty Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71932, {	-- Design: Mysterious Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71948, {	-- Design: Mystic Lightstone
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71902, {	-- Design: Nimble Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71888, {	-- Design: Piercing Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71909, {	-- Design: Polished Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71907, {	-- Design: Potent Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71940, {	-- Design: Precise Queen's Garnet
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71903, {	-- Design: Puissant Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71933, {	-- Design: Purified Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71946, {	-- Design: Quick Lightstone
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71896, {	-- Design: Radiant Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71915, {	-- Design: Reckless Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71900, {	-- Design: Regal Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71910, {	-- Design: Resolute Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71926, {	-- Design: Resplendent Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71930, {	-- Design: Retaliating Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71821, {	-- Design: Rigid Deepholm Iolite
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71890, {	-- Design: Sensei's Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71897, {	-- Design: Shattered Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71934, {	-- Design: Shifting Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71921, {	-- Design: Skillful Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71944, {	-- Design: Smooth Lightstone
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71886, {	-- Design: Solid Deepholm Iolite
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71938, {	-- Design: Sovereign Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71885, {	-- Design: Sparkling Deepholm Iolite
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71925, {	-- Design: Splendid Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71911, {	-- Design: Stalwart Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71904, {	-- Design: Steady Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71884, {	-- Design: Stormy Deepholm Iolite
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71945, {	-- Design: Subtle Lightstone
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71923, {	-- Design: Tenuous Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71936, {	-- Design: Timeless Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71895, {	-- Design: Turbid Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71929, {	-- Design: Veiled Shadow Spinel
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71894, {	-- Design: Vivid Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71914, {	-- Design: Wicked Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71924, {	-- Design: Willful Lava Coral
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71892, {	-- Design: Zen Elven Peridot
							["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
						}),
						i(71949, {	-- Tome of Burning Jewels
							["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
							["filterID"] = CONSUMABLES,
							["sym"] = {
								{"select","creatureID",56925},{"pop"},	-- this NPC
								{"not","itemID",71949},				-- not this item
								{"isnt","currencyID"},	-- no currencies
							},
						}),
					},
				})),
				n(1303, {	-- Felicia Gump <Herbalism Supplier>
					-- #if AFTER WRATH
					["coord"] = { 64.2, 60.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 64.2, 60.6, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3422,	-- Beautiful Wildflowers
						3420,	-- Black Rose
						3424,	-- Bouquet Of Black Roses
						3423,	-- Bouquet Of White Roses
						3419,	-- Red Rose
						3421,	-- Simple Wildflowers
					}},
					["groups"] = {
						i(2665),	-- Stormwind Seasoning Herbs
					},
				}),
				n(179896, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Finn
					["coord"] = { 61.0, 65.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(187009),	-- Dazzling Spectacles
						i(186092),	-- Historical Perspective Shifters
						i(186091),	-- Onyx Glare-Reducers
						i(186090),	-- Simple Glasses
						i(187010),	-- Tasteful Eyeglasses
					},
				})),
				n(1298, {	-- Frederick Stover <Bow & Arrow Merchant>
					-- #if AFTER WRATH
					["coord"] = { 58.6, 69.0, STORMWIND_CITY },
					-- #else
					["coord"] = { 50.3, 57.7, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11307, {	-- Massive Longbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				n(6122, {	-- Gakin the Darkbinder
					["coord"] = { 25.6, 77.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(SOD_PHASE_ONE, i(205215, {	-- Rune of Tactics
							["cost"] = {{ "i", 205183, 1 }},	-- Fel-Powered Artifact
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(416009),	-- Engrave Chest - Demonic Tactics
							},
						})),
					},
				}),
				-- #endif
				n(1333, {	-- Gerik Koen <Two Handed Weapon Merchant>
					["coord"] = { 73.2, 57.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(23346, {	-- Battleworn Claymore
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(52557, {	-- Battleworn Hammer
							["timeline"] = { ADDED_10_1_7 }
						}),
						i(2523),	-- Bullova
						i(2521),	-- Flamberge
						i(2531),	-- Great Axe
						i(73210, {	-- Trainee's Sword
							["timeline"] = { ADDED_10_0_7 },
						}),
						i(2525),	-- War Hammer
						i(2533),	-- War Maul
						i(57244, {	-- Warder's Spear
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(12282, {	-- Worn Battleaxe
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(49778, {	-- Worn Greatsword
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(57243, {	-- Worn Spear
							["timeline"] = { ADDED_10_1_7 }
						}),
						i(52532, {	-- Worn Wood Chopper
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(2529),	-- Zweihander
					},
				}),
				n(1348, {	-- Gregory Ardus
					["coord"] = { 48.2, 54.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						925,	-- Flail
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						928,	-- Long Staff
						852,	-- Mace
						924,	-- Maul
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
					}},
					["groups"] = {
						i(2492),	-- Cudgel
						i(2493),	-- Wooden Mallet
					},
				}),
				n(1289, {	-- Gunther Weller <Weapons Merchant>
					["coord"] = { 64.0, 68.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
					-- added all
						i(926),		-- Battle Axe
						i(2025),	-- Bearded Axe
						i(1198),	-- Claymore
						i(2029),	-- Cleaver
						i(851),		-- Cutlass
						i(922),		-- Dacian Falx
						i(927),		-- Double Axe
						i(2024),	-- Espadon
						i(925),		-- Flail
						i(1197),	-- Giant Mace
						i(2030),	-- Gnarled Staff
						i(2028),	-- Hammer
						i(853),		-- Hatchet
						i(15811),	-- Heavy Spear
						i(2207),	-- Jambiya
						i(2209),	-- Kris
						i(923),		-- Longsword
						i(928),		-- Long Staff
						i(852),		-- Mace
						i(924),		-- Maul
						i(2208),	-- Poniard
						i(854),		-- Quarter Staff
						i(2027),	-- Scimitar
						i(2026),	-- Rock Hammer
						i(15810),	-- Short Spear
						i(1196),	-- Tabar
					},
				}),
				n(1324, {	-- Heinrich Stone
					["coord"] = { 77.0, 57.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2520),	-- Broadsword
						i(2528),	-- Falchion
						i(2526),	-- Main Gauche
						i(2534),	-- Rondel
					},
				}),
				n(110034, {	-- Historian Llore <The Timewalkers>
					["coord"] = { 84.6, 25.0, STORMWIND_CITY },
					["timeline"] = { "added 7.1.0.22810" },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"select", "npcID", 158061},					-- Select Historian Ma'di
						{"pop"},										-- Discard Header and aquire their children
					},
				}),
				n(50480, {	-- Isabel Jones <Jewelcrafting Design Vendor>
					["coord"] = { 63.8, 61.3, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["sym"] = {{ "sub", "common_recipes_vendor", 50482 }},	-- Marith Lazuria <Jewelcrafting Supplies>
					["races"] = ALLIANCE_ONLY,
				}),
				n(1325, {	-- Jasper Fel
					["coord"] = { 80.6, 61.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
				}),
				n(1318, {	-- Jessara Cordell <Enchanting Supplies>
					-- #if AFTER WRATH
					["coord"] = { 53.0, 74.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 43.0, 64.2, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(COMMON_CATACLYSM_ENCHANTING_RECIPES, {
						-- #if BEFORE CATA
						i(6342, {	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							["isLimited"] = true,
						}),
						-- #endif
						i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
						i(67312, {	-- Formula: Magic Lamp (RECIPE!)
							["timeline"] = { "added 4.0.3" },
							["cost"] = { { "i", 52555, 20 }, },	-- 20x Hypnotic Dust
							["races"] = ALLIANCE_ONLY,
						}),
						i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
						i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					}),
				}),
				-- #if AFTER CATA
				n(5565, {	-- Jillian Tanner <Leatherworking Supplies>
					["coord"] = { 71.7, 62.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(COMMON_CATACLYSM_LEATHERWORKING_RECIPES, {}),
				}),
				-- #endif
				n(49701, {	-- Jon Casper <Sous Chef>
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						chefsaward(3, i(65426)),	-- Recipe: Baked Rockfish (RECIPE!)
						chefsaward(3, i(65427)),	-- Recipe: Basilisk Liverdog (RECIPE!)
						chefsaward(3, i(65429)),	-- Recipe: Beer-Basted Crocolisk (RECIPE!)
						chefsaward(3, i(65424)),	-- Recipe: Blackbelly Sushi (RECIPE!)
						chefsaward(3, i(65411)),	-- Recipe: Broiled Mountain Trout (RECIPE!)
						chefsaward(3, i(65431)),	-- Recipe: Chocolate Cookie (RECIPE!)
						chefsaward(3, i(65430)),	-- Recipe: Crocolisk Au Gratin (RECIPE!)
						chefsaward(3, i(65422)),	-- Recipe: Delicious Sagefish Tail (RECIPE!)
						chefsaward(3, i(65408)),	-- Recipe: Feathered Lure (RECIPE!)
						chefsaward(3, i(65423)),	-- Recipe: Fish Fry (RECIPE!)
						chefsaward(5, i(65432)),	-- Recipe: Fortune Cookie (RECIPE!)
						chefsaward(3, i(65428)),	-- Recipe: Grilled Dragon (RECIPE!)
						chefsaward(3, i(65418)),	-- Recipe: Hearty Seafood Soup (RECIPE!)
						chefsaward(3, i(65415)),	-- Recipe: Highland Spirits (RECIPE!)
						chefsaward(3, i(65407)),	-- Recipe: Lavascale Fillet (RECIPE!)
						chefsaward(3, i(65409)),	-- Recipe: Lavascale Minestrone (RECIPE!)
						chefsaward(3, i(65412)),	-- Recipe: Lightly Fried Lurker (RECIPE!)
						chefsaward(3, i(65416)),	-- Recipe: Lurker Lunch (RECIPE!)
						chefsaward(3, i(65420)),	-- Recipe: Mushroom Sauce Mudfish (RECIPE!)
						chefsaward(3, i(65417)),	-- Recipe: Pickled Guppy (RECIPE!)
						chefsaward(3, i(65410)),	-- Recipe: Salted Eye (RECIPE!)
						chefsaward(3, i(68688, {	-- Recipe: Scalding Murglesnout (RECIPE!)
							["timeline"] = { ADDED_4_0_6 },
						})),
						chefsaward(3, i(65413)),	-- Recipe: Seasoned Crab (RECIPE!)
						chefsaward(3, i(65421)),	-- Recipe: Severed Sagefish Head (RECIPE!)
						chefsaward(3, i(65425)),	-- Recipe: Skewered Eel (RECIPE!)
						chefsaward(5, i(65433)),	-- Recipe: South Island Iced Tea (RECIPE!)
						chefsaward(3, i(65414)),	-- Recipe: Starfire Espresso (RECIPE!)
						chefsaward(3, i(65419)),	-- Recipe: Tender Baked Turtle (RECIPE!)
						chefsaward(3, i(65406)),	-- Recipe: Whitecrest Gumbo (RECIPE!)
					},
				}),
				n(55684, {	-- Jordan Smith <Blacksmithing Trainer & Supplies>
					["coord"] = { 64.8, 48.2, STORMWIND_CITY },
					["timeline"] = { "added 4.3.0.14732" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(COMMON_CATACLYSM_BLACKSMITHING_RECIPES, {}),
				}),
				n(5512, {	-- Kaita Deepforge <Blacksmithing Supplies>
					-- #if AFTER WRATH
					["coord"] = { 63.2, 37.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 56.3, 17.2, STORMWIND_CITY },
					-- #endif
					["sym"] = {{ "sub", "common_recipes_vendor", 3356 }},	-- Sumi <Blacksmithing Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(43694, {	-- Katie Stokx <Horse Breeder>
					["coord"] = { 77.0, 67.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2411),	-- Black Stallion (MOUNT!)
						i(5656),	-- Brown Horse (MOUNT!)
						i(5655),	-- Chestnut Mare (MOUNT!)
						i(2414),	-- Pinto (MOUNT!)
						i(18777),	-- Swift Brown Steed (MOUNT!)
						i(18776),	-- Swift Palomino (MOUNT!)
						i(18778),	-- Swift White Steed (MOUNT!)
					},
				}),
				n(5509, {	-- Kathrum Axehand
					["coord"] = { 59.6, 34.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2523,	-- Bullova
						2531,	-- Great Axe
					}},
					["groups"] = {
						i(2522),	-- Crescent Axe
						i(2530),	-- Francisca
					},
				}),
				n(340, {	-- Kendor Kabonka <Master of Cooking Recipes>
					-- #if AFTER WRATH
					["coord"] = { 76.4, 53.0, STORMWIND_CITY },
					-- #else
					["coord"] = { 74.6, 36.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2889),	-- Recipe: Beer Basted Boar Ribs (RECIPE!)
						i(3679),	-- Recipe: Blood Sausage (RECIPE!)
						i(2698),	-- Recipe: Cooked Crab Claw (RECIPE!)
						i(3681),	-- Recipe: Crocolisk Gumbo (RECIPE!)
						i(3678),	-- Recipe: Crocolisk Steak (RECIPE!)
						i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
						i(3683),	-- Recipe: Gooey Spider Cake (RECIPE!)
						i(2697),	-- Recipe: Goretusk Liver Pie (RECIPE!)
						i(3680),	-- Recipe: Murloc Fin Soup (RECIPE!)
						i(2699),	-- Recipe: Redridge Goulash (RECIPE!)
						i(2701),	-- Recipe: Seasoned Wolf Kabob (RECIPE!)
						i(2700),	-- Recipe: Succulent Pork Ribs (RECIPE!)
						i(728),		-- Recipe: Westfall Stew (RECIPE!)
					},
				}),
				applyclassicphase(WRATH_PHASE_FOUR, n(34084, {	-- Knight-Lieutenant Moonstrike <Northrend Armor Quartermaster> // Original S8 Vendor // Furious Gladiator: Season 8 Honor Gear
					["coord"] = { 74.8, 67.3, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_FURIOUS, PVP_GLADIATOR },{ "pop" }},	-- Furious Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_THREE, n(34083, {	-- Knight-Lieutenant Moonstrike <Northrend Armor Quartermaster> // Original S7 Vendor // Deadly Gladiator: Season 7 Honor Gear
					["coord"] = { 74.8, 67.3, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" }},	-- Deadly Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_TWO, n(34082, {	-- Knight-Lieutenant Moonstrike <Armor Quartermaster> // Original S6 Vendor // Hateful Gladiator: Season 6 Honor Gear
					["coord"] = { 74.8, 67.3, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_DEADLY, PRE_SEASON_HATEFUL },{ "pop" }},	-- Hateful Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_ONE, n(32834, {	-- Knight-Lieutenant Moonstrike <Armor Quartermaster> // Original S5 Vendor // Savage Gladiator: Season 5 Honor Gear
					["coord"] = { 74.8, 67.3, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_DEADLY, PVP_HONOR },{ "pop" }},	-- Savage Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				-- #if AFTER CATA
				-- This is a future Crieve problem, probably a similar thing to Moonstrike.
				n(69974, {	-- Knight-Lieutenant T'Maire Sydes <Ruthless Gladiator>
					["coord"] = { 74.8, 67.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", CATA_TIER, SEASON_RUTHLESS, PVP_GLADIATOR },{"merge"},
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				n(40606, {	-- Knight-Lieutenant T'Maire Sydes >S10< Elite Vendor
					["coord"] = { 74.8, 67.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
					},
				}),
				-- #endif
				-- #if AFTER 10.0.5
				n(1295, {	-- Lara Moore <Leather Armor Merchant>
					["coord"] = { 62.2, 67.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = sharedData({ ["timeline"] = { ADDED_10_0_5 } }, {
						i(236),	-- Cured Leather Armor
						i(1849),	-- Cured Leather Belt
						i(238),	-- Cured Leather Boots
						i(1850),	-- Cured Leather Bracers
						i(239),	-- Cured Leather Gloves
						i(237),	-- Cured Leather Pants
						i(48),	-- Footpads Pants
						i(47),	-- Footpads Shoes
						i(58234),	-- Footpads Vest
						i(6124),	-- Novices Pants
						i(6123),	-- Novices Robe
						i(1839),	-- Rough Leather Belt
						i(796),	-- Rough Leather Boots
						i(1840),	-- Rough Leather Bracers
						i(797),	-- Rough Leather Gloves
						i(798),	-- Rough Leather Pants
						i(799),	-- Rough Leather Vest
						i(1843),	-- Tanned Leather Belt
						i(843),	-- Tanned Leather Boots
						i(1844),	-- Tanned Leather Bracers
						i(844),	-- Tanned Leather Gloves
						i(846),	-- Tanned Leather Jerkin
						i(845),	-- Tanned Leather Pants
					}),
				}),
				-- #endif
				-- #if AFTER 8.0.1
				n(4730, {	-- Lelanai <Saber Handler>
					["description"] = "Appears in Stormwind after War of Thorns.",
					["coord"] = { 55.0, 12.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8632),	-- Spotted Frostsaber (MOUNT!)
						i(47100),	-- Striped Dawnsaber (MOUNT!)
						i(8631),	-- Striped Frostsaber (MOUNT!)
						i(8629),	-- Striped Nightsaber (MOUNT!)
						i(18766),	-- Swift Frostsaber (MOUNT!)
						i(18767),	-- Swift Mistsaber (MOUNT!)
						i(18902),	-- Swift Stormsaber (MOUNT!)
					},
				}),
				-- #endif
				-- #if AFTER 5.3.0.16767
				n(2795, {	-- Lenny "Fingers" McCoy
					["coord"] = { 72.8, 58.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(97921, {	-- Bom'bay's Color-Seein'Sauce (TOY!)
							["timeline"] = { "added 5.3.0.16767" },
						}),
						i(138385, {	-- Lucky Shirt
							["timeline"] = { "added 7.0.3.22248" },
						}),
					},
				}),
				-- #endif
				n(12784, {	-- Lieutenant Jackspring <Legacy Weapon Quartermaster> [WRATH+] / Lieutenant Jackspring <Weapons Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 75.2, 67.2, STORMWIND_CITY },
					["description"] = "Blizzard strikes again. In order to transmog these, you need to have the original title associated with the gear. However, you can still collect them even if you've never had the title.\n\nThese items will require a refresh/reload to register as collected, and it's highly recommended that you keep them in your bank/void storage for later. You'll likely randomly lose credit for them and have to re-equip them to remind the game they exist.",
					-- #else
					["coord"] = { 71.9, 55.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "added 2.0.1" },	-- Prior to TBC, was just a Reagent Vendor.
					["sym"] = {
						-- #IF ANYCLASSIC
							{"sub", "pvp_gear_base", CLASSIC_TIER, FACTION_HEADER_ALLIANCE, WEAPONS },	-- Grand Marshal Weapons
						-- #ELSE
							{"select","tierID",CLASSIC_TIER},
							{"find","headerID",FACTION_HEADER_ALLIANCE},
							{"find","headerID",WEAPONS},	-- Grand Marshal Weapons
						-- #ENDIF
						{"pop"},
					},
					["races"] = ALLIANCE_ONLY,
				}),
				n(12783, {	-- Lieutenant Karter <War Mount Quartermaster> [WRATH+] / Lieutenant Karter <Mount Vendor>
					-- #if AFTER WRATH
					["coord"] = { 76.2, 65.6, STORMWIND_CITY },
					-- #else
					["description"] = "Found within the Champion's Hall.",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						i(29465, {	-- Black Battlestrider (MOUNT!)
							["timeline"] = { "added 2.0.1.6180" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18243, {	-- Black Battlestrider (MOUNT!)
							["timeline"] = { "removed 2.0.1.6180" },
							-- #if BEFORE 2.0.1
							["races"] = { DWARF, GNOME },
							-- #endif
						}),
						i(35906, {	-- Black War Elekk (MOUNT!)
							["timeline"] = { "added 2.4.0.7994" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(29467, {	-- Black War Ram (MOUNT!)
							["timeline"] = { "added 2.0.1.6180" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18244, {	-- Black War Ram (MOUNT!)
							["timeline"] = { "removed 2.0.1.6180" },
						}),
						i(29468, {	-- Black War Steed (MOUNT!)
							["timeline"] = { "added 2.0.1.6180" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18241, {	-- Black War Steed (MOUNT!)
							["timeline"] = { "removed 2.0.1.6180" },
						}),
						i(29471, {	-- Black War Tiger (MOUNT!)
							["timeline"] = { "added 2.0.1.6180" },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18242, {	-- Black War Tiger (MOUNT!)
							["timeline"] = { "removed 2.0.1.6180" },
						}),
					}),
				}),
				-- #if AFTER CATA
				-- This is a future Crieve problem, probably a similar thing to the other Tristias.
				n(54660, {	-- Lieutenant Tristia <Vicious Gladiator>
					["coord"] = { 75.0, 67.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", CATA_TIER, SEASON_VICIOUS, PVP_GLADIATOR },{"merge"},	-- Vicious Gladiator: Season 9 Gladiator Gear
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				n(51255, {	-- Lieutenant Tristia Original CATA S9 ELITE VENDOR Alliance
					["coord"] = { 75.0, 67.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				-- #endif
				applyclassicphase(WRATH_PHASE_FOUR, n(34078, {	-- Lieutenant Tristia <Veteran Armor Quartermaster> // Original S8 Vendor // Wrathful Gladiator: Season 8 Gladiator Gear
					["coord"] = { 74.7, 67.2, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_WRATHFUL, PVP_GLADIATOR },{ "pop" }},	-- Wrathful Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_THREE, n(34077, {	-- Lieutenant Tristia <Veteran Armor Quartermaster> // Original S7 Vendor // Relentless Gladiator: Season 7 Gladiator Gear
					["coord"] = { 74.7, 67.2, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_RELENTLESS, PVP_GLADIATOR },{ "pop" }},	-- Relentless Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_TWO, n(34076, {	-- Lieutenant Tristia <Veteran Armor Quartermaster> // Original S6 Vendor // Furious Gladiator: Season 6 Gladiator Gear
					["coord"] = { 74.7, 67.2, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_FURIOUS, PVP_GLADIATOR },{ "pop" }},	-- Furious Gladiator's Set
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				applyclassicphase(WRATH_PHASE_ONE, n(32380, {	-- Lieutenant Tristia <Veteran Armor Quartermaster> // Original S5 Vendor // Deadly Gladiator: Season 5 Gladiator Gear
					["coord"] = { 74.7, 67.2, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {
						{"sub", "pvp_gear_base", WOTLK_TIER, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" },		-- Deadly Gladiator's Set
						-- #if ANYCLASSIC
						{ "select", "itemID", 201993 },	-- Deadly Gladiator's Tabard (Wrath Classic Only)
						-- #endif
					},
					-- #endif
					["timeline"] = { "removed 4.0.3.13277" },
				})),
				-- #if NOT ANYCLASSIC
				-- Crieve NOTE: This NPC ID wasn't used for TBC Classic, so not sure how this was actually used.
				n(23446, {	-- Lieutenant Tristia -- BC Vendor for Trinkets
					-- The NPC ID got reused many times. This is the BC Version, items listed under PvP>BC
					["coord"] = { 75.0, 67.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
					},
				}),
				-- #endif
				n(8666, {	-- Lil Timmy <Boy with kittens>
					-- #if AFTER WRATH
					["description"] = "The vendor wanders around Stormwind at random times. He is not always available.",
					-- #else
					["coord"] = { 64.0, 38.0, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8489, {	-- White Kitten (PET!)
							["timeline"] = { "added 1.11.1.5462" },
							["isLimited"] = true,
						}),
					},
				}),
				n(8118, {	-- Lillian Singh
					["coord"] = { 62.6, 70.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					-- #if BEFORE 10.1
					["description"] = "This NPC is only available on July 4th (US) or September 30th (EU).",
					-- #else
					["description"] = "This NPC is only available on July 4th.",
					-- #endif
					["groups"] = {
						i(8626),	-- Blue Sparkler
						i(8625),	-- White Sparkler
						i(8624),	-- Red Sparkler
					},
				}),
				n(52030, {	-- Liliana Emberfrost <Honor Heirlooms>
					["coord"] = { 74.4, 67.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.6.13596" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						moh(8, i(122375, {	-- Aged Pauldrons of The Five Thunders
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(12, i(122338, {	-- Ancient Heirloom Armor Casing
							["timeline"] = { "added 6.1.0.19445" },
							["sym"] = {{ "fill" }},	-- simply fill this item
						})),
						moh(14, i(122339, {	-- Ancient Heirloom Scabbard
							["timeline"] = { "added 6.1.0.19445" },
							["sym"] = {{ "fill" }},	-- simply fill this item
						})),
						moh(10, i(122369, {	-- Battleworn Thrash Blade
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(8, i(122376, {	-- Exceptional Stormshroud Shoulders
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(8, i(122378, {	-- Exquisite Sunderseer Mantle
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(4, i(122371, {	-- Inherited Insignia of the Alliance
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(4, i(122530, {	-- Inherited Mark of Tyranny
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(10, i(122368, {	-- Grand Staff of Jordan
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(8, i(122377, {	-- Lasting Feralheart Spaulders
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(8, i(122373, {	-- Pristine Lightforge Spaulders
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(8, i(122374, {	-- Prized Beastmaster's Mantle
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(10, i(122365, {	-- Reforged Truesilver Champion
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(10, i(122364, {	-- Sharpened Scarlet Kris
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(8, i(122372, {	-- Strengthened Stockade Pauldrons
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(10, i(122367, {	-- The Blessed Hammer of Grace
							["timeline"] = { "added 6.1.0.19445" },
						})),
						moh(10, i(122366, {	-- Unpgraded Dwarven Hand Cannon
							["timeline"] = { "added 6.1.0.19445" },
						})),
					},
				}),
				n(1297, {	-- Lina Stover
					["coord"] = { 58.6, 68.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3024),	-- Bkp 2700 Enforcer
						i(3027),	-- Heavy Recurve Bow
						i(2506),	-- Hornwood Recurve Bow
						i(2511),	-- Hunter's Boomstick
						i(2507),	-- Laminated Recurve Bow
						i(3023),	-- Large Bore Blunderbuss
						i(2509),	-- Ornate Blunderbuss
						i(2505),	-- Polished Shortbow
						i(3026),	-- Reinforced Bow
						i(2504),	-- Worn Shortbow
					},
				}),
				n(1299, {	-- Lisbeth Schneider <Clothier>
					-- #if AFTER WRATH
					["coord"] = { 58.2, 67.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 49.6, 55.0, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3426),	-- Bold Yellow Shirt
						i(3428),	-- Common Grey Shirt
						i(3427),	-- Stylish Black Shirt
						i(13896),	-- Dark Green Wedding Hanbok
						i(13898),	-- Royal Dangui
						i(13897),	-- White Traditional Hanbok
					},
				}),
				-- #if AFTER 8.0.1
				n(50307, {	-- Lord Candren <Gilneas Quartermaster>
					["description"] = "Appears in Stormwind after War of Thorns.",
					["coord"] = { 56.1, 13.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(64882, {	-- Gilneas Tabard
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(64893, {	-- Cape of Gilneas
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(64892, {	-- Mantle of Gilneas
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(64894, {	-- Shroud of Gilneas
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(67532, {	-- Gilnean Satchel
							["timeline"] = { "added 4.0.3.13277" },
						}),
					},
				}),
				-- #endif
				n(44246, {	-- Magatha Silverton <Justice Quartermaster>
					-- #if AFTER 9.0.1
					["coord"] = { 75.5, 66.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 74.2, 66.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = TIER_TWELVE_GROUPS,
				}),
				n(1313, {	-- Maria Lumere <Alchemy Supplies>
					-- #if AFTER WRATH
					["coord"] = { 55.6, 85.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 46.6, 78.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9301, {	-- Recipe: Elixir of Shadow Power (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(1287, {	-- Marda Weller <Weapons Merchant>
					["coord"] = { 64.0, 68.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
					-- added all
						926,	-- Battle Axe
						2025,	-- Bearded Axe
						2029,	-- Cleaver
						1198,	-- Claymore
						851,	-- Cutlass
						922,	-- Dacian Falx
						927,	-- Double Axe
						2024,	-- Espadon
						925,	-- Flail
						2030,	-- Gnarled Staff
						1197,	-- Giant Mace
						853,	-- Hatchet
						2207,	-- Jambiya
						2209,	-- Kris
						928,	-- Long Staff
						852,	-- Mace
						924,	-- Maul
						2208,	-- Poniard
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
						2027,	-- Scimitar
					}},
					["groups"] = {
						i(15808),	-- Fine Light Crossbow
						i(15809),	-- Heavy Crossbow
						i(15807),	-- Light Crossbow
						i(20981, {	-- Neophyte's Mace
							["timeline"] = { ADDED_10_1_7 }
						}),
						i(20977, {	-- Recruit's Shortsword
							["timeline"] = { ADDED_10_1_7 }
						}),
						i(20982, {	-- Sharp Dagger
							["timeline"] = { ADDED_10_1_7 }
						}),
						i(37, {	-- Worn Axe
							["timeline"] = { ADDED_10_1_7 }
						}),
					},
				}),
				n(12781, {	-- Master Sergeant Biggins <Accessories Quartermaster> [WRATH+] / Master Sergeant Biggins <Officer Accessories Quartermaster>
					-- #if BEFORE TBC
					["description"] = "Found within the Champion's Hall.",
					-- #else
					["coord"] = { 75.2, 66.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						i(18606),	-- Alliance Battle Standard
						i(18839),	-- Combat Healing Potion
						i(18841),	-- Combat Mana Potion
						i(31853, {	-- Major Combat Healing Potion
							["timeline"] = { "added 2.0.1" },
						}),
						i(31855, {	-- Major Combat Mana Potion
							["timeline"] = { "added 2.0.1" },
						}),
						i(32455, {	-- Star's Lament
							["timeline"] = { "added 2.0.1" },
						}),
						i(32453, {	-- Star's Tears
							["timeline"] = { "added 2.0.1" },
						}),
						i(44957, {	-- Greater Inscription of the Gladiator
							["timeline"] = { "added 3.0.8.9464", "removed 7.0.1" },
						}),
						moh(3, i(68772, {	-- Greater Inscription of Vicious Intellect
							["timeline"] = { "added 4.0.6.13596" },
						})),
						moh(3, i(68773, {	-- Greater Inscription of Vicious Strength
							["timeline"] = { "added 4.0.6.13596" },
						})),
						moh(3, i(68774, {	-- Greater Inscription of Vicious Agility
							["timeline"] = { "added 4.0.6.13596" },
						})),
						moh(1, i(15198)),	-- Knight's Colors
						-- #if AFTER TBC
						moh(1, i(15196)),	-- Private's Tabard
						-- #endif
					}),
				}),
				n(28347, {	-- Miles Sidney <Poison Supplies>
					["coord"] = { 74.2, 58.0, STORMWIND_CITY },
					["timeline"] = { "added 3.0.1.8634" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4565),	-- Simple Dagger
						i(38579, {	-- Venomous Tome
							["timeline"] = { "created 2.4.2", "added 3.0.1.8634" },
							["isLimited"] = true,
						}),
					},
				}),
				-- #if AFTER 8.0.1
				n(50305, {	-- Moon Priestess Lasara <Darnassus Quartermaster>
					["description"] = "Appears in Stormwind after War of Thorns.",
					["coord"] = { 56.6, 13.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(45579, {	-- Darnassus Tabard
							["timeline"] = { "added 3.1.0.9626" },
						}),
						i(64887, {	-- Cape of Darnassus
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(64888, {	-- Mantle of Darnassus
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(64886, {	-- Shroud of Darnassus
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(67526, {	-- Darnassian Satchel
							["timeline"] = { "added 4.0.3.13277" },
						}),
					},
				}),
				-- #endif
				n(73190, {	-- Necrolord Sipe
					["coord"] = { 76.8, 65.6, STORMWIND_CITY },
					["timeline"] = { "added 5.4.0.17161" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						vicioussaddle(i(70909)),	-- Vicious War Steed (MOUNT!)
						vicioussaddle(i(102514)),	-- Vicious Kaldorei Warsaber (MOUNT!)
						vicioussaddle(i(165019)),	-- Vicious Black Warsaber (MOUNT!)
						vicioussaddle(i(140353)),	-- Vicious Gilnean Warhorse (MOUNT!)
						vicioussaddle(i(163122)),	-- Vicious War Basilisk (A) (MOUNT!)
						vicioussaddle(i(142234)),	-- Vicious War Bear (A) (MOUNT!)
						vicioussaddle(i(140350)),	-- Vicious War Elekk (MOUNT!)
						vicioussaddle(i(152870)),	-- Vicious War Fox (A) (MOUNT!)
						vicioussaddle(i(142237)),	-- Vicious War Lion (MOUNT!)
						vicioussaddle(i(124089)),	-- Vicious War Mechanostrider (MOUNT!)
						vicioussaddle(i(116777)),	-- Vicious War Ram (MOUNT!)
						vicioussaddle(i(163123)),	-- Vicious War Riverbeast (MOUNT!)
						vicioussaddle(i(173714)),	-- Vicious White Warsaber (MOUNT!)
						vicioussaddle(i(143648)),	-- Vicious War Turtle (A) (MOUNT!)
						vicioussaddle(i(184014, {	-- Vicious War Spider (A) (MOUNT!)
							["timeline"] = { ADDED_10_0_2_LAUNCH },
						})),
						vicioussaddle(i(186178, {	-- Vicious War Gorm (A) (MOUNT!)
							["timeline"] = { ADDED_10_0_2_LAUNCH },
						})),
						vicioussaddle(i(187681, {	-- Vicious War Gulper (A) (MOUNT!)
							["timeline"] = { ADDED_10_0_2_LAUNCH },
						})),
						vicioussaddle(i(187644, {	-- Vicious Warstalker (A) (MOUNT!)
							["timeline"] = { ADDED_10_0_2_LAUNCH },
						})),
					}),
				}),
				-- #if ANYCLASSIC
				-- Crieve NOTE: I haven't confirmed this on Live, so not gonna pop it in until I can check it.
				n(12805, {	-- Officer Areyn <Accessories Quartermaster>
					["coord"] = { 73.8, 53.4, STORMWIND_CITY },
					["timeline"] = { "removed 3.0.1", "added 4.0.1", "removed 7.0.1" },
					["groups"] = {
						i(18664),	-- A Treatise on Military Ranks
						i(15196),	-- Private's Tabard
						i(18854, {	-- Insignia of the Alliance
							["classes"] = { WARRIOR },
						}),
						i(18857, {	-- Insignia of the Alliance
							["classes"] = { ROGUE },
						}),
						i(18862, {	-- Insignia of the Alliance
							["classes"] = { PRIEST },
						}),
						i(18859, {	-- Insignia of the Alliance
							["classes"] = { MAGE },
						}),
						i(18858, {	-- Insignia of the Alliance
							["classes"] = { WARLOCK },
						}),
						i(18863, {	-- Insignia of the Alliance
							["classes"] = { DRUID },
						}),
						i(18864, {	-- Insignia of the Alliance
							["classes"] = { PALADIN },
						}),
						i(18856, {	-- Insignia of the Alliance
							["classes"] = { HUNTER },
						}),
						i(16342),	-- Sergeant's Cape (58)
						i(18440),	-- Sergeant's Cape (45)
						i(18441),	-- Sergeant's Cape (30)
						i(18443),	-- Master Sergeant's Insignia (58)
						i(18444),	-- Master Sergeant's Insignia (45)
						i(18442),	-- Master Sergeant's Insignia (30)
						i(18449, {	-- Sergeant Major's Chain Armguards (45)
							["classes"] = { HUNTER },
						}),
						i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
							["classes"] = { DRUID },
						}),
						i(18453, {	-- Sergeant Major's Leather Armsplints (45)
							["classes"] = { ROGUE },
						}),
						i(18447, {	-- Sergeant Major's Plate Wristguards (45)
							["classes"] = { PALADIN, WARRIOR },
						}),
						i(18457, {	-- Sergeant Major's Silk Cuffs (45)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
						i(18448, {	-- Sergeant Major's Chain Armguards (58)
							["classes"] = { HUNTER },
						}),
						i(18454, {	-- Sergeant Major's Dragonhide Armsplints (58)
							["classes"] = { DRUID },
						}),
						i(18452, {	-- Sergeant Major's Leather Armsplints (58)
							["classes"] = { ROGUE },
						}),
						i(18445, {	-- Sergeant Major's Plate Wristguards (58)
							["classes"] = { PALADIN, WARRIOR },
						}),
						i(18456, {	-- Sergeant Major's Silk Cuffs (58)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
					},
				}),
				-- #endif
				n(65068, {	-- Old Whitenose <Dragon Turtle Breeder>
					["coord"] = { 67.8, 18.4, STORMWIND_CITY },
					["timeline"] = { "added 5.0.1.15726" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(87795, {	-- Black Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91008, {	-- Black Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87796, {	-- Blue Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91009, {	-- Blue Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87797, {	-- Brown Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91005, {	-- Brown Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87802, {	-- Great Black Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91011, {	-- Great Black Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87803, {	-- Great Blue Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91013, {	-- Great Blue Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87804, {	-- Great Brown Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91014, {	-- Great Brown Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87801, {	-- Great Green Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91012, {	-- Great Green Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87805, {	-- Great Purple Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91015, {	-- Great Purple Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(82811, {	-- Great Red Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91010, {	-- Great Red Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(82765, {	-- Green Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91004, {	-- Green Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87799, {	-- Purple Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91006, {	-- Purple Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87800, {	-- Red Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { "added 5.0.1.15699" },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91007, {	-- Red Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { "added 5.0.4.16004" },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
					},
				}),
				n(87501, {	-- Paulie
					["coord"] = { 73.0, 59.3, STORMWIND_CITY },
					["timeline"] = { "added 6.0.1.18689" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(116789, {	-- Champion's Treadblade (MOUNT!)
							["timeline"] = { "added 6.0.2.18888" },
							["cost"] = 1000000000,	-- 100,000g
						})
					},
				}),
				n(167429, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } }, {	-- Quartermaster Richter
					["description"] = "Only sells items once the achievement |cffebae34Exile's Reach|r [14222] is completed.",
					["coord"] = { 79.5, 69.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(175173),	-- Expeditionary Cudgel
						i(175172),	-- Expeditionary Dagger
						i(175166),	-- Expeditionary Greatsword
						i(175162),	-- Expeditionary Longbow
						i(175168),	-- Expeditionary Quarterstaff
						i(175170),	-- Expeditionary Short Sword
						i(175167),	-- Expeditionary Staff
					},
				})),
				n(53991, {	-- Quincy Cutler <Owner and Proprietor>
					["timeline"] = { "added 4.2.0.14313" },
					["coord"] = { 64.0, 46.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(44679),	-- Red Wine Glass
						i(44678),	-- Wine Glass
					},
				}),
				n(1323, {	-- Osric Strang
					["coord"] = { 77.0, 61.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2419,	-- Augmented Chain Belt
						2420,	-- Augmented Chain Boots
						2421,	-- Augmented Chain Bracers
						2422,	-- Augmented Chain Gloves
						3891,	-- Augmented Chain Helm
						2418,	-- Augmented Chain Leggings
						2417,	-- Augmented Chain Vest
						2424,	-- Brigandine Belt
						2426,	-- Brigandine Boots
						2427,	-- Brigandine Bracers
						2428,	-- Brigandine Gloves
						3894,	-- Brigandine Helm
						2425,	-- Brigandine Leggings
						2423,	-- Brigandine Vest
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						8094,	-- Platemail Armor
						8088,	-- Platemail Belt
						8089,	-- Platemail Boots
						8090,	-- Platemail Bracers
						8091,	-- Platemail Gloves
						8092,	-- Platemail Helm
						8093,	-- Platemail Leggings
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						17192,	-- Reinforced Targe
					}},
				}),
				n(5193, {	-- Rebecca Laughlin <Tabard Designer>
					-- #if AFTER WRATH
					["coord"] = { 64.0, 77.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 57.2, 68.4, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"select", "itemID",
						31779,	-- Aldor Tabard
						31804,	-- Cenarion Expedition Tabard
						36941,	-- Competitor's Tabard
						31776,	-- Consortium Tabard
						31404,	-- Green Trophy Tabard of the Illidari
						23999,	-- Honor Hold Tabard
						31777,	-- Keepers of Time Tabard
						31774,	-- Kurenai Tabard
						31778,	-- Lower City Tabard
						15198,	-- Knight's Colors
						43300,	-- Loremaster's Colors
						32828,	-- Ogri'la Tabard
						15196,	-- Private's Tabard
						31405,	-- Purple Trophy Tabard of the Illidari
						31780,	-- Scryers Tabard
						31781,	-- Sha'tar Tabard
						19506,	-- Silverwing Battle Tabard
						32445,	-- Skyguard Tabard
						31775,	-- Sporeggar Tabard
						19032,	-- Stormpike Battle Tabard
						43349,	-- Tabard of Brute Force
						49052,	-- Tabard of Conquest (A)
						35280,	-- Tabard of Summer Flames
						35279,	-- Tabard of Summer Skies
						40643,	-- Tabard of the Achiever
						43348,	-- Tabard of the Explorer
						24344,	-- Tabard of the Hand (A)
						35221,	-- Tabard of the Shattered Sun
						},
					},
					["groups"] = {
						i(5976),	-- Guild Tabard
					},
				}),
				n(277, {	-- Roberto Pupellyverbos <Merlot Connoisseur>
					-- #if AFTER WRATH
					["coord"] = { 59.4, 77.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 52.0, 67.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(1941),	-- Cask of Merlot
					},
				}),
				n(1320, {	-- Seoman Griffith
					["coord"] = { 71.8, 62.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2471,	-- Reinforced Leather Belt
						2473,	-- Reinforced Leather Boots
						2474,	-- Reinforced Leather Bracers
						3893,	-- Reinforced Leather Cap
						2475,	-- Reinforced Leather Gloves
						2472,	-- Reinforced Leather Pants
						2470,	-- Reinforced Leather Vest
						2464,	-- Studded Belt
						2467,	-- Studded Boots
						2468,	-- Studded Bracers
						2463,	-- Studded Doublet
						2469,	-- Studded Gloves
						3890,	-- Studded Hat
						2465,	-- Studded Pants
					}},
				}),
				n(12785, {	-- Sergeant Major Clate <Legacy Armor Quartermaster> [WRATH+] / Sergeant Major Clate <Armor Quartermaster>
					["coord"] = { 75.4, 67.0, STORMWIND_CITY },
					["timeline"] = { "added 2.0.1" },	-- Prior to TBC, was just a Food Vendor.
					["sym"] = {	-- Grand Marshal Armor
						-- #IF ANYCLASSIC
							{"sub", "pvp_gear_base", CLASSIC_TIER, FACTION_HEADER_ALLIANCE },
						-- #ELSE
							{"select","tierID",CLASSIC_TIER},
							{"find","headerID",FACTION_HEADER_ALLIANCE},
						-- #ENDIF
						{ "pop" },
						{ "exclude", "headerID", WEAPONS },
						-- #if BEFORE WRATH
						{ "exclude", "f", TRINKET_F, NECK_F },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if AFTER 8.0.1
				n(8665, {	-- Shylenai
					["description"] = "Appears in Stormwind after War of Thorns.",
					["coord"] = { 56.0, 3.22, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8500),	-- Great Horned Owl (PET!)
						i(8501),	-- Hawk Owl (PET!)
					},
				}),
				-- #endif
				n(1326, {	-- Sloan McCoy
					["coord"] = { 81.2, 62.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
				}),
				n(30730, {	-- Stanly McCormick
					["coord"] = { 49.6, 74.8, STORMWIND_CITY },
					["timeline"] = { "added 3.0.2.8905" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(79740),	-- Plain Wooden Staff
						i(39489, {	-- Scribe's Satchel
							["isLimited"] = true,
						}),
					},
				}),
				n(43768, {	-- Tannec Stonebeak <Gryphon Keeper>
					["coord"] = { 71.4, 72.0, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(25471),	-- Ebon Gryphon (MOUNT!)
						i(25470),	-- Golden Gryphon (MOUNT!)
						i(25472),	-- Snowy Gryphon (MOUNT!)
						i(25473),	-- Swift Blue Gryphon (MOUNT!)
						i(25528),	-- Swift Green Gryphon (MOUNT!)
						i(25529),	-- Swift Purple Gryphon (MOUNT!)
						i(25527),	-- Swift Red Gryphon (MOUNT!)
					},
				}),
				n(44583, {	-- Terrance Denman <Jewelcrafting Supplies>
					["coord"] = { 63.1, 61.5, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(COMMON_CATACLYSM_JEWELCRAFTING_RECIPES, {}),
				}),
				n(1350, {	-- Theresa Moulaine
					["coord"] = { 53.4, 58.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2617),	-- Burning Robes
						i(2615),	-- Chromatic Robe
						i(2613),	-- Double-Stitched Robes
						i(2612),	-- Plain Robe
						i(2614),	-- Robe of Apprenticeship
						i(2616),	-- Shimmering Silk Robes
						i(2618),	-- Silver Dress Robes
					},
				}),
				n(5510, {	-- Thulman Flintcrag
					["coord"] = { 61.8, 36.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2509,	-- Ornate Blunderbuss
					}},
					["groups"] = {
						i(2508, {	-- Old Blunderbuss
							["timeline"] = { ADDED_10_0_7 },
						}),
						i(2510),	-- Solid Blunderbuss
					},
				}),
				n(58154, {	-- Toren Landow <Legacy Justice Quartermaster>
					-- #if AFTER 9.0.1
					["coord"] = { 75.7, 65.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 79.0, 70.1, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "added 4.3.0.14890" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = TIER_ELEVEN_GROUPS,
				}),
				n(1341, {	-- Wilhelm Strang
					["coord"] = { 77.4, 61.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
					}},
				}),
				n(1309, {	-- Wynne Larson
					["coord"] = { 52.0, 83.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2617,	-- Burning Robes
						2615,	-- Chromatic Robe
						2613,	-- Double Stitched Robes
						2612,	-- Plain Robe
						2614,	-- Robe Of Apprenticeship
						2616,	-- Shimmering Silk Robes
						2618,	-- Silver Dress Robes
					}},
				}),
			}),
		},
	}),
}));

-- #if AFTER 8.0.1.27291
root(ROOTS.HiddenQuestTriggers, {
	m(EASTERN_KINGDOMS, {
		m(STORMWIND_CITY, {
			q(53645),	-- triggered during 'Molten Core' (53342) when porting to Molten Core
			q(59255),	-- completed when turning in 'Fame Waits for Gnome One' (58708)
		}),
	}),
});
-- #endif

-- #if BEFORE WRATH
root(ROOTS.NeverImplemented, {
	i(38579, {	-- Venomous Tome
		["timeline"] = { "created 2.4.2", "added 3.0.1.8634" },
	}),
});
-- #endif