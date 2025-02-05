
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		n(PROFESSIONS, {
			["maps"] = {
				LEGION_DALARAN,
			},
			["g"] = {
				prof(ENGINEERING, {
					q(40545, {	-- Aww Scrap!
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["g"] = {
							recipe(264490),	-- Legion Engineering
						},
					}),
					q(40854, {	-- Endless Possibilities
						["sourceQuests"] = { 40545 },	-- Aww Scrap!
						["provider"] = { "n", 102193 },	-- Filgo Scrapbottom
						["coord"] = { 66.4, 53.4, LEGION_THE_UNDERBELLY },
					}),
					q(40855, {	-- Our Man in Azsuna
						["sourceQuests"] = { 40854 },	-- Endless Possibilities
						["provider"] = { "n", 93520 },	-- Didi the Wrench
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
					}),
					q(40856, {	-- It'll Cost You
						["sourceQuest"] = 40855,	-- Our Man in Azsuna
						["provider"] = { "n", 102195 },	-- Fargo Flintlocke
						["coord"] = { 65.2, 24.8, AZSUNA },
					}),
					q(40859, {	-- The Latest Fashion: Headguns!
						["sourceQuest"] = 40855,	-- Our Man in Azsuna
						["provider"] = { "n", 102195 },	-- Fargo Flintlocke
						["coord"] = { 65.2, 24.8, AZSUNA },
						["g"] = {
							recipe(198939),	-- Schematic: Blink-Trigger Headgun
							recipe(198965),	-- Schematic: Tactical Headgun
							recipe(198966),	-- Schematic: Bolt-Action Headgun
							recipe(198967),	-- Schematic: Reinforced Headgun
						},
					}),
					q(40858, {	-- The Missing Pieces
						["sourceQuests"] = {
							40856,	-- It'll Cost You
							40859,	-- The Latest Fashion: Headguns!
						},
						["provider"] = { "n", 102195 },	-- Fargo Flintlocke
						["coord"] = { 65.2, 24.8, AZSUNA },
						["g"] = {
							recipe(198976),	-- Schematic: Auto-Hammer [Rank 1]
						},
					}),
					q(40863, {	-- Always the Last Thing
						["sourceQuests"] = { 40858 },	-- The Missing Pieces
						["provider"] = { "n", 93520 },	-- Didi the Wrench
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["g"] = {
							recipe(198982),	-- Reaves Battery
						},
					}),
					q(40864, {	-- Modular Modifications
						["sourceQuests"] = { 40863 },	-- Always the Last Thing
						["provider"] = { "n", 93520 },	-- Didi the Wrench
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["g"] = {
							recipe(198984),	-- Reaves Module: Repair Mode
							recipe(198988),	-- Reaves Module: Snack Distrubition Mode
						},
					}),
					q(46128, {	-- Time for a Recharge
						["sourceQuests"] = { 40864 },	-- Modular Modifications
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["g"] = {
							recipe(235775),	-- Rechargeable Reaves Battery
						},
					}),
					q(40860, {	-- Resupplying the Line
						["sourceQuests"] = { 40858 },	-- The Missing Pieces
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
					}),
					q(40862, {	-- All Charged Up
						["sourceQuests"] = { 40860 },	-- Resupplying the Line
						["provider"] = { "n", 102197 },	-- Fargo Flintlocke
						["coord"] = { 59.8, 62.2, VALSHARAH },
					}),
					q(40861, {	-- In My Sights
						["sourceQuests"] = { 40860 },	-- Resupplying the Line
						["provider"] = { "n", 102197 },	-- Fargo Flintlocke
						["coord"] = { 59.8, 62.2, VALSHARAH },
					}),
					q(40870, {	-- Here Comes the BOOM!
						["sourceQuests"] = {
							40862,	-- All Charged Up
							40861,	-- In My Sights
						},
						["provider"] = { "n", 93520 },	-- Didi the Wrench
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["g"] = {
							recipe(198987),	-- Reaves Module: Fireworks Display Mode
						},
					}),
					q(40869, {	-- Fire and Forget
						["sourceQuests"] = {
							40862,	-- All Charged Up
							40861,	-- In My Sights
						},
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["g"] = {
							recipe(198974),	-- Pump-Action Bandage Gun [Rank 1] (RECIPE!)
						},
					}),
					q(40865, {	-- It's Not Rocket Science
						["sourceQuests"] = {
							40862,	-- All Charged Up
							40861,	-- In My Sights
						},
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
					}),
					q(40867, {	-- Bubble Baubles
						["sourceQuests"] = { 40865 },	-- It's Not Rocket Science
						["provider"] = { "n", 102198 },	-- Fargo Flintlocke
						["coord"] = { 78.2, 57.2, STORMHEIM },
					}),
					q(40866, {	-- The Shell, You Say?
						["sourceQuests"] = { 40865 },	-- It's Not Rocket Science
						["provider"] = { "n", 102198 },	-- Fargo Flintlocke
						["coord"] = { 78.2, 57.2, STORMHEIM },
						["g"] = {
							-- recipe(201596),	-- Schematic: Sonic Environment Enhancer(Spell that is cast on you to learn the following recipe.  Not collectible)
							recipe(200466),	-- Schematic: Sonic Environment Enhancer
						},
					}),
					q(40868, {	-- Wibbly-Wobbly, Timey-Wimey
						["sourceQuests"] = {
							40866,	-- The Shell, You Say?
							40867,	-- Bubble Baubles
						},
						["provider"] = { "n", 102198 },	-- Fargo Flintlocke
						["coord"] = { 78.2, 57.2, STORMHEIM },
						["g"] = {
							sp(201602),	-- Schematic: Intra-Dalaran Wormhole Generator
						},
					}),
					q(40871, {	-- 'Locke and Load
						["sourceQuests"] = { 40868 },	-- Wibbly-Wobbly, Timey-Wimey
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
					}),
					q(40872, {	-- Going Out With a Bang
						["sourceQuests"] = { 40871 },	-- 'Locke and Load
						["provider"] = { "n", 102196 },	-- Fargo Flintlocke
						["coord"] = { 43.0, 62.8, AZSUNA },
						["g"] = {
							sp(201606),	-- Schematic: Gunshoes
							recipe(198978),	-- Gunshoes
							i(133941),	-- Hobart's Prototype Gunshoes
						},
					}),
					q(40873, {	-- Keep Yer Powder Dry
						["sourceQuests"] = { 40872 },	-- Going Out With a Bang
						["provider"] = { "n", 102196 },	-- Fargo Flintlocke
						["coord"] = { 43.0, 62.8, AZSUNA },
						["g"] = {
							sp(201607),	-- Schematic: Gunpack
							recipe(198975),	-- Gunpack Rank 1
						},
					}),
					q(40874, {	-- I'd Do It Myself, But...
						["sourceQuests"] = { 40872 },	-- Going Out With a Bang
						["provider"] = { "n", 102196 },	-- Fargo Flintlocke
						["coord"] = { 43.0, 62.8, AZSUNA },
					}),
					q(40875, {	-- Going to Waste
						["sourceQuests"] = { 40872 },	-- Going Out With a Bang
						["provider"] = { "n", 102196 },	-- Fargo Flintlocke
						["coord"] = { 43.0, 62.8, AZSUNA },
						["g"] = {
							sp(201608),	-- Schematic: Failure Detection Pylon
							recipe(198977),	-- Failure Detection Pylon Rank 1
						},
					}),
					q(40876, {	-- 'Locke, Stock and Barrel
						["sourceQuests"] = {
							40873,	-- Keep Yer Powder Dry
							40874,	-- I'd Do It Myself, But...
							40875,	-- Going to Waste
						},
						["provider"] = { "n", 102196 },	-- Fargo Flintlocke
						["coord"] = { 43.0, 62.8, AZSUNA },
						["g"] = {
							-- Schematic: Better Headguns
							--["recipeID"] = 201611,	-- Schematic: Better Headguns(Spell that is cast on you to learn the following recipes.  Not collectible)
							recipe(198991),	-- Blink-Trigger Headgun [Rank 2] (RECIPE!)
							recipe(198993),	-- Bolt-Action Headgun [Rank 2] (RECIPE!)
							recipe(198994),	-- Reinforced Headgun [Rank 2] (RECIPE!)
							recipe(198992),	-- Tactical Headgun [Rank 2] (RECIPE!)
						},
					}),
					q(40877, {	-- Halls of Valor: Trigger Happy
						["sourceQuests"] = { 40876 },	-- 'Locke, Stock and Barrel
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["maps"] = { 703, 704, 705 },	-- Halls of Valor
						["g"] = {
							recipe(198981),	-- Trigger
						},
					}),
					q(40878, {	-- Assault on Violet Hold: Cheating Death
						["sourceQuests"] = { 40876 },	-- 'Locke, Stock and Barrel
						["provider"] = { "n", 93520 },	-- Didi the Wrench
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["maps"] = { 732 },	-- Assault of Violet Hold (Legion)
						["g"] = {
							recipe(198985),	-- Reaves Module: Failure Detection Mode
						},
					}),
					q(40882, {	-- Court of Stars: Revamping the Recoil
						["sourceQuests"] = {
							40877,	-- Halls of Valor: Trigger Happy
							-- 40878,	-- Assault on Violet Hold: Cheating Death [not required. 2023-09-25]
						},
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["maps"] = { 761, 762, 763 },	-- Court of Stars
						["g"] = {
							i(133671),	-- Schematic: Semi-Automagic Cranial Cannon
							i(133672),	-- Schematic: Sawed-Off Cranial Cannon
							i(133673),	-- Schematic: Double-Barreled Cranial Cannon
							i(133674),	-- Schematic: Ironsight Cranial Cannon
						},
					}),
					q(46119, {	-- Boon of the Builder
						["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						["provider"] = { "n", 93539 },	-- Hobart Grapplehammer
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
					}),
					q(40880, {	-- Short Circuit
						["sourceQuests"] = {
							40877,	-- Halls of Valor: Trigger Happy
							40878,	-- Assault on Violet Hold: Cheating Death
						},
						["provider"] = { "n", 93520 },	-- Didi the Wrench
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["g"] = {
							recipe(198980),	-- Blingtron's Circuit Design Tutorial
						},
					}),
					q(40881, {	-- Oil Rags to Riches
						["sourceQuests"] = { 40880 },	-- Short Circuit
						["provider"] = { "o", 246438 },	-- Blingtron Circuit Design
						["coord"] = { 69.5, 68.4, TANARIS },
						["g"] = {
							i(141849),	-- Schematic: Reaves Module: Bling Mode
						},
					}),
					q(40879, {	-- It's On With Automatons
						["sourceQuests"] = { 40881 },	-- Oil Rags to Riches
						["provider"] = { "n", 93520 },	-- Didi the Wrench
						["coord"] = { 38.6, 25.0, LEGION_DALARAN },
						["g"] = {
							recipe(198990),	-- Reaves Module: Piloted Combat Mode
						},
					}),
				}),
				prof(JEWELCRAFTING, {
					q(40523,  {	-- Facet-nating Friends
						["coord"] = { 40.3, 34.7, LEGION_DALARAN },
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["g"] = {
							recipe(264546),	-- Legion Jewelcrafting
						},
					}),
					q(40529,  {	-- Truly Outrageous
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40523 },	-- Facet-nating Friends
						["g"] = {
							recipe(195850),	-- Versatile Skystone
						},
					}),
					q(40530,  {	-- An Eye for Detail
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40529 },	-- Truly Outrageous
					}),
					q(40531,  {	-- Swift Vengeance
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40530 },	-- An Eye for Detail
					}),
					q(40532,  {	-- Making the Cut (Deadly Deep Amber)
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["g"] = {
							recipe(195848),	-- Deadly Deep Amber
						},
					}),
					q(40534,  {	-- Making the Cut (Masterful Queen's Opal)
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["g"] = {
							recipe(195851),	-- Masterful Queen's Opal
						},
					}),
					q(40533,  {	-- Making the Cut (Quick Azsunite)
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuest"] = 40531,	-- Swift Vengeance
						["g"] = {
							recipe(195849),	-- Quick Azsunite
						},
					}),
					q(40524,  {	-- A Familiar Ring to It
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuest"] = 40523,	-- Facet-nating Friends
					}),
					q(40525, {	-- Getting the Band Back Together
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["sourceQuest"] = 40524,	-- A Familiar Ring to It
					}),
					q(42214, {	-- Knocked for a Loop
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["sourceQuest"] = 40524,	-- A Familiar Ring to It
						["requireSkill"] = JEWELCRAFTING,
					}),
					q(40528, {	-- Finishing Touches (Azsunite Loop)
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["g"] = {
							i(137794),	-- Design: Azsunite Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40526, {	-- Finishing Touches (Skystone Loop)
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["g"] = {
							i(137793),	-- Design: Skystone Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40527, {	-- Finishing Touches (Deep Amber Loop)
						["provider"] = { "n", 100538 },	-- Timothy Jones
						["coord"] = { 46.6, 41.4, AZSUNA },
						["description"] = "You can pick one recipe to learn first, and then purchase the other two recipes from Jabrul.",
						["sourceQuests"] = {
							42214,	-- Knocked for a Loop
							40525,	-- Getting the Band Back Together
						},
						["g"] = {
							i(137792),	-- Design: Deep Amber Loop [Rank 1] (RECIPE!)
						},
					}),
					q(40535,  {	-- Raising the Drogbar
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = {
							40532,	-- Making the Cut (Deadly Deep Amber)
							40534,	-- Making the Cut (Masterful Queen's Opal)
							40533,	-- Making the Cut (Quick Azsunite)
							40527,	-- Finishing Touches (Deep Amber Loop)
							40526,	-- Finishing Touches (Skystone Loop)
							40528,	-- Finishing Touches (Azsunite Loop)
						},
					}),
					q(40536, {	-- Bruls Before Jewels
						["provider"] = { "n", 100776 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 45.3, 73.3, VALSHARAH },
						["sourceQuest"] = 40535,	-- Raising the Drogbar
						["groups"] = {
							i(132469),	-- Design: Azsunite Pendant
							i(132468),	-- Design: Deep Amber Pendant
							i(132467),	-- Design: Skystone Pendant
						},
					}),
					q(40538,  {	-- Lapidary Lessons
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40536 },	-- Bruls Before Jewels
						["g"] = {
							recipe(195854),	-- Versatile Maelstrom Sapphire
						},
					}),
					q(40539,  {	-- Hidden Intentions
						["provider"] = { "n", 100939 },	-- Clive Cozen
						["coord"] = { 38.3, 36.2, LEGION_DALARAN },
						["sourceQuests"] = { 40536 },	-- Bruls Before Jewels
						["g"] = {
							recipe(195881),	-- Jeweled Lockpick
						},
					}),
					q(40540,  {	-- Come at Me, Brul
						["provider"] = { "n", 93526 },	-- Tiffany Cartier
						["coord"] = { 40.2, 34.6, LEGION_DALARAN },
						["sourceQuests"] = { 40538 },	-- Lapidary Lessons
					}),
					q(40541, {	-- The Charge Within
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40540 },	-- Come at Me, Brul
					}),
					q(40546, {	-- Mysteries of Nature
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40541 },	-- The Charge Within
						["g"] = {
							recipe(195883),	-- Chatterstone
						},
					}),
					q(40542, {	-- Eyes of Nashal
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["g"] = {
							sp(199417),	-- Design: Deadly Eye of Prophecy
							recipe(195852),	-- Deadly Eye of Prophecy
						},
					}),
					q(40543, {	-- Eyes of Nashal
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["g"] = {
							sp(199418),	-- Design: Quick Dawnlight
							recipe(195853),	-- Quick Dawnlight
						},
					}),
					q(40544, {	-- Eyes of Nashal
						["provider"] = { "n", 100499 },	-- Jabrul <Jewelcrafting Master>
						["coord"] = { 42.2, 35.0, STORMHEIM },
						["sourceQuests"] = { 40546 },	-- Mysteries of Nature
						["g"] = {
							sp(199419),	-- Design: Masterful Shadowruby
							recipe(195855),	-- Masterful Shadowruby
						},
					}),
					q(40556, {	-- Jabrul Needs You
						["provider"] = { "o", 246250 },	-- Letter From Jabrul
						["coord"] = { 40.0, 35.3, LEGION_DALARAN },
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							40542,	-- Eyes of Nashal
							40543,	-- Eyes of Nashal
							40544,	-- Eyes of Nashal
						},
					}),
					q(40547, {	-- To Dalaran, With Love
						["provider"] = { "n", 100521 },	-- Jabrul
						["coord"] = { 56.4, 59.6, AZSUNA },
						["sourceQuests"] = { 40556 },	-- Jabrul Needs You
					}),
					q(40558, {	-- Socket to Me
						["provider"] = { "o", 246154 },	-- Broken Toy Box
						["coord"] = { 40.0, 35.3, LEGION_DALARAN },
						["sourceQuests"] = { 40547 },	-- To Dalaran, With Love
						["g"] = {
							recipe(195882),	-- JewelCraft
						},
					}),
					q(40559,  {	-- Black Rook Hold: The Raven's Wisdom
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35, LEGION_DALARAN },
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["maps"] = { 751, 752, 753, 754, 755, 756 },	-- The Black Rook Hold
						["g"] = {
							i(137800),	-- Dawnlight Band [Rank 1] (RECIPE!)
						},
					}),
					q(40561,  {	-- Halls of Valor: Jewel of the Heavens
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35, LEGION_DALARAN },
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["maps"] = { 703, 704, 705 },	-- Halls of Valor
						["g"] = {
							i(137799),	-- Maelstrom Band [Rank 1] (RECIPE!)
						},
					}),
					q(40560,  {	-- Maw of Souls: Spiriting Away
						["provider"] = { "n", 93527 },	-- Timothy Jones
						["coord"] = { 39.8, 35, LEGION_DALARAN },
						["sourceQuests"] = { 40558 },	-- Socket to Me
						["maps"] = { 706, 707, 708 },	-- Maw of Souls
						["g"] = {
							i(137798),	-- Prophetic Band [Rank 1] (RECIPE!)
						},
					}),
					q(40562,  {	-- A Personal Touch
						["provider"] = { "n", 93543 },	-- Sminx Glasseye
						["coord"] = { 39.8, 35, LEGION_DALARAN },
						["sourceQuests"] = {
							40559,	-- Black Rook Hold: The Raven's Wisdom
							40561,	-- Halls of Valor: Jewel of the Heavens
							40560,	-- Maw of Souls: Spiriting Away
						},
						["g"] = {
							sp(199991),	-- Design: Class Necklace
						},
					}),
				}),
				prof(LEATHERWORKING, {}),
				prof(TAILORING, {
					q(38944, {	-- Sew It Begins
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["g"] = {
							recipe(264628),	-- Legion Tailoring
						},
					}),
					q(38945, {	-- This Should Be Simple... Right?
						["sourceQuests"] = { 38944 },	-- Sew It Begins
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["g"] = {
							recipe(185920),	-- Silkweave Epaulets
							recipe(185919),	-- Silkweave Cinch
						},
					}),
					q(38946, {	-- Consult the Locals
						["sourceQuests"] = { 38945 },	-- This Should Be Simple... Right?
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38947, {	-- Runic Catgut
						["sourceQuests"] = { 38946 },	-- Consult the Locals
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 60.0, 34.6, AZSUNA },
					}),
					q(38948, {	-- Hard Times
						["sourceQuests"] = { 38946 },	-- Consult the Locals
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 60.0, 34.6, AZSUNA },
					}),
					q(38949, {	-- So You Think You Can Sew
						["sourceQuests"] = {
							38947,	-- Runic Catgut
							38948,	-- Hard Times
						},
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 60.0, 34.6, AZSUNA },
						["g"] = {
							r(186763, {["u"]=15}),	-- Rune-Threaded Silkweave Robe
							r(186764, {["u"]=15}),	-- Rune-Threaded Silkweave Bracers
							r(185918),	-- Silkweave Bracers [Rank 1]
							r(185925),	-- Silkweave Robe [Rank 1]
						},
					}),
					q(38950, {	-- The Wayward Tailor
						["sourceQuests"] = { 38949 },	-- So You Think You Can Sew
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 60.0, 34.6, AZSUNA },
					}),
					q(38951, {	-- A Needle Need
						["sourceQuests"] = { 38950 },	-- The Wayward Tailor
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38952, {	-- Meticulous Precision
						["sourceQuests"] = { 38951 },	-- A Needle Need
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38953, {	-- Advanced Needlework
						["sourceQuests"] = { 38952 },	-- Meticulous Precision
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["g"] = {
							r(186799, {["u"]=15}),	-- Basic Slikweave Robe
							r(186801, {["u"]=15}),	-- Embroidered Slikweave Robe
							r(185935),	-- Silkweave Cinch [Rank 2]
						},
					}),
					q(38954, {	-- Where's Lyndras?
						["sourceQuests"] = { 38953 },	-- Advanced Needlework
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38955, {	-- Sew Far, Sew Good
						["sourceQuests"] = { 38954 },	-- Where's Lyndras?
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["g"] = {
							recipe(186388),	-- Silkweave Satchel
						},
					}),
					q(38956, {	-- Where's Lyndras Again?
						["sourceQuests"] = { 38955 },	-- Sew Far, Sew Good
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38957, {	-- Taking Inspiration
						["sourceQuests"] = { 38956 },	-- Where's Lyndras Again?
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["g"] = {
							recipe(185921),	-- Silkweave Pantaloons [Rank 1] (RECIPE!)
						},
					}),
					q(38958, {	-- The Right Color
						["sourceQuests"] = { 38956 },	-- Where's Lyndras Again?
						["provider"] = { "n", 93525 },	-- Ainderu Summerleaf
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["g"] = {
							recipe(185924),	-- Silkweave Slippers [Rank 1] (RECIPE!)
						},
					}),
					q(38959, {	-- Left Behind
						["sourceQuests"] = {
							38958,	-- The Right Color
							38958,	-- Taking Inspiration
						},
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38960, {	-- Lining Them Up
						["sourceQuests"] = {
							38958,	-- The Right Color
							38958,	-- Taking Inspiration
						},
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38963, {	-- The Final Lesson?
						["sourceQuests"] = {
							38959,	-- Left Behind
							38960,	-- Lining Them Up
						},
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["g"] = {
							r(187058, {["u"]=15}),	-- Slikweave Hood Lining
							r(187059, {["u"]=15}),	-- Slikweave Hood: Outer Layer
							r(187060, {["u"]=15}),	-- Handcrafted Slikweave Hood
							recipe(185922),	-- Silkweave Hood [Rank 1] (RECIPE!)
						},
					}),
					q(38961, {	-- Eye of Azshara: The Depraved Nightfallen
						["sourceQuests"] = { 38963 },	-- The Final Lesson?
						["provider"] = { "n", 93967 },	-- Lyndras
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["maps"] = { 713 },	-- Eye of Azshara
						["g"] = {
							recipe(185923),	-- Silkweave Gloves [Rank 1] (RECIPE!)
						},
					}),
					q(38964, {	-- Where's Lyndras Now?
						["sourceQuests"] = { 38961 },	-- Eye of Azshara: The Depraved Nightfallen
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(39602, {	-- Where's Lyndras: Sewer Sleuthing
						["sourceQuests"] = { 38964 },	-- Where's Lyndras Now?
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(39605, {	-- Where's Lyndras: Downward Spiral
						["sourceQuests"] = {
							38964,	-- Where's Lyndras Now?
							39602,	-- Where's Lyndras: Sewer Sleuthing
						},
						["provider"] = { "o", 243899 },	-- Broken Ley Flame Burner
						["coord"] = { 56.2, 68.4, LEGION_DALARAN }
					}),
					q(39667, {	-- Where's Lyndras: Leyflame Larceny
						["sourceQuests"] = { 39605 },	-- Where's Lyndras: Downward Spiral
						["provider"] = { "o", 243899 },	-- Broken Ley Flame Burner
						["coord"] = { 56.2, 68.4, LEGION_DALARAN }

					}),
					q(38965, {	-- Assault on Violet Hold: Into the Hold
						["sourceQuests"] = { 39667 },	-- Where's Lyndras: Leyflame Larceny
						["provider"] = { "n", 96444 },	-- Violet Hold Guard
						["coord"] = { 65.2, 67.4, LEGION_DALARAN },
						["maps"] = { 732 },	-- Assault of Violet Hold (Legion)
					}),
					q(38966, {	-- Secret Silkweaving Methods
						["sourceQuests"] = { 38965 },	-- Assault on Violet Hod: Into the Hold
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
						["g"] = {
							recipe(185937),	-- Silkweave Pantaloons [Rank 2] (RECIPE!)
							recipe(185938),	-- Silkweave Hood [Rank 2] (RECIPE!)
							recipe(185939),	-- Silkweave Gloves [Rank 2] (RECIPE!)
							recipe(185940),	-- Silkweave Slippers [Rank 2] (RECIPE!)
						},
					}),
					q(38962, {	-- The Path to Suramar City
						["sourceQuests"] = { 38966 },	-- Secret Silkweaving Methods
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38967, {	-- The Nightborne Connection
						["sourceQuests"] = { 38962 },	-- The Path to Suramar City
						["provider"] = { "n", 93542 },	-- Tanithria
						["coord"] = { 35.2, 34.2, LEGION_DALARAN },
					}),
					q(38968, {	-- Proof of Loyalty
						["sourceQuests"] = { 38967 },	-- The Nightborne Connection
						["provider"] = { "n", 93969 },	-- Leyweaver Tytallo
						["coord"] = { 40.4, 69.4, SURAMAR },
					}),
					q(38969, {	-- Master of Silkweave
						["sourceQuests"] = { 38962 },	-- The Path to Suramar City
						["provider"] = { "n", 93971 },	-- Leyweaver Inondra
						["coord"] = { 40.4, 69.4, SURAMAR },
					}),
					q(38970, {	-- The Queen's Grace Loom
						["sourceQuests"] = {
							38969,	-- Proof of Loyalty
							38969,	-- Master of Silkweave
						},
						["provider"] = { "n", 93969 },	-- Leyweaver Tytallo
						["coord"] = { 40.4, 69.4, SURAMAR },
						["g"] = {
							r(185962),	-- Imbued Silkweave
							r(185926),	-- Imbued Silkweave Bracers [Rank 1]
						},
					}),
					q(38971, {	-- Exotic Textiles
						["sourceQuests"] = { 38970 },	-- The Queen's Grace Loom
						["provider"] = { "n", 93978 },	-- Leyweaver Athystro
						["coord"] = { 26.6, 71.4, SURAMAR },
						["g"] = {
							r(185931),	-- Pattern: Imbued Silkweave Gloves [Rank 1] (RECIPE!)
						},
					}),
					q(38974, {	-- Halls of Valor: The Right Question
						["sourceQuests"] = { 38971 },	-- Exotic Textiles
						["provider"] = { "n", 93977 },	-- Leyweaver Tellumi
						["coord"] = { 65.6, 56.2, STORMHEIM },
						["maps"] = { 703, 704, 705 },	-- Halls of Valor
						["g"] = {
							r(185929),	-- Pattern: Imbued Silkweave Pantaloons [Rank 1] (RECIPE!)
						},
					}),
					q(38975, {	-- Inspire Me!
						["sourceQuests"] = { 38970 },	-- The Queen's Grace Loom
						["provider"] = { "n", 93976 },	-- Leyweaver Mithrogane
						["coord"] = { 40.2, 69.6, SURAMAR },
						["g"] = {
							r(185933),	-- Pattern: Imbued Silkwave Robes [Rank 1] (RECIPE!)
						},
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, {
	n(PROFESSIONS, {
		prof(ALCHEMY, {
			q(42083),	-- on turn-in of (42081)
		}),
	}),
});
