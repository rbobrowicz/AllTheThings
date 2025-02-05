-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local SKINNING_KNOWLEDGE = 2033;
-- Skinning - Skill ID 393 / Spell ID 8613
root(ROOTS.Professions, prof(SKINNING, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18834, {	-- Broken Isles Skinning Techniques
			crit(61485, {	-- Felhide
				["sourceQuests"] = { 40159 },	-- The Emerald Nightmare: The Pestilential Hide of Nythendra
			}),
			crit(61486, {	-- Fiendish Leather
				["sourceQuests"] = { 48042 },	-- Order of Operations
				["provider"] = { "i", 151868 },	-- Corrupted Tooth
			}),
			crit(61487, {	-- Legion Butchery
				["provider"] = { "i", 139895 },	-- Skinning Technique: Legion Butchery
			}),
			crit(61488, {	-- Legion Gutting
				["provider"] = { "i", 139896 },	-- Skinning Technique: Legion Gutting
			}),
			crit(61489, {	-- Stonehide Leather
				["sourceQuests"] = { 40140 },	-- Ske'rit's Leather Handbook
			}),
			crit(61490, {	-- Stormscale
				["sourceQuests"] = { 40155 },	-- Ske'rit's Scale-Skinning Suggestions
			}),
			crit(61491, {	-- Unbroken Claw
				["provider"] = { "i", 139894 },	-- Skinning Technique: Unbroken Claw
			}),
			crit(61492, {	-- Unbroken Tooth
				["provider"] = { "i", 139893 },	-- Skinning Technique: Unbroken Tooth
			}),
		}),
		ach(18831, {	-- Elusive Beasts of the Dragon Isles (15)
			crit(61435, {	-- Elusive Salamanther
				["crs"] = { 193854 },	-- Elusive Salamanther
			}),
			crit(61437, {	-- Elusive Vorquin
				["crs"] = { 193855 },	-- Elusive Vorquin
			}),
			crit(61438, {	-- Elusive Proto Dragon
				["crs"] = { 193857 },	-- Elusive Proto Dragon
			}),
			crit(61439, {	-- Elusive Thunder Lizard
				["crs"] = { 193859 },	-- Elusive Thunder Lizard
			}),
			crit(61440, {	-- Elusive Lava Phoenix
				["crs"] = { 193860 },	-- Elusive Lava Phoenix
			}),
			crit(61441, {	-- Elusive Magmammoth
				["crs"] = { 193861 },	-- Elusive Magmammoth
			}),
			crit(61442, {	-- Elusive Fiery Dreadsquall
				["crs"] = { 193862 },	-- Elusive Fiery Dreadsquall
			}),
			crit(61443, {	-- Elusive Snapdragon
				["crs"] = { 193873 },	-- Elusive Snapdragon
			}),
			crit(61443, {	-- Elusive Rockfang
				["crs"] = { 193881 },	-- Elusive Rockfang
			}),
			crit(61445, {	-- Elusive Feral Bakar
				["crs"] = { 193882 },	-- Elusive Feral Bakar
			}),
			crit(61447, {	-- Elusive Hornstrider
				["crs"] = { 193884 },	-- Elusive Hornstrider
			}),
			crit(61448, {	-- Elusive Crystalspine
				["crs"] = { 193891 },	-- Elusive Crystalspine
			}),
			crit(61449, {	-- Elusive Bull
				["crs"] = { 193892 },	-- Elusive Bull
			}),
			crit(61450, {	-- Elusive Stonegazer
				["crs"] = { 193893 },	-- Elusive Stonegazer
			}),
			crit(61451, {	-- Elusive Ottuk
				["crs"] = { 193894 },	-- Elusive Ottuk
			}),
			crit(61452, {	-- Elusive Slyvern
				["crs"] = { 193986 },	-- Elusive Slyvern
			}),
			crit(61453, {	-- Elusive Magmammoth Bull
				["crs"] = { 194060 },	-- Elusive Magmammoth Bull
			}),
			crit(61454, {	-- Elusive Prime Salamanther
				["crs"] = { 194062 },	-- Elusive Prime Salamanther
			}),
			crit(61455, {	-- Elusive Prime Proto Dragon
				["crs"] = { 194063 },	-- Elusive Prime Proto Dragon
			}),
			crit(61456, {	-- Elusive Storm Lizard
				["crs"] = { 194082 },	-- Elusive Storm Lizard
			}),
			crit(61457, {	-- Elusive Elder Rockfang
				["crs"] = { 194085 },	-- Elusive Elder Rockfang
			}),
			crit(61458, {	-- Elusive Elder Slyvern
				["crs"] = { 194102 },	-- Elusive Elder Slyvern
			}),
			crit(61459, {	-- Elusive Rimeclaw Bear
				["crs"] = { 194103 },	-- Elusive Rimeclaw Bear
			}),
			crit(61460, {	-- Elusive Elder Armoredon
				["crs"] = { 194105 },	-- Elusive Elder Armoredon
			}),
			crit(61461, {	-- Elusive Argali
				["crs"] = { 202506 },	-- Elusive Argali
			}),
			crit(61462, {	-- Elusive Elder Argali
				["crs"] = { 202510 },	-- Elusive Elder Argali
			}),
			crit(61463, {	-- Elusive Deepflayer
				["crs"] = { 204819 },	-- Elusive Deepflayer
			}),
			crit(61464, {	-- Elusive Stoneclaw
				["crs"] = { 204820 },	-- Elusive Stoneclaw
			}),
			crit(61465, {	-- Elusive Viper (Lava)
				["crs"] = { 204825 },	-- Elusive Viper (Lava)
			}),
			crit(61466, {	-- Elusive Lavafang
				["crs"] = { 204828 },	-- Elusive Lavafang
			}),
			crit(61467, {	-- Elusive Deepstrider
				["crs"] = { 204833 },	-- Elusive Deepstrider
			}),
			crit(61468, {	-- Elusive Colossal Deepstrider
				["crs"] = { 204834 },	-- Elusive Colossal Deepstrider
			}),
			crit(61469, {	-- Elusive Viper (Rock)
				["crs"] = { 204837 },	-- Elusive Viper (Rock)
			}),
			crit(61470, {	-- Elusive Shalefang
				["crs"] = { 204839 },	-- Elusive Shalefang
			}),
			crit(61471, {	-- Elusive Sulfurstrider
				["crs"] = { 204840 },	-- Elusive Sulfurstrider
			}),
			crit(61472, {	-- Elusive Colossal Sulfurstrider
				["crs"] = { 204841 },	-- Elusive Colossal Sulfurstrider
			}),
		}),
		ach(18832, {	-- Elusive Legend of the Dragon Isles (1)
			["sym"] = {{"partial_achievement",18833}},	-- Elusive Legends of the Dragon Isles
		}),
		ach(18833, {	-- Elusive Legends of the Dragon Isles
			crit(61473, {	-- Elusive Elder Drake
				["crs"] = { 194489 },	-- Elusive Elder Drake
			}),
			crit(61474, {	--  Elusive Elder Frigidpelt
				["crs"] = { 194491 },	-- Elusive Elder Frigidpelt
			}),
			crit(61475, {	-- Elusive Tempest Lizard
				["crs"] = { 195465 },	-- Elusive Tempest Lizard
			}),
			crit(61476, {	-- Elusive Ferocious Titanfang
				["crs"] = { 195472 },	-- Elusive Ferocious Titanfang
			}),
			crit(61477, {	-- Elusive Deepwater Salamanther
				["crs"] = { 195492 },	-- Elusive Deepwater Salamanther
			}),
			crit(61478, {	-- Elusive Proto Skyterror
				["crs"] = { 195509 },	-- Elusive Proto Skyterror
			}),
			crit(61479, {	-- Elusive Cliffdweller Vorquin
				["crs"] = { 195518 },	-- Elusive Cliffdweller Vorquin
			}),
			crit(61480, {	-- Elusive Flourishing Quillbloom
				["crs"] = { 195541 },	-- Elusive Flourishing Quillbloom
			}),
			crit(61481, {	-- Elusive Frenzied Amberfur
				["crs"] = { 202436 },	-- Elusive Frenzied Amberfur
			}),
			crit(61482, {	-- Elusive Auric Argali
				["crs"] = { 202441 },	-- Elusive Auric Argali
			}),
			crit(61483, {	-- Elusive Crystalscale Stonecleaver
				["crs"] = { 204821 },	-- Elusive Crystalscale Stonecleaver
			}),
			crit(61484, {	-- Elusive Magma Cobra
				["crs"] = { 204831 },	-- Elusive Magma Cobra
			}),
		}),
		ach(18835, {	-- Fourth War Skinning Techniques
			crit(61493, {	-- Cragscale
				["sourceQuests"] = {
					56565,	-- Hanging by a Thread [A]
					56566 ,	-- Hanging by a Thread [H]
				},
				["sourceQuestNumRequired"] = 1,
			}),
			crit(61494, {	-- Dredged Leather
				["sourceQuests"] = {
					56562,	-- The Problem with Shrinkage [A]
					56563 ,	-- The Problem with Shrinkage [H]
				},
				["sourceQuestNumRequired"] = 1,
			}),
			crit(61495, {	-- Bone Gathering
				["sourceQuests"] = { 52228 },	-- Atal'Dazar: An Unbreakable Bone Needle
			}),
			crit(61496, {	-- Leather Gathering
				["sourceQuests"] = { 52224 },	-- Ivory Handled Dagger
			}),
			crit(61497, {	-- Scale Gathering
				["sourceQuests"] = { 52226 },	-- Turtle Soup
			}),
		}),
	})),
}));
profession(SKINNING, {
	-- #if AFTER WOD
	-- TODO: This is not timelined
	n(DROPS, {
		i(111351, {		-- A Guide to Skinning in Draenor
			["filterID"] = MISC,
			["description"] = "This can drop from any Warlords of Draenor mob after skinning it.",
		}),
		n(103675, {	-- Felhide Gargantuan
			["description"] = "These mobs are only available during a World Quest. They can only be skinned one time, similarly to the Slice of Bacon cooking quests.",
			["groups"] = {
				i(124116),	-- Felhide
				header(HEADERS.Item, 124116, {	-- Felhide
					q(40156, {	-- Felhide Sample
						["provider"] = { "i", 129863 },	-- Felhide Sample
						["maps"] = {
							AZSUNA,
							HIGHMOUNTAIN,
							STORMHEIM,
							VALSHARAH,
						},
						["groups"] = {
							recipe(194167),	-- Felhide [Rank 1]
						},
					}),
					q(40157, {	-- An Unseemly Task
						["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
						["sourceQuest"] = 40156,	-- Felhide Sample
					}),
					q(40158, {	-- Darkheart Thicket: Demons Be Different
						["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
						["sourceQuest"] = 40157,	-- An Unseemly Task
						["groups"] = {
							recipe(194168),	-- Felhide [Rank 2]
						},
					}),
					q(40159, {	-- The Emerald Nightmare: The Pestilential Hide of Nythendra
						["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
						["sourceQuest"] = 40158,	-- Darkheart Thicket: Demons Be Different
						["groups"] = {
							recipe(194169),	-- Felhide [Rank 3]
						},
					}),
				}),
			},
		}),
		i(151566),	-- Fiendish Leather
		header(HEADERS.Item, 151566, {	-- Fiendish Leather
			q(48040, {	-- Tainted Scraps
				["provider"] = { "i", 151866 },	-- Tainted Scraps
				["maps"] = {
					ANTORAN_WASTES,
					KROKUUN,
					EREDATH,
				},
				["groups"] = {
					recipe(247842),	-- Fiendish Leather [Rank 1]
				},
			}),
			q(48041, {	-- A Larger Cut
				["provider"] = { "i", 151867 },	-- Spoiled Fiendish Leather
				["sourceQuest"] = 48040,	-- Tainted Scraps
				["maps"] = {
					ANTORAN_WASTES,
					KROKUUN,
					EREDATH,
				},
				["groups"] = {
					recipe(247843),	-- Fiendish Leather [Rank 2]
				},
			}),
			q(48042, {	-- Order of Operations
				["provider"] = { "i", 151868 },	-- Corrupted Tooth
				["sourceQuest"] = 48041,	-- A Larger Cut
				["maps"] = {
					ANTORAN_WASTES,
					KROKUUN,
					EREDATH,
				},
				["groups"] = {
					recipe(247844),	-- Fiendish Leather [Rank 3]
				},
			}),
		}),
		i(124115),	-- Stormscale
		header(HEADERS.Item, 124115, {	-- Stormscale
			q(40141, {	-- Stormscale Sample
				["provider"] = { "i", 129862 },	-- Stormscale Sample
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40142, {	-- The Core of the Stormscale
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["sourceQuest"] = 40141,	-- Stormscale Sample
				["groups"] = {
					recipe(194164),	-- Stormscale [Rank 1]
				},
			}),
			q(40143, {	-- Unfinished Treatise on the Properties of Stormscale
				["provider"] = { "i", 129865 },	-- Unfinished Treatise on the Properties of Stormscale
				["sourceQuest"] = 40142,	-- The Core of the Stormscale
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40144, {	-- Glielle
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["sourceQuest"] = 40143,	-- Unfinished Treatise on the Properties of Stormscale
				["coord"] = { 35.9, 28.5, LEGION_DALARAN },
			}),
			q(40145, {	-- Under Down
				["qg"] = 98791,	-- Glielle <Skinning Trainer>
				["sourceQuest"] = 40144,	-- Glielle
				["coord"] = { 47.0, 45.2, AZSUNA },
				["groups"] = {
					recipe(194165),	-- Stormscale [Rank 2]
				},
			}),
			q(40146, {	-- Seymour and Agnes
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["sourceQuest"] = 40143,	-- Unfinished Treatise on the Properties of Stormscale
				["coord"] = { 35.9, 28.5, LEGION_DALARAN },
			}),
			q(40147, {	-- Mother's Prized Knife
				["qg"] = 98721,	-- Seymour <Skinning Trainer>
				["sourceQuest"] = 40146,	-- Seymour and Agnes
				["coord"] = { 45.7, 25.6, STORMHEIM },
			}),
			q(40148, {	-- Red-Eyed Revenge
				["qg"] = 98721,	-- Seymour <Skinning Trainer>
				["sourceQuest"] = 40146,	-- Seymour and Agnes
				["coord"] = { 45.7, 25.6, STORMHEIM },
			}),
			q(40149, {	-- Drakol'nir Must Die
				["qg"] = 98721,	-- Seymour <Skinning Trainer>
				["sourceQuests"] = {
					40147,	-- Mother's Prized Knife
					40148	-- Seymour and Agnes
				},
				["coord"] = { 45.7, 25.6, STORMHEIM },
				["groups"] = {
					i(130102),	-- Mother's Skinning Knife (TOY!)
				},
			}),
			q(40151, {	-- Immaculate Stormscale
				["provider"] = { "i", 129867 },	-- Immaculate Stormscale
				["sourceQuest"] = 40145,	-- Under Down
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40152, {	-- Scales for Ske'rit
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["sourceQuest"] = 40151,	-- Immaculate Stormscale
				["maps"] = { LEGION_DALARAN },	-- TODO replace with coord
			}),
			q(40153, {	-- Return to Karazhan: Scales of Legend
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["sourceQuest"] = 40152,	-- Scales for Ske'rit
				["maps"] = { KARAZHAN, 474, THE_OBSIDIAN_SANCTUM },
			}),
			q(40154, {	-- Eye of Azshara: The Scales of Serpentrix
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["sourceQuest"] = 40152,	-- Scales for Ske'rit
			}),
			q(40155, {	-- Eye of Azshara: The Scales of Serpentrix
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["sourceQuests"] = {
					40153,	-- Return to Karazhan: Scales of Legend
					40154	-- Eye of Azshara: The Scales of Serpentrix
				},
				["groups"] = {
					recipe(194166),	-- Stormscale [Rank 3]
				},
			}),
		}),
		i(124113),	-- Stonehide Leather
		header(HEADERS.Item, 124113, {	-- Stonehide Leather
			q(40131, {	-- Stonehide Leather Sample
				["provider"] = { "i", 129860 },	-- Stonehide Leather Sample
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40132, {	-- In One Piece
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["sourceQuest"] = 40131,	-- Stonehide Leather Sample
				["coord"] = { 35.9, 28.6, LEGION_DALARAN },
				["groups"] = {
					recipe(194161),	-- Stonehide Leather [Rank 1]
				},
			}),
			q(40133, {	-- Scrap of Pants
				["provider"] = { "i", 129864 },	-- Scrap of Pants
				["sourceQuest"] = 40132,	-- In One Piece
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40134, {	-- Highmountain Hides
				["qg"] = 94409,	-- Hemet Nesingwary <Hemet's Hunting Party>
				["sourceQuest"] = 40133,	-- Scrap of Pants
				["groups"] = {
					i(130064),	-- Deadeye Monocle
				},
			}),
			q(40135, {	-- The Freedom to Roam
				["qg"] = 94409,	-- Hemet Nesingwary <Hemet's Hunting Party>
				["sourceQuest"] = 40133,	-- Scrap of Pants
				["groups"] = {
					recipe(194162),	-- Stonehide Leather [Rank 2]
				},
			}),
			q(40136, {	-- Immaculate Stonehide Leather
				["provider"] = { "i", 129866 },	-- Immaculate Stonehide Leather
				["sourceQuest"] = 40135,	-- In One Piece
				["maps"] = {
					AZSUNA,
					HIGHMOUNTAIN,
					STORMHEIM,
					VALSHARAH,
					SURAMAR,
				},
			}),
			q(40137, {	-- Leather for Ske'rit
				["qg"] = 93541,	-- Kondal Huntsworn <Skinning Trainer>
				["sourceQuest"] = 40136,	-- Immaculate Stonehide Leather
				["maps"] = { SURAMAR },
			}),
			q(40138, {	-- Trial of the Crusader: Hides of Legend
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["sourceQuest"] = 40137,	-- Leather for Ske'rit
			}),
			q(40139, {	-- Halls of Valor: The Hide of Fenryr
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["sourceQuest"] = 40137,	-- Leather for Ske'rit
			}),
			q(40140, {	-- Ske'rit's Leather Handbook
				["qg"] = 98720,	-- Ske'rit <Skinning Trainer>
				["sourceQuests"] = {
					40138,	-- Trial of the Crusader: Hides of Legend
					40139	-- Halls of Valor: The Hide of Fenryr
				},
				["groups"] = {
					recipe(194163),    -- Stonehide Leather [Rank 3]
				},
			}),
		}),
	}),
	filter(BATTLE_PETS, {
		i(153057, {	-- Fossorial Bile Larva (PET!)
			["description"] = "This can be obtained from any skinnable Argus mob.",
			["timeline"] = { ADDED_7_3_0 },
		}),
	}),
	filter(TOYS, {
		i(130102),	--  Mother's Skinning Knife (TOY!)
	}),
	filter(RECIPES, {
		tier(LEGION_TIER, {
			recipe(194167),	-- Felhide [Rank 1]
			recipe(194168),	-- Felhide [Rank 2]
			recipe(194169),	-- Felhide [Rank 3]
			recipe(247842),	-- Fiendish Leather [Rank 1]
			recipe(247843),	-- Fiendish Leather [Rank 2]
			recipe(247844),	-- Fiendish Leather [Rank 3]
			recipe(194173),	-- Legion Butchery
			recipe(194203),	-- Legion Gutting
			recipe(194161),	-- Stonehide Leather [Rank 1]
			recipe(194162),	-- Stonehide Leather [Rank 2]
			recipe(194163),	-- Stonehide Leather [Rank 3]
			recipe(194164),	-- Stormscale [Rank 1]
			recipe(194165),	-- Stormscale [Rank 2]
			recipe(194166),	-- Stormscale [Rank 3]
			recipe(194171),	-- Unbroken Claw
			recipe(194170),	-- Unbroken Tooth
		}),
		tier(BFA_TIER, {
			recipe(257152),	-- Bone Gathering [Rank 1]
			recipe(257153),	-- Bone Gathering [Rank 2]
			recipe(257154),	-- Bone Gathering [Rank 3]
			recipe(302014),	-- Cragscale [Rank 1]
			recipe(302015),	-- Cragscale [Rank 2]
			recipe(302016),	-- Cragscale [Rank 3]
			recipe(302007),	-- Dredged Leather [Rank 1]
			recipe(302010),	-- Dredged Leather [Rank 2]
			recipe(302011),	-- Dredged Leather [Rank 3]
			recipe(257146),	-- Leather Gathering [Rank 1]
			recipe(257147),	-- Leather Gathering [Rank 2]
			recipe(257148),	-- Leather Gathering [Rank 3]
			recipe(257149),	-- Scale Gathering [Rank 1]
			recipe(257150),	-- Scale Gathering [Rank 2]
			recipe(257151),	-- Scale Gathering [Rank 3]
		}),
	}),
	-- #endif
});
