-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local SKINNING_KNOWLEDGE = 2033;

root(ROOTS.ExpansionFeatures, tier(DF_TIER, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(PROFESSIONS, {
		n(ACHIEVEMENTS, {
			ach(16683, {	-- In Tyr's Footsteps
				crit(56165, {	-- Lock and Shock
					["_quests"] = { 70180 },	-- Jump-Start? Jump-Starting!
				}),
				crit(56166, {	-- First Challenge: Finesse
					["_quests"] = { 70181 },	-- First Challenge of Tyr: Finesse
				}),
				crit(56167, {	-- Second Challenge: Might
					["_quests"] = { 70376 },	-- Second Challenge of Tyr: Might
				}),
				crit(56168, {	-- Third Challenge: Persistence
					["_quests"] = { 70509 },	-- Third Challenge of Tyr: Persistence
				}),
				crit(56169, {	-- Fourth Challenge: Resourcefulness
					["_quests"] = { 70881 },	-- Fourth Challenge of Tyr: Resourcefulness
				}),
				crit(56170, {	-- Fifth Challenge: Ingenuity
					["_quests"] = { 70899 },	-- Fifth Challenge of Tyr: Ingenuity
					["timeline"] = { ADDED_10_0_5 },
				}),
				crit(56171, {	-- Innovation Complete
					["_quests"] = { 70900 },	-- Innovating the Engine
					["timeline"] = { ADDED_10_0_5 }
				}),
			}),
			ach(16791, {	-- Merchant Artisan
				title(485),	-- Merchant Artisan %s
			}),
			ach(16799, {	-- Personal Crafter
				title(486),	-- Personal Crafter %s
			}),
		}),
		n(QUESTS, {
			q(67564, {	-- Artisan's Courier
				-- ["sourceQuests"] = { 66114 },	-- For the Benefit of the Queen
				["provider"] = { "n", 192498 },	-- Haephesta
				["coord"] = { 57.9, 68.2, THE_WAKING_SHORES },
				["g"] = {
					i(198790),	-- I.O.U
					i(195357),	-- Artisan's Consortium Invoice
				},
			}),
			q(67100, {	-- A Gift for Miguel
				["sourceQuests"] = { 67564 },	-- Artisan's Courier
				["provider"] = { "n", 192574 },	-- Thomas Bright
				["coords"] = {
					{ 60.2, 72.2, THE_WAKING_SHORES },
					{ 71.7, 81.2, OHNAHRAN_PLAINS },
				},
				["cost"] = { { "i", 194728, 3 }, },	-- 3xFiery Spirit++
				["g"] = {
					i(194715),	-- Gatherer's Pouch
				},
			}),
			q(67143, {	-- To Give One's Heart
				["sourceQuests"] = { 67100 },	-- A Gift for Miguel
				["provider"] = { "n", 192574 },	-- Thomas Bright
				["coords"] = {
					{ 60.2, 72.2, THE_WAKING_SHORES },
					{ 71.7, 81.2, OHNAHRAN_PLAINS },
				},
				["g"] = {
					i(202097),	-- Bulging Box of Skins and Scales
					i(202098),	-- Crowded Crate of Mined Materials
					i(202100),	-- Populous Pack of Castoff Clothes
					i(202099),	-- Stocked Sack of Hale Herbs
					i(202101),	-- Topped Trunk of Disenchanted Detritus
					--
					i(198151),	-- Cracked Heart in a Bottle++
					i(194746),	-- Thomas's Empty Bottle
					i(194714),	-- Miguel's Gift
					i(198084),	-- Miguel's Gift
					-- Recipes
					r(377978,{["u"]=15}),	-- Heart in a Bottle (ALCHEMY)
					r(377981,{["u"]=15}),	-- Heart in a Bottle (BLACKSMITHING)
					r(377982,{["u"]=15}),	-- Heart in a Bottle (ENCHANTING)
					r(377983,{["u"]=15}),	-- Heart in a Bottle (ENGINEERING)
					r(377984,{["u"]=15}),	-- Heart in a Bottle (HERBALISM)
					r(377985,{["u"]=15}),	-- Heart in a Bottle (INSCRIPTION)
					r(377915,{["u"]=15}),	-- Heart in a Bottle (JEWELCRAFTING)
					r(377989,{["u"]=15}),	-- Heart in a Bottle (LEATHERWORKING)
					r(377987,{["u"]=15}),	-- Heart in a Bottle (MINING)
					r(377988,{["u"]=15}),	-- Heart in a Bottle (SKINNING)
					r(377986,{["u"]=15}),	-- Heart in a Bottle (TAILORING)
				},
			}),
			q(67137, {	-- Professionally Equipped
				["sourceQuests"] = { 67100 },	-- A Gift for Miguel
				["provider"] = { "n", 192539 },	-- Miguel Bright
				["coords"] = {
					{ 60.2, 72.2, THE_WAKING_SHORES },
					{ 71.7, 81.2, OHNAHRAN_PLAINS },
				},
				["g"] = {
					i(193487),	-- Alchemist's Hat
					i(193615),	-- Jeweler's Tool Apron
					i(193486),	-- Resilient Smock
					i(193482),	-- Skinner's Cap
					i(193534),	-- Wildercloth Chef's Hat
					i(193529),	-- Wildercloth Fishing Cap
					i(193612),	-- Smithing Apron
					i(198243),	-- Draconium Delver's Helmet
					i(191239),	-- Draconium Needle Set
				},
			}),
			q(70126, {	-- A Finishing Touch
				["sourceQuests"] = {
					69979,	-- A Worthy Hunt
					67298,	-- The Wonders of the World
					DF_ACCOUNT_CAMPAIGN_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 192539 },	-- Miguel Bright
				["coord"] = { 39.4, 69.8, VALDRAKKEN },
				["description"] = "Even though Miguel can be found in numerous places around the Dragon Isles, this quest is only offered in Valdrakken once the Dragon Shard of Knowledge chain has been completed.",
				["g"] = {
					i(197765),	-- Impossibly Sharp Cutting Knife
					i(191516),	-- Brood Salt
					i(190456),	-- Artisan's Mettle
				},
			}),
			q(67295, {	-- That's My Specialty
				-- ["sourceQuests"] = { 70126 },	-- A Finishing Touch
				["provider"] = { "n", 192539 },	-- Miguel Bright
				["coords"] = {
					{ 60.2, 72.2, THE_WAKING_SHORES },
					{ 71.7, 81.2, OHNAHRAN_PLAINS },
				},
				["g"] = {
					i(191784),	-- Dragon Shard of Knowledge
				},
			}),
			q(67298, {	-- The Wonders of the World
				["sourceQuests"] = { 67295 },	-- That's My Specialty
				["provider"] = { "n", 192539 },	-- Miguel Bright
				["coords"] = {
					{ 60.2, 72.2, THE_WAKING_SHORES },
					{ 71.7, 81.2, OHNAHRAN_PLAINS },
				},
				["g"] = {
					i(197860),	-- Ancient Scrap of Draconic Wisdom (QI!)
					i(191784),	-- Dragon Shard of Knowledge
				},
			}),
			q(69946, {	-- The Master of Their Craft
				["sourceQuests"] = { 67298 },	-- The Wonders of the World
				["provider"] = { "n", 192539 },	-- Miguel Bright
				["coords"] = {
					{ 60.2, 72.2, THE_WAKING_SHORES },
					{ 71.7, 81.2, OHNAHRAN_PLAINS },
				},
				["g"] = {
					i(191784),	-- Dragon Shard of Knowledge
				},
			}),
			q(69979, {	-- A Worthy Hunt
				["sourceQuests"] = { 69946 },	-- The Master of Their Craft
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.7, 7.33, OHNAHRAN_PLAINS },
				["g"] = {
					i(191784),	-- Dragon Shard of Knowledge
					i(198137),	-- Esoteric Dragon Shard of Knowledge
				},
			}),
			q(69919, {	-- A Craft in Need
				["provider"] = { "n", 194026 },	-- Azley
				["coords"] = {
					{ 72.0, 81.1, OHNAHRAN_PLAINS },
					{ 35.4, 58.8, VALDRAKKEN },
				},
				["g"] = {
					i(193528),	-- Wildercloth Alchemist's Robe
					i(193529),	-- Wildercloth Fishing Cap
					i(193615),	-- Jeweler's Cover
				},
			}),
			q(69915, {	-- Targeted Ads
				["provider"] = { "n", 194026 },	-- Azley
				["coords"] = {
					{ 72.0, 81.1, OHNAHRAN_PLAINS },
				},
				["g"] = {
					i(198348),	-- "Custom High-Quality Gear: Better Business with Personal Orders!" (QI!)
					i(198346),	-- "Order Anything Crafters Make!" (QI!)
					i(198347),	-- "Public Orders: Fast and Made For You!" (QI!)
					i(191234),	-- Alchemist's Sturdy Mixing Rod
					i(198225),	-- Draconium Fisherfriend
					i(191233),	-- Chef's Smooth Rolling Pin
				},
			}),
			q(69981, {	-- Customer Satisfaction
				["provider"] = { "n", 194026 },	-- Azley
				["coords"] = {
					{ 72.0, 81.1, OHNAHRAN_PLAINS },
					{ 35.4, 58.8, VALDRAKKEN },
				},
				["g"] = {
					i(201343),	-- Bag of Cloth Armor Reagents
					i(201352),	-- Bag of Leather Reagents
					i(201353),	-- Bag of Mail Armor Reagents
					i(201354),	-- Bag of Plate Armor Reagents
					i(198091),	-- Slightly Used Recrafted Armor (QI!)
					i(198048),	-- Titan Training Matrix I
				},
			}),
			q(70221, {	-- Show Your Mettle
				["provider"] = { "n", 192574 },	-- Thomas Bright
				["minReputation"] = { 2544, 2 },	-- Artisan's Consortium, Preferred (2)
				["isWeekly"] = true,
				["_drop"] = { "isDaily" },	-- bad API
				["coords"] = {
					{ 60.2, 72.2, THE_WAKING_SHORES },
					{ 71.7, 81.2, OHNAHRAN_PLAINS },
				},
				["g"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
			q(72783, {	-- Crafting Orders
				["provider"] = { "n", 196066 },	-- Greyzik Cobblefinger
				["coord"] = { 84.9, 54.4, VALDRAKKEN },
			}),
			header(HEADERS.Achievement, 16683, {	-- In Tyr's Footsteps
				------ Chapter 1 ------
				q(72773, {	-- Learning Ingenuity
					["provider"] = { "n", 196499 },	-- Therazal
					["coord"] = { 50.2, 55.9, VALDRAKKEN },
					["isBreadcrumb"] = true,	-- unconfirmed
				}),
				q(70180, {	-- Jump-Start? Jump-Starting!
					["sourceQuests"] = { 72773 },	-- Learning Ingenuity
					["provider"] = { "n", 196066 },	-- Greyzik Cobblefinger
					["coord"] = { 84.2, 54.4, VALDRAKKEN },
				}),
				------ Chapter 2 ------
				q(70845, {	-- In Tyr's Footsteeps
					["sourceQuests"] = { 70180 },	-- Jump-Start? Jump-Starting!
					["provider"] = { "n", 196475 },	-- Maiden of Inspiration
					["coord"] = { 84.3, 53.5, VALDRAKKEN },
				}),
				q(70181, {	-- First Challenge of Tyr: Finesse
					["sourceQuests"] = { 70845 },	-- In Tyr's Footsteeps
					["provider"] = { "o", 379290 },	-- Ornamented Statue
					["coord"] = { 67.2, 30.8, THE_AZURE_SPAN },
					["g"] = {
						i(199197),	-- Bottled Essence
					},
				}),
				q(70182, {	-- The Sweet Taste of Victory
					["sourceQuests"] = { 70181 },	-- First Challenge of Tyr: Finesse
					["provider"] = { "n", 195827 },	-- Maiden of Inspiration
					["coord"] = { 67.1, 30.9, THE_AZURE_SPAN },
				}),
				q(70633, {	-- Fueling the Engine
					["sourceQuests"] = { 70182 },	-- The Sweet Taste of Victory
					["provider"] = { "n", 196475 },	-- Maiden of Inspiration
					["coord"] = { 84.3, 53.5, VALDRAKKEN },
				}),
				------ Chapter 3 ------
				q(70339, {	-- In Tyr's Footsteps: The Ohn'ahran Plains
					["sourceQuests"] = { 70181 },	-- First Challenge of Tyr: Finesse
					["provider"] = { "n", 196475 },	-- Maiden of Inspiration
					["coord"] = { 84.3, 53.5, VALDRAKKEN },
				}),
				q(70376, {	-- Second Challenge of Tyr: Might
					["sourceQuests"] = { 70339 },	-- In Tyr's Footsteps: The Ohn'ahran Plains
					["provider"] = { "o", 380540 },	-- Ornamented Statue
					["coord"] = { 66.2, 55.3, OHNAHRAN_PLAINS },
					["g"] = {
						i(199197),	-- Bottled Essence
					},
				}),
				q(70341, {	-- Well Earned Vicotry
					["sourceQuests"] = { 70376 },	-- Second Challenge of Tyr: Might
					["provider"] = { "n", 195924 },	-- Maiden of Inspiration
					["coord"] = { 66.3, 55.3, VALDRAKKEN },
				}),
				------ Chapter 4 ------
				q(70650, {	-- In Tyr's Footsteps: The Waking Shores
					["sourceQuests"] = { 70376 },	-- Second Challenge of Tyr: Might
					["provider"] = { "n", 196475 },	-- Maiden of Inspiration
					["coord"] = { 84.3, 53.5, VALDRAKKEN },
				}),
				q(70509, {	-- Third Challenge of Tyr: Persistence
					["sourceQuests"] = { 70650 },	-- In Tyr's Footsteps: The Waking Shores
					["provider"] = { "o", 380918 },	-- Broken Ornamented Statue
					["coord"] = { 63.9, 41.5, THE_WAKING_SHORES },
					["g"] = {
						i(198983),	-- Broken Part: Arm (QI!)
						i(198982),	-- Broken Part: Head (QI!)
						i(198984),	-- Broken Part: Shattered Orb (QI!)
					},
				}),
				q(70621, {	-- Third Challenge of Tyr: Persistence Embodied
					["sourceQuests"] = { 70509 },	-- Third Challenge of Tyr: Persistence
					["provider"] = { "n", 195737 },	-- Maiden of Inspiration
					["coord"] = { 64, 41.3, THE_WAKING_SHORES },
					["g"] = {
						i(199197),	-- Bottled Essence
					},
				}),
				q(70510, {	-- Victorious
					["sourceQuests"] = { 70621 },	-- Third Challenge of Tyr: Persistence Embodied
					["provider"] = { "n", 195737 },	-- Maiden of Inspiration
					["coord"] = { 64, 41.3, THE_WAKING_SHORES },
				}),
				------ Chapter 5 ------
				q(70881, {	-- Fourth Challenge of Tyr: Resourcefulness
					["sourceQuests"] = { 70510 },	-- Victorious
					["provider"] = { "n", 196475 },	-- Maiden of Inspiration
					["coord"] = { 83.9, 53.2, VALDRAKKEN },
					["maps"] = { 2082, 2083 },	-- Halls of Infusion
					["g"] = {
						i(199197),	-- Bottled Essence
						i(200108),	-- Irideus' Power Core (QI!)
					},
				}),
				------ Chapter 6 ------
				q(70899, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {	-- Fifth Challenge of Tyr: Ingenuity
					["sourceQuests"] = { 70881 },	-- Fourth Challenge of Tyr: Resourcefulness
					["provider"] = { "n", 196475 },	-- Maiden of Inspiration
					["coord"] = { 83.9, 53.2, VALDRAKKEN },
					["g"] = {
						i(199197),	-- Bottled Essence
						i(200120),	-- Irideus' Power Core
					},
				})),
				q(70900, {	-- Innovating the Engine
					["sourceQuests"] = { 70899 },	-- Fifth Challenge of Tyr: Ingenuity
					["provider"] = { "n", 196475 },	-- Maiden of Inspiration
					["coord"] = { 83.9, 53.2, VALDRAKKEN },
					["timeline"] = { ADDED_10_0_5 },
				}),
					-- Alt Skip --
				q(72339, {	-- Engine of Innovation
					["provider"] = { "n", 196475 },	-- Maiden of Inspiration
					["coord"] = { 83.9, 53.2, VALDRAKKEN },
					["altQuests"] = { 70900 },	-- Innovating the Engine
					["DisablePartySync"] = true,
					["timeline"] = { ADDED_10_0_5 },
					["sym"] = {{"select","itemID",199197}},	-- Bottled Essence x5
				}),
			}),
		}),
		prof(FISHING, bubbleDown({ ["requireSkill"] = FISHING }, {
			n(QUESTS, {
				q(72252, {	-- Dragon Isles Fishing [A]
					["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Fishing.",
					["sourceQuests"] = { 67700 },	-- To the Dragon Isles! [A]
					["provider"] = { "n", 191150 },	-- Danielle Anglers
					["coord"] = { 81.3, 31.3, THE_WAKING_SHORES },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "spellID", 366253 },	-- Dragon Isles Fishing
				}),
				q(72253, {	-- Dragon Isles Fishing [H]
					["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Fishing.",
					["sourceQuests"] = { 65444 },	-- To the Dragon Isles! [H]
					["provider"] = { "n", 190524 },	-- Mora Cloudwalker <Fishing Trainer>
					["coord"] = { 81.0, 29.0, THE_WAKING_SHORES },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "spellID", 366253 },	-- Dragon Isles Fishing
				}),
				q(72729, {	-- The Great Swog
					["provider"] = { "i", 202105 },	-- Rusted Coin of the Isles
				}),
			}),
		})),
		prof(SKINNING, bubbleDown({ ["requireSkill"] = SKINNING }, {
			n(QUESTS, {
				q(70363, {	-- Dragon Isles Skinning
					["description"] = "Do NOT skin any Dragon Isles creatures. This quest can only be picked up PRIOR to learning Dragon Isles Skinning.",
					["sourceQuests"] = {
						67700,	-- To the Dragon Isles! [A]
						65444,	-- To the Dragon Isles! [H]
					},
					["provider"] = { "n", 192558 },	-- Toninaar
					["coord"] = { 76.7, 34.8, THE_WAKING_SHORES },
					["lockCriteria"] = { 1, "spellID", 366263},	-- Dragon Isles Skinning
				}),
				q(70034, {	-- Artisan's Supply: Salamanther Scale
					["provider"] = { "n", 192558 },	-- Toninaar
					["coord"] = { 76.6, 34.8, THE_WAKING_SHORES },
					["cost"] = { { "i", 193252, 3 }, },	-- 3x Salamanther Scales
					["_drop"] = { "g" },
				}),
				q(70259, {	-- Hidden Profession Master Skinning
					["name"] = "Hidden Profession Master: Skinning",
					["provider"] = { "n", 194844 },	-- Zenzi
					["coord"] = { 73.3, 69.7, THE_WAKING_SHORES },
				}),
				q(70193, {	-- Specialized Secrets: Skinning
					["sourceQuests"] = { 69979 },	-- A Worthy Hunt
					["provider"] = { "n", 193110 },	-- Khadin
					["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
					["cost"] = { { "i", 191784, 1 }, },	-- Dragon Shard of Knowledge
					["isRepeatable"] = true,
					["g"] = {
						i(190456),	-- Artisan's Mettle
					},
				}),
			}),
			n(QUESTS, sharedData({
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 193846 },	-- Ralathor the Rugged
				["coord"] = { 28.8, 60.4, VALDRAKKEN },
				["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
				["isWeekly"] = true,
				["g"] = {
					i(199128),	-- Skinning Field Notes
				},
			},{
				q(72158),	-- A Dense Delivery
				q(70619),	-- A Study of Leather
				q(72159),	-- Scaling Down
				q(70620),	-- Scaling Up
			})),
			filter(RECIPES, {
				["description"] = "These are learned by specialization.",
				["g"] = sharedData({ ["cost"] = { { "c", SKINNING_KNOWLEDGE, 1 } }, }, {
					r(383090),	-- Aileron Seamoth Lure
					r(383128),	-- Bottled Pheromones
					r(375787),	-- Cerulean Spinefish Lure
					r(383132),	-- Elusive Creature Bait
					r(385984),	-- Infusion: Decay
					r(385982),	-- Infusion: Earth
					r(385972),	-- Infusion: Frost
					r(385985),	-- Infusion: Titan
					r(383094),	-- Islefin Dorado Lure
					r(375731),	-- Refine Hides++
					r(375763),	-- Refine Hides+++
					r(376611),	-- Refine Leather++
					r(376612),	-- Refine Leather+++
					r(376613),	-- Refine Scales++
					r(376614),	-- Refine Scales+++
					r(375773),	-- Scalebelly Mackerel Lure
					r(375786),	-- Temporal Dragonhead Lure
					r(375782),	-- Thousandbite Piranha Lure
				}),
			}),
			n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
				["isWeekly"] = true,
				["g"] = {
					currency(SKINNING_KNOWLEDGE),
				},
			},{
				i(199128),	-- Skinning Field Notes
				q(74114, {	-- Inscription Order: Skinning
					["name"] = "Inscription Order: Skinning",
					["description"] = "Requires a crafting order from Inscription.",
					["provider"] = { "i", 201023 },	-- Draconic Treatise on Skinning
				}),
				q(70381, {	-- Weekly Skinning Knowledgepoint #1
					["name"] = "Weekly Skinning Knowledgepoint #1",
					["provider"] = { "i", 198837 },	-- Curious Hide Scraps
				}),
				q(70383, {	-- Weekly Skinning Knowledgepoint #2
					["name"] = "Weekly Skinning Knowledgepoint #2",
					["provider"] = { "i", 198837 },	-- Curious Hide Scraps
				}),
				q(70384, {	-- Weekly Skinning Knowledgepoint #3
					["name"] = "Weekly Skinning Knowledgepoint #3",
					["provider"] = { "i", 198837 },	-- Curious Hide Scraps
				}),
				q(70385, {	-- Weekly Skinning Knowledgepoint #4
					["name"] = "Weekly Skinning Knowledgepoint #4",
					["provider"] = { "i", 198837 },	-- Curious Hide Scraps
				}),
				q(70386, {	-- Weekly Skinning Knowledgepoint #5
					["name"] = "Weekly Skinning Knowledgepoint #5",
					["provider"] = { "i", 198837 },	-- Curious Hide Scraps
				}),
				q(70389, {	-- Weekly Skinning Knowledgepoint #6
					["name"] = "Weekly Skinning Knowledgepoint #6",
					["provider"] = { "i", 198841 },	-- Large Sample of Curious Hide
				}),
			})),
		})),
		n(SPECIAL, {
			i(200932, {	-- Encaged Airy Soul
				["description"] = "In order to capture a soul with Empty Soul Cage, the elite air elemental must die while having the Zapthrottle Soul Inhaler debuff.\n\nOnce you receive the soul, do not open the item until the Encaged turns into Docile, which will happen once the 15-minute timer expires.",
				["cost"] = {
					{ "i", 200938, 1 },	-- 1x Empty Soul Cage
					{ "i", 199414, 1 },	-- 1x Zapthrottle Soul Inhaler
				},
				["coord"] = { 58.2, 66.6, THE_AZURE_SPAN },
				["g"] = {
					i(201296, {	-- Docile Airy Soul
						i(193921),	-- Airy Soul
						i(201262),	-- Gale Spirit (PET!)
					}),
				},
			}),
			i(200936, {	-- Encaged Earthen Soul
				["description"] = "In order to capture a soul with Empty Soul Cage, the elite earth elemental must die while having the Zapthrottle Soul Inhaler debuff.\n\nOnce you receive the soul, do not open the item until the Encaged turns into Docile, which will happen once the 15-minute timer expires.",
				["cost"] = {
					{ "i", 200938, 1 },	-- 1x Empty Soul Cage
					{ "i", 199414, 1 },	-- 1x Zapthrottle Soul Inhaler
				},
				["coords"] = {
					{ 49.8, 32.8, THE_WAKING_SHORES },
					{ 46.8, 32.8, THE_WAKING_SHORES },
					{ 77.8, 38.8, THE_AZURE_SPAN },
				},
				["g"] = {
					i(201297, {	-- Docile Earthen Soul
						i(193920),	-- Earthen Soul
						i(201260),	-- Dust Spirit (PET!)
					}),
				},
			}),
			i(200931, {	-- Encaged Fiery Soul
				["description"] = "In order to capture a soul with Empty Soul Cage, the elite fire elemental must die while having the Zapthrottle Soul Inhaler debuff.\n\nOnce you receive the soul, do not open the item until the Encaged turns into Docile, which will happen once the 15-minute timer expires.",
				["cost"] = {
					{ "i", 200938, 1 },	-- 1x Empty Soul Cage
					{ "i", 199414, 1 },	-- 1x Zapthrottle Soul Inhaler
				},
				["coord"] = { 78.4, 38.8, THE_AZURE_SPAN },
				["g"] = {
					i(201298, {	-- Docile Fiery Soul
						i(193362),	-- Fiery Soul
						i(201261),	-- Blaze Spirit (PET!)
					}),
				},
			}),
			i(200934, {	-- Encaged Frosty Soul
				["description"] = "In order to capture a soul with Empty Soul Cage, the elite frost elemental must die while having the Zapthrottle Soul Inhaler debuff.\n\nOnce you receive the soul, do not open the item until the Encaged turns into Docile, which will happen once the 15-minute timer expires.",
				["cost"] = {
					{ "i", 200938, 1 },	-- 1x Empty Soul Cage
					{ "i", 199414, 1 },	-- 1x Zapthrottle Soul Inhaler
				},
				["coord"] = { 58.2, 66.6, THE_AZURE_SPAN },
				["g"] = {
					i(201299, {	-- Docile Frosty Soul
						i(193919),	-- Frosty Soul
						i(201265),	-- Tide Spirit (PET!)
					}),
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, m(DRAGON_ISLES, {
	m(VALDRAKKEN, {
		q(70846, {	-- Dragonscale Expedition: Help Needed!
			["provider"] = { "n", 196448 },	-- Aspiring Goblin Enginner
			["coord"] = { 40.8, 48.3, VALDRAKKEN },
			-- existed in Beta, marked obsolete by Blizzard, pops on unlocking alt spark skip
			["timeline"] = { ADDED_10_0_0 },
			["isBreadcrumb"] = true,
		}),
		q(72340),	-- Triggered on unlocking alt spark skip

		q(76124),	-- After turn in 'Deepflayer Dust' (questID 75363) (spellID 411875)
		q(76125),	-- After turn in 'Fascinating Fungi' (questID 75371) (spellID 411876)
		q(76126),	-- After turn in 'Blacksmith, Black Dragon' (questID 75569) (spellID 411878)
		q(76127),	-- After turn in 'Ancient Techniques' (questID 75148) (spellID 411879)
		q(76128),	-- After turn in 'Relic Rustler' (questID 75865) (spellID 411880)
		q(76129),	-- After turn in 'Incandescence' (questID 75150) (spellID 411881)
		q(76130),	-- After turn in 'Ballistae Bits' (questID 75575) (spellID 411882)
		q(76131),	-- After turn in 'Titan Trash or Titan Treasure?' (questID 75608) (spellID 411883)
		q(76132),	-- After turn in 'Proclamation Reclamation' (questID 75573) (spellID 411884)
		q(76133),	-- After turn in 'Obsidian Essays' (questID 75149) (spellID 411885)
		q(76134),	-- After turn in 'Cephalo-Crystalization' (questID 75362) (spellID 411886)
		q(76135),	-- After turn in 'Chips off the Old Crystal Block' (questID 75602) (spellID 411887)
		q(76136),	-- After turn in 'Mycelium Mastery' (quest ID 75354) (spellID 411888)
		q(76137),	-- After turn in 'Stones and Scales' (questID 75368) (spellID 411889)
		q(76138),	-- After turn in 'Silk Scavenging' (questID 75407) (spellID 411890)
		q(76139),	-- After turn in 'Silk's Silk' (questID 75600) (spellID 411891)
	}),
}));