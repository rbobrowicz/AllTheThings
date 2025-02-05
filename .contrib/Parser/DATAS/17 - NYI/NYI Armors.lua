---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- Everything in this file hasn't been implemented yet.

root(ROOTS.NeverImplemented, {
	n(ARMOR, {
		tier(CLASSIC_TIER, {
			n(BACK, {
				i(22230),	-- Frightmaw Hide
			}),
			filter(CLOTH, {
				i(1216),	-- Frost Bracers
				i(4990),	-- Scorched Bands
				i(18341),	-- Quel'dorei Sash
				--
				i(4989),	-- Mage Dragon Robe
				i(6478),	-- Rat Stompers
				i(12107),	-- Whispersilk Leggings
				i(13080),	-- Widow's Clutch
			}),
			filter(LEATHER, {
				i(5821),	-- Darkstalker Boots
				i(12104),	-- Brindlethorn Tunic
				i(14550),	-- Bladebane Armguards
				i(20524),	-- Shadowhide Leggings
				i(21614),	-- Wormhide Protector
			}),
			filter(MAIL, {
				i(12105),	-- Pridemail Leggings
				i(13090),	-- Breastplate of the Chosen
				i(12615),	-- Savage Mail Tunic
				i(12616),	-- Savage Boots
				i(12617),	-- Savage Pauldrons
				i(21584),	-- Bracers of Eternal Reckoning
				i(21612),	-- Wormscale Stompers
				i(21588),	-- Wristguards of Elemental Fury
			}),
			filter(PLATE, {
				--
				i(5822),	-- Hedgeseed Gauntlets
				i(12106),	-- Boulderskin Breastplate
				i(21587),	-- Wristguards of Castigation
			}),
			filter(NECK_F, {
				i(18023),	-- Blood Ruby Pendant
				i(7427),	-- Cerulean Talisman
				i(5005),	-- Emberspark Pendant
				i(23058),	-- Life Channeling Necklace
				i(13811),	-- Necklace of the Dawn
				i(7548),	-- Onyx Choker
				i(17783),	-- Talisman of Binding Fragment
				i(7467),	-- Vermilion Necklace
				i(7550),	-- Warrior's Honor
				i(19122),	-- Woven Ivy Necklace DEPRECATED
			}),
			filter(FINGER_F, {
				i(13812),	-- Ring of the Dawn
				i(19065),	-- Emerald Circle
				i(33959, {	-- Ring of Ghoulish Delight
					["timeline"] = { "created 2.3.0.7521" },
				}),
				i(33958, {	-- The Horseman's Signet Ring
					["timeline"] = { "created 2.3.0.7521" },
				}),
				i(33957, {	-- Witches Band
					["timeline"] = { "created 2.3.0.7521" },
				}),
				--
				i(4988),	-- Burning Obsidian Band
				i(17000),	-- Band of the Wraith
				i(5010),	-- Inscribed Gold Ring
				i(17108),	-- Mark of Deflection
				i(5008),	-- Quicksilver Ring
			}),
			filter(TRINKET_F, {
				-- #if BEFORE TBC
				i(13503),	-- Alchemists' Stone
				-- #endif
				i(12805),	-- Orb of Fire
				i(18355),	-- Ferras Collar
				i(18438),	-- Sergeant's Mark
				i(20084),	-- Hunting Net
				i(20525),	-- Earthen Sigil
			}),
		}),
		tier(TBC_TIER, {
			n(BACK, {
				n(P2xx, {
					i(28045),	-- Cloak of the Demon Stalker
				}),
			}),
			filter(CLOTH, {
				n(P2xx, {
					i(23433),	-- Blood Robes
					i(23434),	-- Robes of the Shard
					i(25793),	-- Curate's Footwraps
					--
					i(26015),	-- Anchorite Neophyte's Cuffs
					i(27720),	-- Robes of the Aldor
					i(30287),	-- Mantle of Arcane Mastery
				}),
			}),
			filter(LEATHER, {
				n(P2xx, {
					i(25795),	-- Gloves of Preservation
					i(25796),	-- Lurking Shadow Spaulders
					--
					i(19986),	-- Pirate's Eye Patch
					i(22273),	-- Moonshadow Hood
					i(26029),	-- Watchman's Bracers
					i(27719),	-- Aldor Leggings of Puissance
					i(28145),	-- Tranquillien Wraps
					i(30288),	-- Cenarion Warden's Gloves
				}),
			}),
			filter(MAIL, {
				tier(TBC_TIER, 0.3, {
					i(38387),	-- Grizzled Hat
					i(38388),	-- Cap of the North
					i(38389),	-- Comfy Raccoonskin Hat
					i(38390),	-- The Rugged Marksman
				}),
				n(P2xx, {
					i(25794),	-- Bone Studded Girdle
					i(33964),	-- Helm of the Stormcaller
					--
					i(30289),	-- Cenarion Warden's Belt
				}),
			}),
			filter(PLATE, {
				tier(TBC_TIER, 0.3, {
					i(27965),	-- TEST 130 Epic Paladin DPS Chest
				}),
				n(P2xx, {
					i(25797),	-- Crushing Grasp Says
					i(26041),	-- Vigilant Vambraces
					i(29237),	-- Warpath Bracers Says
					i(24137),	-- PH Plate Ramparts Reward
					--
					i(27718),	-- Aldor Defender's Legplates
				}),
			}),
			filter(TABARDS, {
				n(P2xx, {
					i(23388),	-- Tranquillen Tabard
				}),
			}),
			filter(SHIRTS, {
				n(P2xx, {
					i(23351),	-- Battleworn Shirt
					i(23470),	-- Rugged Trapper's Shirt
				}),
			}),
			filter(NECK_F, {
				n(P2xx, {
					i(28043),	-- Demon Stalker Pendant
					i(31930),	-- Enigmatic Charm
					i(31931),	-- Fiery Charm
					i(31932),	-- Living Charm
					i(31933),	-- Dark Charm
					i(31934),	-- Frigid Charm
					i(33198),	-- Necklace of Decay
					i(33199),	-- Pendant of Old
					i(33200),	-- Ancient Ceremonial Necklace
					i(33201),	-- Silver Moonstone Pendant
				}),
			}),
			filter(FINGER_F, {
				n(P2xx, {
					i(28044),	-- Band of the Demon Stalker
					i(33097),	-- Mushroom Ring
					i(33193),	-- Mossy Band
					i(33194),	-- Ancient Ceremonial Band
					i(33195),	-- Cracked Stone Band
					i(33196),	-- Softly-Glowing Ring
				}),
			}),
		}),
		tier(WOTLK_TIER, {
			n(BACK, {
				n(P3xx, {
					i(37174),	-- Rippling Azure Cloak
					i(35876),	-- Talbuk Cape
					i(39828),	-- Punisher's Cloak
					i(47058),	-- Pennant Cloak (4.0)
				}),
			}),
			filter(CLOTH, {
				tier(WOTLK_TIER, 0.1, {
					i(37210),	-- Seafarer Cinch
					i(37225),	-- Sweltering Sandals
					i(37273),	-- Crimson Keeper Mitts
				}),
				tier(WOTLK_TIER, 0.2, {
					i(43878),	-- Mantle of Unholy Power
				}),
				tier(WOTLK_TIER, 1.0, {
					i(45629),	-- Shadoweave Belt
				}),
				tier(WOTLK_TIER, 2.0, {
					i(47103),	-- Rotting Handwraps
				}),
				n(P3xx, {
					i(37296),	-- BT59 Cloth Spell Gloves4
					i(37295),	-- HF28 Cloth Spell Head4
					i(39364),	-- Hood of the Titan Defender
				}),
			}),
			filter(LEATHER, {
				tier(WOTLK_TIER, 0.1, {
					i(37385),	-- Seared Harness
					i(37386),	-- Ruby Heart Spaulders
					i(37400),	-- Whalehunter Cuffs
					i(41757),	-- Vest of Unyielding Companionship
				}),
				n(P3xx, {
					i(37176),	-- Cavern Leather Treads
					i(37316),	-- HF28 Leather Physical Legs4
					--
					i(38525),	-- Jailor's Padded Cover
					i(39410),	-- Gauntlets of Rampant Destruction
					i(42875),	-- Worg-Hide Pants
					i(43895),	-- Leggings of Silent Echoes
				}),
			}),
			filter(MAIL, {
				tier(WOTLK_TIER, 0.1, {
					i(37433),	-- Layered Scale Boots
					i(37420),	-- Sharkproof Boots
					i(41758),	-- Blood-Bond Helm
				}),
				n(P3xx, {
					i(37454),	-- HF28 Mail Physical Chest4
					i(38527),	-- Onslaught Scalemail Hauberk
					i(39440),	-- Greaves of the Titan Protectorate
					i(42886),	-- Gloves of the Howling Peaks
					i(43460),	-- Giantmaim Girdle
					i(43936),	-- Battlesurgeon's Gauntlets
					i(54549),	-- Saline-Soaked Spaulders
					i(43475),	-- Grips of the Chilling Revenant
					i(37444),	-- Wavekeeper's Helm
				}),
			}),
			filter(PLATE, {
				tier(WOTLK_TIER, 0.1, {
					i(37485),	-- Clam Collector Gauntlets
					i(37510),	-- Wristguards of Edification
					i(37511),	-- Crucible Waistguard
					i(41759),	-- Shackles of Perpetual Friendship
				}),
				n(P3xx, {
					i(37175),	-- Glassy Silver Bracers
					i(37468),	-- HF28 Plate Physical Boots Says
					i(38524),	-- Carapace of the Scarlet Commander
					i(37477),	-- Lost Crusader Chestplate
					i(38524),	-- Carapace of the Scarlet Commander
					i(39460),	-- Sabatons of the Rampaging Construct
					i(42885),	-- Mountaineer's Helm
					i(43848),	-- Bracers of Icy Resolve
					i(43938),	-- Belt of Rising Hope
				}),
			}),
			filter(NECK_F, {
				tier(WOTLK_TIER, 0.2, {
					i(44391),	-- Cast Steel Choker
					i(44392),	-- Necklace of Permeation
				}),
				tier(WOTLK_TIER, 3.3, {
					i(49312),	-- Purified Onyxia Blood Talisman
					i(49314),	-- Sparkling Onyxia Tooth Pendant
				}),
				n(P3xx, {
					i(33197),	-- Mossy Necklace
					--
					i(37544),	-- Drakebone Necklace
					i(42856),	-- Frosthowl Amulet
					i(44389),	-- Curative Necklace
					i(44390),	-- Venomous Pendant
				}),
			}),
			filter(FINGER_F, {
				tier(WOTLK_TIER, 0.1, {
					i(41756),	-- Heart's Blood Signet
				}),
				n(P3xx, {
					i(34712),	-- Prismatic Signet
					i(37531),	-- Circle of Frigid Wind
					i(46842),	-- Crusader's Band
				}),
			}),
			filter(TRINKET_F, {
				tier(WOTLK_TIER, 1.0, {
					i(44869),	-- Frenzyheart Insignia of Fury
					i(44870),	-- Oracle Talisman of Ablution
				}),
				n(P3xx, {
					i(38572),	-- Bounty Procurement Enhancer
					i(39819),	-- Bloodbinder's Runestone
					i(37561),	-- Touch of the Elements
					i(38383),	-- Valonforth's Folly
					i(38526),	-- Binding of the Imprisoned Soul
					i(46839),	-- Frostwolf Insignia Rank 7
					i(46840),	-- Frostwolf Insignia Rank 7
				}),
			}),
		}),
		tier(CATA_TIER, {
			cl(ROGUE, {
				tier(CATA_TIER, 0.3, {
					i(54692),	-- Armor of Thero-Shan
					i(59600),	-- Phosphora Fedora
				}),
			}),
			n(BACK, {
				tier(CATA_TIER, 0.3, {
					i(56355),	-- Skin of Stone
					i(65815),	-- Drape of the Mortal Guardians
					i(60221),	-- Furlbrow Cloak
				}),
				n(P4xx, {
					i(59791),	-- Giantslayer Cloak
				}),
			}),
			filter(CLOTH, {
				tier(CATA_TIER, 0.3, {
					i(59797),	-- Abalone-Linked Robes
					i(62988),	-- Sash of the Unhonored
					i(66013),	-- Mantle of the Glorious Song
					i(62640),	-- Fallback Armor - Cloth Waist
					i(62641),	-- Fallback Armor - Cloth Feet
					i(62642),	-- Fallback Armor - Cloth Chest
					i(62643),	-- Fallback Armor - Cloth Hand
					i(62644),	-- Fallback Armor - Cloth Head
					i(62645),	-- Fallback Armor - Cloth Legs
					i(62646),	-- Fallback Armor - Cloth Robe
					i(62647),	-- Fallback Armor - Cloth Shoulder
					i(62648),	-- Fallback Armor - Cloth Wrist
					--
					i(54542),	-- Robes of Restored Hope
					i(54550),	-- Hood of Vigorous Defense
					i(54977),	-- Revitalizing Sandals
					i(57528),	-- Hogger's Mangy Handgrips
					i(60728),	-- Keeshan's Burlap Vest
					i(65746),	-- Leggings of Valorous Defense
					i(47102),	-- Manaweave Robe
				}),
				tier(CATA_TIER, 3.0, {
					i(78532),	-- Clockwinder's Immaculate Gloves
					i(78608),	-- Clockwinder's Immaculate Gloves
					i(78541),	-- Hood of Hidden Flesh
					i(78556),	-- Lightwarper Vestments
					i(78635),	-- Lightwarper Vestments
					i(78555),	-- Robes of Searing Shadow
					i(78542),	-- Soulgaze Cowl
					i(78620),	-- Soulgaze Cowl
					i(78533),	-- The Hands of Gilly
					i(78607),	-- The Hands of Gilly
				}),
			}),
			filter(LEATHER, {
				tier(CATA_TIER, 0.3, {
					i(56701),	-- Jinxed Vest
					i(56405),	-- Oasis Bracers
					i(59796),	-- Treads of Decapod Death
					i(63012),	-- Skull Kickers
					--
					i(54543),	-- Orca-Tooth Treads
					i(54649),	-- Cow King's Hide
					i(54650),	-- Forest's Embrace
					i(54652),	-- Righteous Armor
					i(54655),	-- Stormshroud Armor
					i(54658),	-- Lionfur Armor
					i(54665),	-- Maatparm's Fungus Lined Vest
					i(54666),	-- Ceremonial Leather Harness
					i(54667),	-- Vest of the Dragon Slayer
					i(54668),	-- Murloc Scale Breastplate
					i(54670),	-- Hillman's Leather Vest
					i(54671),	-- Starsight Tunic
					i(54673),	-- Barkshell Tunic
					i(54674),	-- Gloomshroud Armor
					i(54677),	-- Raptorbane Armor
					i(54680),	-- Raptor Hide Harness
					i(54681),	-- Thick Murloc Armor
					i(54683),	-- Dusky Leather Armor
					i(54684),	-- Guardian Armor
					i(54685),	-- Archer's Jerkin
					i(54686),	-- Barbaric Harness
					i(54687),	-- Sentinel Breastplate
					i(54689),	-- Marshwarden's Tunic
					i(54691),	-- Nightscape Tunic
					i(54694),	-- Wolf Rider's Padded Armor
					i(54695),	-- Surveyor's Tunic
					i(54696),	-- Scorpashi Breastplate
					i(54698),	-- Ceremonial Leather Loincloth
					i(54703),	-- Bogwalker Boots
					i(54708),	-- Ceremonial Leather Gloves
					i(54707),	-- Researcher's Gloves
					i(54711),	-- Wendigo Collar
					i(54716),	-- Juicy Bracers
					i(54723),	-- Living Leggings
					i(54724),	-- Shadowcraft Bracers
					i(54725),	-- Shadowcraft Gloves
					i(54726),	-- Clouddrift Mantle
					i(54727),	-- Traveler's Boots
					i(54731),	-- not used
					i(62697),	-- Art Template Leather Belt - Leather_Cataclysm_B_01 - Brown
					i(62698),	-- Art Template Leather Boot - Leather_Cataclysm_B_01 - Brown
					i(62699),	-- Art Template Leather Chest - Leather_Cataclysm_B_01 - Brown
					i(62700),	-- Art Template Leather Hand - Leather_Cataclysm_B_01 - Brown
					i(62701),	-- Art Template Leather Head - Leather_Cataclysm_B_01 - Brown
					i(62702),	-- Art Template Leather Legs - Leather_Cataclysm_B_01 - Brown
					i(62703),	-- Art Template Leather Shoulder - Leather_Cataclysm_B_01 - Brown
					i(62704),	-- Art Template Leather Wrist - Leather_Cataclysm_B_01 - Brown
				}),
				tier(CATA_TIER, 2.0, {
					i(71569),	-- Flamebinder Bracers
					i(71394),	-- Flamebinding Girdle
					i(71581),	-- Smolderskull Bindings
				}),
				tier(CATA_TIER, 3.0, {
					i(78565),	-- Belt of Hidden Keys
					i(78640),	-- Belt of Hidden Keys
					i(78566),	-- Belt of Universal Curing
					i(78641),	-- Belt of Universal Curing
					i(78517),	-- Boots of Fungoid Growth
					i(78592),	-- Boots of Fungoid Growth
					i(78574),	-- Bracers of Manifold Pockets
					i(78654),	-- Bracers of Manifold Pockets
					i(78505),	-- Decaying Herbalist's Robes
					i(78582),	-- Decaying Herbalist's Robes
					i(78531),	-- Fungus-Born Gloves
					i(78604),	-- Fungus-Born Gloves
					i(78530),	-- Lightfinger Handwraps
					i(78609),	-- Lightfinger Handwraps
					i(78575),	-- Luminescent Bracers
					i(78652),	-- Luminescent Bracers
					i(78540),	-- Helmet of Perpetual Rebirth
					i(78618),	-- Helmet of Perpetual Rebirth
					i(78539),	-- Nocturnal Gaze
					i(78617),	-- Nocturnal Gaze
					i(78516),	-- Rooftop Griptoes
					i(78594),	-- Rooftop Griptoes
					i(78504),	-- Shadowbinder Chestguard
					i(78581),	-- Shadowbinder Chestguard
				}),
				n(P4xx, {
					i(59790),	-- Gnash-Crusher Helm
					i(65099),	-- Tsanga's Helm
				})
			}),
			filter(MAIL, {
				tier(CATA_TIER, 0.3, {
					i(63002),	-- Bat Claw Boots
					--
					i(54551),	-- Defiant Bracers
					i(59789),	-- Sea-Snack Footguards
					i(65744),	-- Nimble Command Shoulderguards
					i(62715),	-- Art Template Mail Belt - Mail_Cataclysm_B_01 - Blue
					i(62716),	-- Art Template Mail Boot - Mail_Cataclysm_B_01 - Blue
					i(62717),	-- Art Template Mail Chest - Mail_Cataclysm_B_01 - Blue
					i(62718),	-- Art Template Mail Hand - Mail_Cataclysm_B_01 - Blue
					i(62719),	-- Art Template Mail Head - Mail_Cataclysm_B_01 - Blue
					i(62720),	-- Art Template Mail Legs - Mail_Cataclysm_B_01 - Blue
					i(62721),	-- Art Template Mail Shoulder - Mail_Cataclysm_B_01 - Blue
					i(62722),	-- Art Template Mail Wrist - Mail_Cataclysm_B_01 - Blue
					i(54757),	-- Double Link Tunic
					i(54765),	-- Burnished Leggings
					i(54766),	-- Burnished Gloves
					i(54767),	-- Burnished Girdle
					i(54768),	-- Burnished Boots
					i(54769),	-- Rough Bronze Bracers -- Do Not Remove until somebody provides proof as obtained. Guild Tab shows somebody might be able to craft it, but its a visual bug. 27th Oct 2020 -- Gold
					i(54778),	-- Burnished Boots (Again)
					i(54781),	-- Thorbia's Gauntlets
					i(54783),	-- Silvered Bronze Shoulders
				}),
				tier(CATA_TIER, 2.0, {
					i(71570),	-- Bracers of Forked Lightning
					i(71582),	-- Bracers of Misting Ash
				}),
				tier(CATA_TIER, 3.0, {
					i(78527),	-- Arrowflick Gauntlets
					i(78610),	-- Arrowflick Gauntlets
					i(78512),	-- Boneshard Boots
					i(78596),	-- Boneshard Boots
					i(78572),	-- Bracers of the Spectral Wolf
					i(78561),	-- Cord of Dragon Sinew
					i(78642),	-- Cord of Dragon Sinew
					i(78571),	-- Dragonbelly Bracers
					i(78653),	-- Dragonbelly Bracers
					i(78501),	-- Dragonflayer Vest
					i(78579),	-- Dragonflayer Vest
					i(78502),	-- Ghostworld Chestguard
					i(78562),	-- Girdle of Shamanic Fury
					i(78528),	-- Gloves of Ghostly Dreams
					i(78513),	-- Sabatons of the Graceful Spirit
					i(78537),	-- Wolfdream Circlet
					i(78536),	-- Zeherah's Dragonskull Crown
					i(78619),	-- Zeherah's Dragonskull Crown
				}),
				n(P4xx, {
					i(68844),	-- Unknown
				}),
			}),
			filter(PLATE, {
				tier(CATA_TIER, 0.3, {
					i(49450),	-- Defusing Cinch
					i(59795),	-- Harp Shell Shoulderplates
					--
					i(54544),	-- Scrapped Spaulders
					i(54552),	-- Retaliation Gauntlets
					i(54751),	-- Silverscale Chestguard
					i(59768),	-- Bracers of Burbling Freedom
					i(59772),	-- Bracers of Burbling Freedom (Yes, Same name)
					i(65743),	-- Helm of Vicious Direction
					i(54789),	-- Art Template Plate Belt - Plate_Common_C_01 - Rust
				}),
				tier(CATA_TIER, 2.0, {
					i(71583),	-- Bracers of Imperious Truths
					i(71585),	-- Bracers of Regal Force
					i(71584),	-- Gigantiform Bracers
					i(71400),	-- Girdle of the Indomitable Flame
				}),
				tier(CATA_TIER, 3.0, {
					i(78563),	-- Blinding Girdle of Truth
					i(78644),	-- Blinding Girdle of Truth
					i(78499),	-- Bones of the Damned
					i(78583),	-- Bones of the Damned
					i(78650),	-- Bracers of Unrelenting Excellence
					i(78584),	-- Chestplate of the Unshakable Titan
					i(78564),	-- Demonbone Waistguard
					i(78645),	-- Demonbone Waistguard
					i(78573),	-- Flashing Bracers of Warmth
					i(78648),	-- Flashing Bracers of Warmth
					i(78646),	-- Forgesmelter Waistplate
					i(78606),	-- Gauntlets of Feathery Blows
					i(78529),	-- Gleaming Grips of Mending
					i(78612),	-- Gleaming Grips of Mending
					i(78538),	-- Glowing Wings of Hope
					i(78621),	-- Glowing Wings of Hope
					i(78525),	-- Grimfist Crushers
					i(78605),	-- Grimfist Crushers
					i(78569),	-- Heartcrusher Wristplates
					i(78649),	-- Heartcrusher Wristplates
					i(78615),	-- Jaw of Repudiation
					i(78503),	-- Shining Carapace of Glory
					i(78578),	-- Shining Carapace of Glory
					i(78534),	-- Visage of Petrification
					i(78614),	-- Visage of Petrification
				}),
				n(P4xx, {
					i(47091),	-- Unfaltering Armguards (4.0)
					i(63054),	-- Fallback Armor - Plate Waist
					i(63055),	-- Fallback Armor - Plate Feet
					i(63056),	-- Fallback Armor - Plate Chest
					i(63057),	-- Fallback Armor - Plate Hand
					i(63058),	-- Fallback Armor - Plate Head
					i(63059),	-- Fallback Armor - Plate Legs
					i(63060),	-- Fallback Armor - Plate Shoulder
					i(63061),	-- Fallback Armor - Plate Wrist
				}),
			}),
			filter(COSMETIC, {
				tier(CATA_TIER, 0.3, {
					i(52488),	-- Jeweler's Sapphire Monocle
				}),
			}),
			filter(SHIRTS, {
				tier(CATA_TIER, 0.3, {
					i(52548),	-- Initiate's Tunic
					i(53869),	-- War Paint (Shirt) NOT GOOD FOR THE LADIES (NYI)
					i(53879),	-- Rugged Work Shirt
					i(53880),	-- Super Girly Shirt
					i(60619),	-- No Shirt
					i(62061),	-- Irradiated Gnome Shirt
					i(63074),	-- "Behind You!" Shirt
					i(46103),	-- Shirt of Titanic Scaling
					i(49402),	-- Gilnean Apprentice's Shirt
					i(49405),	-- Gilnean Neophyte's Shirt
					i(49410),	-- Gilnean Acolyte's Shirt
					i(49414),	-- Gilnean Acolyte's Shirt
					i(49418),	-- Gilnean Apprentice's Shirt
					i(49422),	-- Gilnean Neophyte's Shirt
					i(55047),	-- Shirt of No Criticals
					i(54331),	-- Black Velvet Chest
				}),
			}),
			filter(NECK_F, {
				n(P4xx, {
					i(59665),	-- Emerald Dragonet Choker
				}),
			}),
			filter(FINGER_F, {
				tier(CATA_TIER, 0.3, {
					i(57708),	-- QA Test Finger 500 Strength
					i(57709),	-- QA Test Finger Strength
					i(57710),	-- QA Test Finger 2000 Strength
					i(57713),	-- QA Test Finger 500 Agility
					i(57721),	-- QA Test Finger 10000 attack power
					i(57723),	-- QA Test Finger 500 intellect
					i(57727),	-- QA Test Finger Spell Power
					i(57738),	-- QA Test Finger 250 Mastery
					i(58816),	-- QA Test Finger 250 Hit
				}),
			}),
			filter(TRINKET_F, {
				tier(CATA_TIER, 0.3, {
					i(54547),	-- Cracked Jewelry Box
					i(65015),	-- DONTUSEFury of Angerforge
				}),
			}),
		}),
		tier(MOP_TIER, {
			filter(PLATE, {
				tier(MOP_TIER, 0.1, {
					i(81709),	-- Belt of Broken Bones
					i(81710),	-- Grinning Skull Greatboots
				}),
			}),
			filter(FINGER_F, {
				tier(MOP_TIER, 3.0, {
					i(98037),	-- QA Test Finger Dodge
					i(98038),	-- QA Test Finger Parry
				}),
			}),
		}),
		tier(WOD_TIER, {
			n(BACK, {
				tier(WOD_TIER, 0.1, {
					i(114421),	-- Arrowleaf Longcloak
					i(114301),	-- Axebreak Darkcloak
					i(114424),	-- Blade-Ring Greatcloak
					i(114425),	-- Bleak Shore Cloak
					i(114298),	-- Cloak of Bent Dreams
					i(112233),	-- Cloak of Bloody Forces
					i(114362),	-- Cloak of Keening Spirits
					i(114361),	-- Drape of Dark Shadows
					i(114423),	-- Drape of Mindmending
					i(112231),	-- Drape of Nimble Deflection
					i(114360),	-- Eagle Eye Windcloak
					i(114297),	-- Feather-Cord Cloak
					i(114300),	-- Grimchop Greatcloak
					i(114363),	-- Gutwrencher's Greatcloak
					i(114422),	-- Mindbreaker Drape
					i(112230),	-- Storm Scale Cloak
					i(114299),	-- Suture-Slice Cloak
					i(112232),	-- Three-Kodohide Cloak
					i(114364),	-- Towerkin Cloak
					-- Does Not Load In Game --
					i(108814),	-- 6.0 PH Cloak Agi
					i(108822),	-- 6.0 PH Cloak STR
					i(108823),	-- 6.0 PH Cloak Int
					i(109282),	-- 7.0 QA Combat Test Cloak 1
					i(109453),	-- 7.0 QA Combat Test Cloak 2
					i(109496),	-- 7.0 QA Combat Test Cloak 4
					i(109538),	-- 7.0 QA Combat Test Cloak 3
					--
					i(117494),	-- Windfang Drape
					i(117495),	-- Windfang Greatcloak
					i(117496),	-- Windfang Cloak
				}),
			}),
			filter(CLOTH, {
				tier(WOD_TIER, 0.1, {
					i(114247),	-- Firefly Bracers
					i(114275),	-- Firefly Cord
					i(114255),	-- Firefly Sandals
					-- Does Not Load In Game --
					i(107887),	-- 7.0 PH Cloth Cord
					i(107871),	-- 7.0 PH Cloth Gloves
					i(107874),	-- 7.0 PH Cloth Hood
					i(107878),	-- 7.0 PH Cloth Leggings
					i(107884),	-- 7.0 PH Cloth Mantle
					i(107881),	-- 7.0 PH Cloth Robe
					i(107866),	-- 7.0 PH Cloth Treads
					i(107890),	-- 7.0 PH Cloth Wristwraps
					i(109272),	-- 7.0 QA Combat Test Caster Belt 1
					i(109296),	-- 7.0 QA Combat Test Caster Belt 2
					i(109339),	-- 7.0 QA Combat Test Caster Belt 3
					i(109477),	-- 7.0 QA Combat Test Caster Belt 4
					i(109379),	-- 7.0 QA Combat Test Caster Boots
					i(109451),	-- 7.0 QA Combat Test Caster Boots 2
					i(109540),	-- 7.0 QA Combat Test Caster Boots 3
					i(109398),	-- 7.0 QA Combat Test Caster Bracer 1
					i(109463),	-- 7.0 QA Combat Test Caster Bracer 2
					i(109542),	-- 7.0 QA Combat Test Caster Bracer 3
					i(109546),	-- 7.0 QA Combat Test Caster Bracer 4
					i(109297),	-- 7.0 QA Combat Test Caster Gloves 1
					i(109340),	-- 7.0 QA Combat Test Caster Gloves 2
					i(109363),	-- 7.0 QA Combat Test Caster Gloves 3
					i(109521),	-- 7.0 QA Combat Test Caster Gloves 4
					i(109298),	-- 7.0 QA Combat Test Caster Helm 1
					i(109341),	-- 7.0 QA Combat Test Caster Helm 2
					i(109405),	-- 7.0 QA Combat Test Caster Helm 3
					i(109437),	-- 7.0 QA Combat Test Caster Helm 4
					i(109299),	-- 7.0 QA Combat Test Caster Legs 1
					i(109342),	-- 7.0 QA Combat Test Caster Legs 2
					i(109411),	-- 7.0 QA Combat Test Caster Legs 3
					i(109419),	-- 7.0 QA Combat Test Caster Legs 4
					i(109278),	-- 7.0 QA Combat Test Caster Robes 1
					i(109302),	-- 7.0 QA Combat Test Caster Robes 2
					i(109343),	-- 7.0 QA Combat Test Caster Robes 3
					i(109423),	-- 7.0 QA Combat Test Caster Robes 4
					i(109290),	-- 7.0 QA Combat Test Caster Shoulders 1
					i(109303),	-- 7.0 QA Combat Test Caster Shoulders 2
					i(109344),	-- 7.0 QA Combat Test Caster Shoulders 3
					i(109473),	-- 7.0 QA Combat Test Caster Shoulders 4
					i(105710),	-- Lasso Bracers, Humanoid
					i(105928),	-- Magic Bunny Hat
					i(104355),	-- Titan Rocket Boots
				}),
				tier(WOD_TIER, 0.2, {
					i(116001),	-- Cord of Skulls
				}),
				tier(WOD_TIER, 0.3, {
					-- Does Not Load In Game --
					i(120318),	-- Sol-Shaper's Sandals
				}),
			}),
			filter(LEATHER, {
				tier(WOD_TIER, 0.1, {
					i(107660),	-- Battle Aged Leather Pauldrons
					i(114276),	-- Bloodthorn Belt
					i(114256),	-- Bloodthorn Boots
					i(114248),	-- Bloodthorn Bracers
					-- Does Not Load In Game --
					i(109294),	-- 6.0 QA Combat Test Leather Belt
					i(109358),	-- 6.0 QA Combat Test Leather Belt 2
					i(109428),	-- 6.0 QA Combat Test Leather Belt 3
					i(109444),	-- 6.0 QA Combat Test Leather Belt 4
					i(109414),	-- 6.0 QA Combat Test Leather Boots
					i(109469),	-- 6.0 QA Combat Test Leather Boots 3
					i(109513),	-- 6.0 QA Combat Test Leather Boots 2
					i(109264),	-- 6.0 QA Combat Test Leather Bracer
					i(109415),	-- 6.0 QA Combat Test Leather Bracer 2
					i(109479),	-- 6.0 QA Combat Test Leather Bracer 3
					i(109547),	-- 6.0 QA Combat Test Leather Bracer 4
					i(109345),	-- 6.0 QA Combat Test Leather Chest
					i(109400),	-- 6.0 QA Combat Test Leather Chest 2
					i(109440),	-- 6.0 QA Combat Test Leather Chest 3
					i(109305),	-- 6.0 QA Combat Test Leather Gloves
					i(109346),	-- 6.0 QA Combat Test Leather Gloves
					i(109366),	-- 6.0 QA Combat Test Leather Gloves 2
					i(109493),	-- 6.0 QA Combat Test Leather Gloves 2
					i(109375),	-- 6.0 QA Combat Test Leather Helm
					i(109287),	-- 6.0 QA Combat Test Leather Helm 2
					i(109306),	-- 6.0 QA Combat Test Leather Helm 3
					i(109347),	-- 6.0 QA Combat Test Leather Helm 4
					i(109276),	-- 6.0 QA Combat Test Leather Legs
					i(109307),	-- 6.0 QA Combat Test Leather Legs 2
					i(109348),	-- 6.0 QA Combat Test Leather Legs 3
					i(109475),	-- 6.0 QA Combat Test Leather Legs 4
					i(109388),	-- 6.0 QA Combat Test Leather Robes
					i(109308),	-- 6.0 QA Combat Test Leather Shoulders
					i(109349),	-- 6.0 QA Combat Test Leather Shoulders 2
					i(109432),	-- 6.0 QA Combat Test Leather Shoulders 3
					i(109486),	-- 6.0 QA Combat Test Leather Shoulders 4
					i(107203),	-- Lasso Bracers, Powerup
				}),
				tier(WOD_TIER, 0.2, {
					i(116207),	-- 6.0 LFR - Highmaul Raid - UNUSED - Leather Belt 1
				}),
				tier(WOD_TIER, 0.3, {
					-- Does Not Load In Game --
					i(107337),	-- Practice Power Bracers
				}),
				n(P6xx, {
					-- Does Not Load In Game --
					i(107889),	-- 7.0 PH Leather Belt
					i(107868),	-- 7.0 PH Leather Boots
					i(107880),	-- 7.0 PH Leather Breeches
					i(107869),	-- 7.0 PH Leather Gloves
					i(107876),	-- 7.0 PH Leather Helm
					i(107882),	-- 7.0 PH Leather Spaulders
					i(107864),	-- 7.0 PH Leather Vest
					i(107893),	-- 7.0 PH Leather Wristwraps
					i(120363),	-- 7.0 QA Combat Test Leather Boots 4
				})
			}),
			filter(MAIL, {
				tier(WOD_TIER, 0.1, {
					i(114277),	-- Leafscale Belt
					i(114257),	-- Leafscale Boots
					i(114249),	-- Leafscale Bracers
					i(113715),	-- Sparkmail Vest
					-- Does Not Load In Game --
					i(109517),	-- 6.0 QA Combat Test Mail Chest 4
					i(107888),	-- 7.0 PH Mail Belt
					i(107872),	-- 7.0 PH Mail Gauntlets
					i(107875),	-- 7.0 PH Mail Helm
					i(107879),	-- 7.0 PH Mail Leggings
					i(107885),	-- 7.0 PH Mail Monnion
					i(107867),	-- 7.0 PH Mail Sabatons
					i(107863),	-- 7.0 PH Mail Vest
					i(107892),	-- 7.0 PH Mail Wristwraps
					i(109313),	-- 7.0 QA Combat Test Mail Belt 1
					i(109359),	-- 7.0 QA Combat Test Mail Belt 2
					i(109416),	-- 7.0 QA Combat Test Mail Belt 3
					i(109488),	-- 7.0 QA Combat Test Mail Belt 4
					i(109393),	-- 7.0 QA Combat Test Mail Boots 1
					i(109396),	-- 7.0 QA Combat Test Mail Boots 2
					i(109433),	-- 7.0 QA Combat Test Mail Boots 3
					i(109541),	-- 7.0 QA Combat Test Mail Boots 4
					i(109280),	-- 7.0 QA Combat Test Mail Bracer 1
					i(109371),	-- 7.0 QA Combat Test Mail Bracer 2
					i(109543),	-- 7.0 QA Combat Test Mail Bracer 3
					i(109548),	-- 7.0 QA Combat Test Mail Bracer 4
					i(109314),	-- 7.0 QA Combat Test Mail Chest 1
					i(109350),	-- 7.0 QA Combat Test Mail Chest 2
					i(109510),	-- 7.0 QA Combat Test Mail Chest 3
					i(109315),	-- 7.0 QA Combat Test Mail Gloves 1
					i(109351),	-- 7.0 QA Combat Test Mail Gloves 2
					i(109457),	-- 7.0 QA Combat Test Mail Gloves 3
					i(109504),	-- 7.0 QA Combat Test Mail Gloves 4
					i(109265),	-- 7.0 QA Combat Test Mail Helm
					i(109316),	-- 7.0 QA Combat Test Mail Helm 2
					i(109352),	-- 7.0 QA Combat Test Mail Helm 3
					i(109382),	-- 7.0 QA Combat Test Mail Helm 4
					i(109270),	-- 7.0 QA Combat Test Mail Legs 1
					i(109317),	-- 7.0 QA Combat Test Mail Legs 2
					i(109353),	-- 7.0 QA Combat Test Mail Legs 3
					i(109441),	-- 7.0 QA Combat Test Mail Legs 4
					i(109318),	-- 7.0 QA Combat Test Mail Shoulders 1
					i(109354),	-- 7.0 QA Combat Test Mail Shoulders 2
					i(109425),	-- 7.0 QA Combat Test Mail Shoulders 3
					i(109484),	-- 7.0 QA Combat Test Mail Shoulders 4
				}),
				tier(WOD_TIER, 0.2, {
					i(116031),	-- 6.0 LFR - Highmaul Raid - UNUSED - Mail Versatile Belt 1
				}),
			}),
			filter(PLATE, {
				tier(WOD_TIER, 0.1, {
					i(114250),	-- Ruby Plate Bracers
					i(114258),	-- Ruby Plate Greaves
					i(114278),	-- Ruby Plate Girdle
					-- Does Not Load In Game --
					i(109321),	-- 7.0 QA Combat Test Plate Belt 1
					i(109327),	-- 7.0 QA Combat Test Plate Belt 2
					i(109333),	-- 7.0 QA Combat Test Plate Belt 3
					i(109372),	-- 7.0 QA Combat Test Plate Belt 4
					i(109455),	-- 7.0 QA Combat Test Plate Boots
					i(109461),	-- 7.0 QA Combat Test Plate Boots 2
					i(109501),	-- 7.0 QA Combat Test Plate Boots 3
					i(109268),	-- 7.0 QA Combat Test Plate Bracer 1
					i(109409),	-- 7.0 QA Combat Test Plate Bracer 2
					i(109422),	-- 7.0 QA Combat Test Plate Bracer 3
					i(109436),	-- 7.0 QA Combat Test Plate Bracer 4
					i(109275),	-- 7.0 QA Combat Test Plate Chest 1
					i(109322),	-- 7.0 QA Combat Test Plate Chest 2
					i(109328),	-- 7.0 QA Combat Test Plate Chest 3
					i(109334),	-- 7.0 QA Combat Test Plate Chest 4
					i(109289),	-- 7.0 QA Combat Test Plate Gloves 1
					i(109323),	-- 7.0 QA Combat Test Plate Gloves 2
					i(109329),	-- 7.0 QA Combat Test Plate Gloves 3
					i(109335),	-- 7.0 QA Combat Test Plate Gloves 4
					i(109324),	-- 7.0 QA Combat Test Plate Helm 1
					i(109330),	-- 7.0 QA Combat Test Plate Helm 2
					i(109336),	-- 7.0 QA Combat Test Plate Helm 3
					i(109439),	-- 7.0 QA Combat Test Plate Helm 4
					i(109325),	-- 7.0 QA Combat Test Plate Legs 1
					i(109331),	-- 7.0 QA Combat Test Plate Legs 2
					i(109337),	-- 7.0 QA Combat Test Plate Legs 3
					i(109450),	-- 7.0 QA Combat Test Plate Legs 4
					i(109284),	-- 7.0 QA Combat Test Plate Shoulders 1
					i(109326),	-- 7.0 QA Combat Test Plate Shoulders 2
					i(109332),	-- 7.0 QA Combat Test Plate Shoulders 3
					i(109338),	-- 7.0 QA Combat Test Plate Shoulders 4
					i(107992),	-- Draenic Steel Chestplate
					i(108000),	-- Draenic Steel Chestplate
					i(108008),	-- Draenic Steel Chestplate
					i(108016),	-- Draenic Steel Chestplate
					i(108024),	-- Draenic Steel Chestplate
					i(108032),	-- Draenic Steel Chestplate
					i(107986),	-- Draenic Steel Gauntlets
					i(107994),	-- Draenic Steel Gauntlets
					i(108002),	-- Draenic Steel Gauntlets
					i(108010),	-- Draenic Steel Gauntlets
					i(108018),	-- Draenic Steel Gauntlets
					i(108026),	-- Draenic Steel Gauntlets
					i(108034),	-- Draenic Steel Gauntlets
					i(107990),	-- Draenic Steel Girdle
					i(107998),	-- Draenic Steel Girdle
					i(108006),	-- Draenic Steel Girdle
					i(108014),	-- Draenic Steel Girdle
					i(108022),	-- Draenic Steel Girdle
					i(108030),	-- Draenic Steel Girdle
					i(108038),	-- Draenic Steel Girdle
					i(107987),	-- Draenic Steel Helm
					i(107995),	-- Draenic Steel Helm
					i(108003),	-- Draenic Steel Helm
					i(108011),	-- Draenic Steel Helm
					i(108019),	-- Draenic Steel Helm
					i(108027),	-- Draenic Steel Helm
					i(108035),	-- Draenic Steel Helm
					i(107988),	-- Draenic Steel Legguards
					i(107996),	-- Draenic Steel Legguards
					i(108004),	-- Draenic Steel Legguards
					i(108012),	-- Draenic Steel Legguards
					i(108020),	-- Draenic Steel Legguards
					i(108028),	-- Draenic Steel Legguards
					i(108036),	-- Draenic Steel Legguards
					i(107989),	-- Draenic Steel Shoulders
					i(107997),	-- Draenic Steel Shoulders
					i(108005),	-- Draenic Steel Shoulders
					i(108013),	-- Draenic Steel Shoulders
					i(108021),	-- Draenic Steel Shoulders
					i(108029),	-- Draenic Steel Shoulders
					i(108037),	-- Draenic Steel Shoulders
					i(107985),	-- Draenic Steel Warboots
					i(107993),	-- Draenic Steel Warboots
					i(108001),	-- Draenic Steel Warboots
					i(108009),	-- Draenic Steel Warboots
					i(108017),	-- Draenic Steel Warboots
					i(108025),	-- Draenic Steel Warboots
					i(108033),	-- Draenic Steel Warboots
					i(107991),	-- Draenic Steel Wristwraps
					i(107999),	-- Draenic Steel Wristwraps
					i(108007),	-- Draenic Steel Wristwraps
					i(108015),	-- Draenic Steel Wristwraps
					i(108023),	-- Draenic Steel Wristwraps
					i(108031),	-- Draenic Steel Wristwraps
					i(108039),	-- Draenic Steel Wristwraps
				}),
				tier(WOD_TIER, 0.2, {
					i(116232),	-- 6.0 LFR - Highmaul Raid - UNUSED - Plate Versatile Belt 1
				}),
				n(P6xx, {
					-- Does Not Load In Game --
					i(107862),	-- 7.0 PH Plate Chestplate
					i(107870),	-- 7.0 PH Plate Gauntlets
					i(107886),	-- 7.0 PH Plate Girdle
					i(107873),	-- 7.0 PH Plate Helm
					i(107877),	-- 7.0 PH Plate Legguards
					i(107883),	-- 7.0 PH Plate Shoulders
					i(107865),	-- 7.0 PH Plate Warboots
					i(107891),	-- 7.0 PH Plate Wristwraps
				})
			}),
			filter(COSMETIC, {
				tier(WOD_TIER, 0.1, {
					i(116399),	-- Emerald Sunglasses
				}),
			}),
			filter(NECK_F, {
				tier(WOD_TIER, 0.1, {
					-- Does Not Load In Game --
					i(108812),	-- 6.0 PH Neck Agi
					i(108819),	-- 6.0 PH Neck Int
					i(108818),	-- 6.0 PH Neck Str
					i(109295),	-- 6.0 QA Combat Test Agility DPS Neck
					i(109369),	-- 6.0 QA Combat Test Agility DPS Neck 2
					i(109427),	-- 6.0 QA Combat Test Agility DPS Neck 3
					i(109300),	-- 6.0 QA Combat Test Caster DPS Neck
					i(109452),	-- 6.0 QA Combat Test Caster DPS Neck 2
					i(109459),	-- 6.0 QA Combat Test Caster DPS Neck 3
					i(109522),	-- 6.0 QA Combat Test Caster DPS Neck 4
					i(109267),	-- 6.0 QA Combat Test Healer Neck
					i(109293),	-- 6.0 QA Combat Test Healer Neck 2
					i(109526),	-- 7.0 QA Combat Test Neck 4
				}),
			}),
			filter(FINGER_F, {
				tier(WOD_TIER, 0.1, {
					-- Does Not Load In Game --
					i(108813),	-- 6.0 PH Ring Agi
					i(108821),	-- 6.0 PH Ring Int
					i(108820),	-- 6.0 PH Ring Str
					i(109391),	-- 6.0 QA Combat Test Agility DPS Ring 2
					i(109418),	-- 6.0 QA Combat Test Agility DPS Ring 3
					i(109478),	-- 6.0 QA Combat Test Agility DPS Ring 4
					i(109365),	-- 6.0 QA Combat Test Caster DPS Ring
					i(109410),	-- 6.0 QA Combat Test Caster DPS Ring 2
					i(109447),	-- 6.0 QA Combat Test Caster DPS Ring 3
					i(109454),	-- 6.0 QA Combat Test Caster DPS Ring 4
					i(109512),	-- 6.0 QA Combat Test Caster DPS Ring 5
					i(109277),	-- 7.0 QA Combat Test Ring 1
				}),
				n(P6xx, {
					-- Does Not Load In Game --
					i(109516),	-- 7.0 QA Combat Test Ring 5
				}),
			}),
			filter(TRINKET_F, {
				tier(WOD_TIER, 0.1, {
					i(114960),	-- Spires unused
					-- Does Not Load In Game --
					i(109263),	-- 6.0 QA Combat Test Agility DPS Trinket
					i(109360),	-- 6.0 QA Combat Test Agility DPS Trinket 2
					i(109386),	-- 6.0 QA Combat Test Agility DPS Trinket 3
					i(109442),	-- 6.0 QA Combat Test Agility DPS Trinket 4
					i(109407),	-- 6.0 QA Combat Test Caster DPS Trinket 3
					i(109376),	-- 6.0 QA Combat Test Strength DPS Trinket
					i(109403),	-- 6.0 QA Combat Test Strength DPS Trinket 2
					i(109446),	-- 6.0 QA Combat Test Strength DPS Trinket 3
					i(109467),	-- 6.0 QA Combat Test Strength DPS Trinket 4
					i(109378),	-- 6.0 QA Combat Test Tank Trinket
					i(109394),	-- 6.0 QA Combat Test Tank Trinket 2
					i(109480),	-- 6.0 QA Combat Test Tank Trinket 3
					i(109495),	-- 6.0 QA Combat Test Tank Trinket 4
					i(109515),	-- 6.0 QA Combat Test Tank Trinket 5
					i(109286),	-- 7.0 QA Combat Test Caster DPS Trinket 1
					i(109370),	-- 7.0 QA Combat Test Caster DPS Trinket 2
					i(109413),	-- 7.0 QA Combat Test Caster DPS Trinket 4
					i(113020),	-- 7.0 QRP Template PH Agi Trinket #1
					i(113021),	-- 7.0 QRP Template PH Agi Trinket #2
					i(113022),	-- 7.0 QRP Template PH Int Trinket #1
					i(113017),	-- 7.0 QRP Template PH Int Trinket #2
					i(113018),	-- 7.0 QRP Template PH Str Trinket #1
					i(113019),	-- 7.0 QRP Template PH Str Trinket #2
				}),
				tier(WOD_TIER, 2.0, {
					i(124870),	-- Wild Gladiator's Accolade of Conquest
					i(125044),	-- Wild Combatant's Accolade of Conquest
					i(125347),	-- Wild Gladiator's Accolade of Conquest
					i(125521),	-- Wild Combatant's Accolade of Conquest
					i(124871),	-- Wild Gladiator's Accolade of Dominance
					i(125045),	-- Wild Combatant's Accolade of Dominance
					i(125348),	-- Wild Gladiator's Accolade of Dominance
					i(125522),	-- Wild Combatant's Accolade of Dominance
					i(124874),	-- Wild Gladiator's Accolade of Endurance
					i(125048),	-- Wild Combatant's Accolade of Endurance
					i(125351),	-- Wild Gladiator's Accolade of Endurance
					i(125525),	-- Wild Combatant's Accolade of Endurance
					i(124873),	-- Wild Gladiator's Accolade of Meditation
					i(125047),	-- Wild Combatant's Accolade of Meditation
					i(125350),	-- Wild Gladiator's Accolade of Meditation
					i(125524),	-- Wild Combatant's Accolade of Meditation
					i(124872),	-- Wild Gladiator's Accolade of Victory
					i(125046),	-- Wild Combatant's Accolade of Victory
					i(125349),	-- Wild Gladiator's Accolade of Victory
					i(125523),	-- Wild Combatant's Accolade of Victory
				}),
			}),
		}),
		tier(LEGION_TIER, {
			cl(ROGUE, {
				tier(LEGION_TIER, 0.3, {
					i(130327),	-- Artful Britches
				}),
			}),
			n(BACK, {
				tier(LEGION_TIER, 0.3, {
					i(134579),	-- Vanguard Cape
					i(134605),	-- Vanguard Cloak
					i(134609),	-- Scorching Cape
					i(134617),	-- Scorching Drape
				}),
				tier(LEGION_TIER, 1.0, {
					i(134693),	-- Enveloping Cape
					i(134699),	-- Enveloping Drape
				}),
				tier(LEGION_TIER, 2.5, {
					i(150489),	-- Shroud of Forgiveness
					i(150714),	-- Travel-Worn Shawl
				}),
				tier(LEGION_TIER, 3.5, {
					i(157751),	-- Drape of New Beginnings
				}),
			}),
			filter(CLOTH, {
				tier(LEGION_TIER, 0.3, {
					i(134017),	-- Don Carlos' Famous Hat
					i(138420),	-- Pilfered Ettin String
				}),
				tier(LEGION_TIER, 2.0, {
					i(147517, {["modID"] = 2 }),	-- Inquisitor's Battle Cowl
				}),
				tier(LEGION_TIER, 3.0, {
					i(153289),	-- Eredar Priestess' Tunic
				}),
				tier(LEGION_TIER, 3.5, {
					i(142214),	-- 7.1 Dungeon - Karazhan - Cloth SHOULDER 2
				}),
			}),
			filter(LEATHER, {
				tier(LEGION_TIER, 0.3, {
					i(129046),	-- 7.0 PH Leather Helm
					i(129127),	-- Ebon Stalker's Boots
				}),
				tier(LEGION_TIER, 2.0, {
					i(147036),	-- Fel-Stippled Legguards
				}),
			}),
			filter(MAIL, {
				tier(LEGION_TIER, 0.3, {
					i(129152),	-- Boulderfall Stompers
				}),
				tier(LEGION_TIER, 2.0, {
					i(147058),	-- Chaos-Calming Wristguards
				}),
				tier(LEGION_TIER, 2.5, {
					i(140011),	-- Duskwatch Adjudicator's Pauldrons
				}),
				tier(LEGION_TIER, 3.0, {
					i(152745),	-- REUSE ME
				}),
			}),
			filter(PLATE, {
				tier(LEGION_TIER, 1.0, {
					i(138489),	-- Kargath's Sacrified Hands
				}),
				tier(LEGION_TIER, 2.0, {
					i(147514, {["modID"] = 2 }),	-- Felguard Destroyer's Legplates
					i(147074),	-- Vambraces of Resoulte Justice
				}),
			}),
			filter(COSMETIC, {
				tier(LEGION_TIER, 0.3, {
					i(133996),	-- Burgy Blackheart's Handsome Hat
					i(134110),	-- Hidden Helm
					i(134111),	-- Hidden Cloak
					i(134112),	-- Hidden Shoulder
					i(134013),	-- Chef's Hat [Likely the cosmetic effect from when you use the toy]
					i(92894),	-- Art Template Generic Head - Helm_Misc_StarPartyHat_A_01
					i(81862),	-- Art Template Robe Dress_B_03 - Blue
				}),
				tier(LEGION_TIER, 1.0, {
					i(142504),	-- Hidden Tabard
					i(143539),	-- Hidden Belt
					i(142503),	-- Hidden Shirt
				}),
			}),
			filter(TABARDS, {
				tier(LEGION_TIER, 2.0, {
					i(147204),	-- Black Apron - TEST
				}),
			}),
			filter(NECK_F, {
				tier(LEGION_TIER, 0.3, {
					i(131919),	-- Bitestone Incisor
					i(134710),	-- Enveloping Choker
					i(134708),	-- Enveloping Necklace
					i(134628),	-- Scorching Choker
					i(134599),	-- Vanguard Choker
					i(134597),	-- Vanguard Necklace
					i(134598),	-- Vanguard Pendant
				}),
				tier(LEGION_TIER, 3.0, {
					i(153484),	-- Fierce Combatant's Necklace
				}),
				tier(LEGION_TIER, 3.5, {
					i(157750),	-- Pendant of Good Fortune
				}),
			}),
			filter(FINGER_F, {
				tier(LEGION_TIER, 0.3, {
					i(141907),	-- Arena Victory Bonus
				}),
				tier(LEGION_TIER, 1.0, {
					i(143604),	-- Rating Min Item Level Reward
				}),
				tier(LEGION_TIER, 1.5, {
					i(144455),	-- Rating Min Item Level Reward
				}),
				tier(LEGION_TIER, 2.0, {
					i(147397),	-- Rating Min Item Level Reward
					i(147421),	-- Rating Min Item Level Reward
				}),
				tier(LEGION_TIER, 3.0, {
					i(150368),	-- Rating Min Item Level Reward
					i(150369),	-- Rating Min Item Level Reward
					i(150370),	-- Rating Min Item Level Reward
				}),
				tier(LEGION_TIER, 3.5, {
					i(157748),	-- Simple Golden Ring
					i(157749),	-- Ornate Silver Loop
				}),
			}),
			filter(TRINKET_F, {
				tier(LEGION_TIER, 0.3, {
					i(133062),	-- Demon Trophy of Insanity
					i(131803),	-- Spine of Barax
				}),
				tier(LEGION_TIER, 1.0, {
					i(140035),	-- Fluctuating Arc Capacitor
					i(138084),	-- Iron Wrought Insignia of Conquest
					i(138090),	-- Iron Wrought Insignia of Dominance
					i(138093),	-- Iron Wrought Insignia of Victory
					i(140027),	-- Ley Spark
				}),
				tier(LEGION_TIER, 3.0, {
					i(151967),	-- Electrostatic Lasso
					i(151961),	-- Legionsteel Flywheel
				}),
				tier(LEGION_TIER, 3.5, {
					i(157746),	-- Graven Keepsake
					i(157747),	-- Illuminated Charm
				}),
				n(P7xx, {
					i(150367),	-- Test Trinket
				}),
			}),
			n(RELICS, {
				tier(LEGION_TIER, 0.3, {
					i(133018),	-- Azsuna Package 3 - Holy 1 - Unused
					i(138229),	-- Nightmare Boss 3 Relic Storm
					i(130162),	-- Val-Sharah Artifact Gem #1 [Holy]
				}),
			}),
			n(TRIAL_OF_STYLE_HEADER, {
				tier(LEGION_TIER, 2.5, {
					i(188240),	-- Augur's Walkers
					i(188246),	-- Bloodbathed Slippers
					i(188247),	-- Boots of the Blightbelcher
					i(188242),	-- Cleric's Sabatons
					i(188245),	-- Cold Cage Moccasins
					i(188251),	-- Corrupted Cleats
					i(188239),	-- Keeper's Strides
					i(188250),	-- Pustule Prancers
					i(188241),	-- Stalker's Treads
					i(188238),	-- Thief's Footpads
				}),
			}),
		}),
		tier(BFA_TIER, {
			d(TIMEWALKING_DUNGEON, {
				tier(LEGION_TIER, 2.5, {
					i(150450),	-- Nether Shadow Tunic
					i(150448),	-- Pauldrons of Abyssal Fury
					i(150461),	-- Praetorian's Legguards
					i(150465),	-- Myrmidon's Treads
					i(150472),	-- Grips of Silent Justice
					i(150449),	-- Wraps of Precise Flight
					i(150457),	-- Bands of the Coming Storm
					i(150502),	-- Touch of Inspiration
					i(150458),	-- Choker of Endless Nightmares
					i(150501),	-- Translucent Spellthread Necklace
					i(150508),	-- Pendant of Titans
					i(150515),	-- Nadina's Pendant of Purity
				}),
			}),
			n(BACK, {
				tier(BFA_TIER, 0.1, {
					i(153397),	-- Salt Starched Shawl
					i(154968),	-- Drape of the Golden City
					i(155384),	-- Singed Skycaller Drape
					i(156755),	-- Drape of Revengeance
					i(158500),	-- Salt Starched Shawl
					i(158552),	-- Drape of the Golden City
					i(158582),	-- Wickerweave Cloak
				}),
				tier(BFA_TIER, 1.0, {
					i(165792),	-- Worn Cloak
				}),
				tier(BFA_TIER, 3.0, {
					i(174857),	-- Hidden Cloak
				}),
				n(P8xx, {
					i(165261),	-- Fallback Armor - Cloak
				}),
			}),
			filter(CLOTH, {
				tier(BFA_TIER, 0.1, {
					i(156753),	-- Turnabout Gloves
					i(153389),	-- Galetorn Crown
					i(153390),	-- Galetorn Gloves
					i(153391),	-- Galetorn Sash
					i(153392),	-- Galetorn Cuffs
					i(153393),	-- Galetorn Slippers
					i(153394),	-- Galetorn Robes
					i(153395),	-- Galetorn Leggings
					i(153396),	-- Galetorn Mantle
					i(154960),	-- Loa-Shaper's Crown
					i(154961),	-- Loa-Shaper's Gloves
					i(154962),	-- Loa-Shaper's Cinch
					i(154963),	-- Loa-Shaper's Cuffs
					i(154964),	-- Loa-Shaper's Sandals
					i(154965),	-- Loa-Shaper's Robe
					i(154966),	-- Loa-Shaper's Kilt
					i(154967),	-- Loa-Shaper's Mantle
					i(158467),	-- Loa-Shaper's Cinch
					i(158492),	-- Galetorn Crown
					i(158493),	-- Galetorn Gloves
					i(158494),	-- Galetorn Sash
					i(158495),	-- Galetorn Cuffs
					i(158496),	-- Galetorn Slippers
					i(158497),	-- Galetorn Robes
					i(158498),	-- Galetorn Leggings
					i(158499),	-- Galetorn Mantle
					i(158544),	-- Loa-Shaper's Crown
					i(158545),	-- Loa-Shaper's Gloves
					i(158546),	-- Loa-Shaper's Cinch
					i(158547),	-- Loa-Shaper's Cuffs
					i(158548),	-- Loa-Shaper's Sandals
					i(158549),	-- Loa-Shaper's Robe
					i(158550),	-- Loa-Shaper's Kilt
					i(158551),	-- Loa-Shaper's Mantle
					--
					i(159170),	-- Freehold Handwraps
					i(159183),	-- Foxhollow Cord
					i(159190),	-- Foxhollow Bracelets
					i(159216),	-- Sagehold Sash
					i(159221),	-- Sagehold Slippers
					i(154866),	-- Heartsbane Cord
					i(154867),	-- Heartsbane Crown
					i(154868),	-- Heartsbane Gloves
					i(154869),	-- Heartsbane Leggings
					i(154870),	-- Heartsbane Robes
					i(154871),	-- Heartsbane Sandals
					i(154873),	-- Heartsbane Cuffs
				}),
				tier(BFA_TIER, 2.0, {
					i(167111),	-- QA Combat Test Caster Belt 1
					i(167112),	-- QA Combat Test Caster Robes 1
					i(167113),	-- QA Combat Test Caster Shoulders 1
					i(167114),	-- QA Combat Test Caster Gloves 1
					i(167115),	-- QA Combat Test Caster Helm 1
					i(167116),	-- QA Combat Test Caster Legs 1
					i(167117),	-- QA Combat Test Caster Boots
					i(167118),	-- QA Combat Test Caster Bracer 1
				}),
			}),
			filter(LEATHER, {
				tier(BFA_TIER, 0.1, {
					i(156751),	-- Nightbinder Grips
					i(153373),	-- Sea-Treated Armbands
					i(153374),	-- Sea-Treated Grips
					i(153375),	-- Sea-Treated Belt
					i(153376),	-- Sea-Treated Boots
					i(153377),	-- Sea-Treated Vest
					i(153378),	-- Sea-Treated Mask
					i(153379),	-- Sea-Treated Shoulderguards
					i(153380),	-- Sea-Treated Trousers
					i(154944),	-- Dinohide Armbands
					i(154945),	-- Dinohide Grips
					i(154946),	-- Dinohide Belt
					i(154947),	-- Dinohide Boots
					i(154948),	-- Dinohide Vest
					i(154949),	-- Dinohide Mask
					i(154950),	-- Dinohide Shoulderguards
					i(154951),	-- Dinohide Trousers
					i(158476),	-- Sea-Treated Armbands
					i(158477),	-- Sea-Treated Grips
					i(158478),	-- Sea-Treated Belt
					i(158479),	-- Sea-Treated Boots
					i(158480),	-- Sea-Treated Vest
					i(158481),	-- Sea-Treated Mask
					i(158482),	-- Sea-Treated Shoulderguards
					i(158483),	-- Sea-Treated Trousers
					i(158528),	-- Dinohide Armbands
					i(158529),	-- Dinohide Grips
					i(158530),	-- Dinohide Belt
					i(158531),	-- Dinohide Boots
					i(158532),	-- Dinohide Vest
					i(158533),	-- Dinohide Mask
					i(158534),	-- Dinohide Shoulderguards
					i(158535),	-- Dinohide Trousers
					--
					i(154849),	-- Crimsonwood Bracers
					i(154852),	-- Crimsonwood Gloves
					i(154856),	-- Crimsonwood Belt
					i(159201),	-- Briarback Treads
					i(159203),	-- Briarback Gloves
					i(159175),	-- Mistfall Belt
					i(159176),	-- Mistfall Bracers
					i(159177),	-- Mistfall Gloves
					i(159178),	-- Mistfall Boots
					i(159180),	-- Mistfall Legguards
					i(159181),	-- Mistfall Spaulders
					i(159182),	-- Mistfall Chainmail
				}),
				tier(BFA_TIER, 1.0, {
					i(166786),	-- Disenchant Test Item
					i(166239),	-- Testus Maximus Breastplate
				}),
				n(P8xx, {
					-- They are leather even tho name is cloth
					i(165253),	-- Fallback Armor - Cloth Waist
					i(165254),	-- Fallback Armor - Cloth Feet
					i(165255),	-- Fallback Armor - Cloth Chest
					i(165256),	-- Fallback Armor - Cloth Hand
					i(165257),	-- Fallback Armor - Cloth Head
					i(165258),	-- Fallback Armor - Cloth Legs
					i(165259),	-- Fallback Armor - Cloth Shoulder
					i(165260),	-- Fallback Armor - Cloth Wrist
					i(167103),	-- QA Combat Test Leather Bracer
					i(167104),	-- QA Combat Test Leather Legs
					i(167105),	-- QA Combat Test Leather Belt
					i(167106),	-- QA Combat Test Leather Gloves 1
					i(167107),	-- QA Combat Test Leather Shoulders
					i(167108),	-- QA Combat Test Leather Chest
					i(167109),	-- QA Combat Test Leather Helm
					i(167110),	-- QA Combat Test Leather Boots
				}),
			}),
			filter(MAIL, {
				tier(BFA_TIER, 0.1, {
					i(156754),	-- Throatcrusher Grips
					i(153381),	-- Aiguille-Scaler's Wristguards
					i(153382),	-- Aiguille-Scaler's Gloves
					i(153383),	-- Aiguille-Scaler's Leggings
					i(153384),	-- Aiguille-Scaler's Coif
					i(153385),	-- Aiguille-Scaler's Boots
					i(153386),	-- Aiguille-Scaler's Girdle
					i(153387),	-- Aiguille-Scaler's Chestguard
					i(153388),	-- Aiguille-Scaler's Spaulders
					i(154952),	-- Saurscale Wristguards
					i(154953),	-- Saurscale Gloves
					i(154954),	-- Saurscale Leggings
					i(154955),	-- Saurscale Coif
					i(154956),	-- Saurscale Boots
					i(154957),	-- Saurscale Girdle
					i(154958),	-- Saurscale Chestguard
					i(154959),	-- Saurscale Spaulders
					i(158484),	-- Aiguille-Scaler's Wristguards
					i(158485),	-- Aiguille-Scaler's Gloves
					i(158486),	-- Aiguille-Scaler's Leggings
					i(158487),	-- Aiguille-Scaler's Coif
					i(158488),	-- Aiguille-Scaler's Boots
					i(158489),	-- Aiguille-Scaler's Girdle
					i(158490),	-- Aiguille-Scaler's Chestguard
					i(158491),	-- Aiguille-Scaler's Spaulders
					i(158536),	-- Saurscale Wristguards
					i(158537),	-- Saurscale Gloves
					i(158538),	-- Saurscale Leggings
					i(158539),	-- Saurscale Coif
					i(158540),	-- Saurscale Boots
					i(158541),	-- Saurscale Girdle
					i(158542),	-- Saurscale Chestguard
					i(158543),	-- Saurscale Spaulders
					i(154861),	-- Barrowknoll Boots
					i(159208),	-- Eventide Cinch
					i(159210),	-- Eventide Gloves
					i(159213),	-- Eventide Leggings
				}),
				tier(BFA_TIER, 2.0, {
					i(167119),	-- QA Combat Test Mail Helm
					i(167120),	-- QA Combat Test Mail Legs 1
					i(167121),	-- QA Combat Test Mail Bracer 1
					i(167122),	-- QA Combat Test Mail Belt 1
					i(167123),	-- QA Combat Test Mail Chest 1
					i(167124),	-- QA Combat Test Mail Gloves 1
					i(167125),	-- QA Combat Test Mail Shoulders 1
					i(167126),	-- QA Combat Test Mail Boots 1
				}),
			}),
			filter(PLATE, {
				tier(BFA_TIER, 0.1, {
					i(160673),	-- Primus Breastplate
					i(160674),	-- Secondus Breastplate
					i(160675),	-- Tertius Breastplate
					i(160676),	-- Quartius Breastplate
					i(160677),	-- Pentius Breastplate
					i(164525),	-- Rattling Bone Greatbelt
					i(153365),	-- Dead-Watcher Greaves
					i(153366),	-- Dead-Watcher Helmet
					i(153367),	-- Dead-Watcher Breastplate
					i(153368),	-- Dead-Watcher Waistplate
					i(153369),	-- Dead-Watcher Pauldrons
					i(153370),	-- Dead-Watcher Gauntlets
					i(153371),	-- Dead-Watcher Vambraces
					i(153372),	-- Dead-Watcher Sabatons
					i(154936),	-- Dead-Watcher Greaves
					i(154937),	-- Dead-Watcher Helmet
					i(154938),	-- Dead-Watcher Breastplate
					i(154939),	-- Dead-Watcher Waistplate
					i(154940),	-- Dead-Watcher Pauldrons
					i(154941),	-- Dead-Watcher Gauntlets
					i(154942),	-- Dead-Watcher Vambraces
					i(154943),	-- Dead-Watcher Sabatons
					i(158468),	-- Dead-Watcher Greaves
					i(158469),	-- Dead-Watcher Helmet
					i(158470),	-- Dead-Watcher Breastplate
					i(158471),	-- Dead-Watcher Waistplate
					i(158472),	-- Dead-Watcher Pauldrons
					i(158473),	-- Dead-Watcher Gauntlets
					i(158474),	-- Dead-Watcher Vambraces
					i(158475),	-- Dead-Watcher Sabatons
					i(158520),	-- Dead-Watcher Greaves
					i(158521),	-- Dead-Watcher Helmet
					i(158522),	-- Dead-Watcher Breastplate
					i(158523),	-- Dead-Watcher Waistplate
					i(158524),	-- Dead-Watcher Pauldrons
					i(158525),	-- Dead-Watcher Gauntlets
					i(158526),	-- Dead-Watcher Vambraces
					i(158527),	-- Dead-Watcher Sabatons
					--
					i(159159),	-- Ashvane Company Gauntlets
					i(159160),	-- Ashvane Company Girdle
					i(159165),	-- Ashvane Company Bracers
					i(154841),	-- Corlain Gauntlets
					i(154846),	-- Corlain Sabatons
					i(159195),	-- Brineworks Greaves
					i(159197),	-- Brineworks Stompers
				}),
				tier(BFA_TIER, 2.0, {
					i(167127),	-- QA Combat Test Plate Bracer 1
					i(167128),	-- QA Combat Test Plate Chest 1
					i(167129),	-- QA Combat Test Plate Shoulders 1
					i(167130),	-- QA Combat Test Plate Gloves 1
					i(167131),	-- QA Combat Test Plate Belt 1
					i(167132),	-- QA Combat Test Plate Helm 1
					i(167133),	-- QA Combat Test Plate Legs 1
					i(167134),	-- QA Combat Test Plate Boots
				}),
			}),
			filter(COSMETIC, {
				tier(BFA_TIER, 0.1, {
					i(158329),	-- Hidden Gloves
					i(163922),	-- Kobold Candle Helm
					i(163923),	-- Kobold Candle Helm
				}),
				tier(BFA_TIER, 1.5, {
					i(168004),	-- Gift of N'Zoth
				}),
				tier(BFA_TIER, 2.0, {
					i(168659),	-- Hidden Chestpiece
					i(168664),	-- Hidden Boots
					i(168665),	-- Hidden Bracers
				}),
			}),
			filter(NECK_F, {
				tier(BFA_TIER, 0.1, {
					i(153399),	-- Shaleshell Pendant
					i(154970),	-- Shaleshell Pendant
					i(158502),	-- Shaleshell Pendant
					i(158554),	-- Shaleshell Pendant
				}),
				n(P8xx, {
					i(167137),	-- QA Combat Test Neck 1
				}),
			}),
			filter(FINGER_F, {
				tier(BFA_TIER, 0.1, {
					i(158501),	-- Sea Sapphire Band
					i(158519),	-- Beaten Copper Loop
					i(158553),	-- Sea Sapphire Band
					i(158578),	-- Beaten Copper Loop
					i(158659),	-- Zul Adherent's Ring
					i(158660),	-- Fletcher's Band
					i(161288),	-- Honey-Maker's Ring
					i(162454),	-- Band of the Stormy Coast
				}),
				tier(BFA_TIER, 1.0, {
					i(166490),	-- Shiny Ring
				}),
				tier(BFA_TIER, 3.0, {
					i(174050),	-- Corrupted Ring - Revel in Violence
					i(174051),	-- Corrupted Ring - Spontaneous Fury
					i(174056),	-- Corrupted Ring - Face the Truth
					i(174057),	-- Corrupted Ring - Mesmerizing
				}),
				n(P8xx, {
					i(167135),	-- QA Combat Test Ring 1
					i(167136),	-- QA Combat Test Ring 2
					i(173421),	-- Black Empire Signet
				}),
			}),
			filter(TRINKET_F, {
				tier(BFA_TIER, 0.1, {
					i(161223),	-- Agency Manipulator
					i(157761),	-- Barbaric Mindslaver
					i(154983),	-- Bijou of the Golden City
					i(158574),	-- Bijou of the Golden City
					i(157764),	-- Claw of the Crystalline Scorpid
					i(157765),	-- Draught of Souls
					i(154984),	-- Enchanted Devilsaur Claw
					i(158575),	-- Enchanted Devilsaur Claw
					i(157763),	-- Engine of Eradication
					i(161222),	-- Latency Manipulator
					i(153409),	-- Lucky Braid
					i(154980),	-- Lucky Braid
					i(158512),	-- Lucky Braid
					i(158571),	-- Lucky Braid
					i(153413),	-- Privateer's Spyglass
					i(158516),	-- Privateer's Spyglass
					i(153412),	-- Oceanographer's Weather Log
					i(158515),	-- Oceanographer's Weather Log
					i(153411),	-- Petrified Basilisk Scale
					i(154982),	-- Petrified Basilisk Scale
					i(158514),	-- Petrified Basilisk Scale
					i(158573),	-- Petrified Basilisk Scale
					i(161289),	-- Rikal's Shark Teeth
					i(153408),	-- Seabeast Tusk
					i(154979),	-- Seabeast Tusk
					i(158511),	-- Seabeast Tusk
					i(158570),	-- Seabeast Tusk
					i(153410),	-- Shimmering Rune
					i(154981),	-- Shimmering Rune
					i(158513),	-- Shimmering Rune
					i(158572),	-- Shimmering Rune
					i(157766),	-- Vial of Nightmare Fog
				}),
				tier(BFA_TIER, 2.5, {
					i(171528),	-- Reign of the Dead
					i(171549),	-- Reign of the Unliving
				}),
				tier(BFA_TIER, 3.0, {
					i(173426),	-- Black Empire trinkets
				}),
				n(P8xx, {
					i(167138),	-- QA Combat Test Trinket 1
					i(167139),	-- QA Combat Test Trinket 2
				}),
			}),
			filter(MISC, {
				i(164287),	-- Plundered Dragonrider Spaulders
				i(164288),	-- Plundered Gjalerbron Pauldrons
				i(164286),	-- Plundered Runecaster's Mantle
				i(164285),	-- Plundered Shoveltusk-Hide Shoulders
			}),
		}),
		tier(SL_TIER, {
			n(BACK, {
				tier(SL_TIER, 0.1, {
					i(169822),	-- Flowing Cloak
				}),
				tier(SL_TIER, 0.5, {
					i(167150),	-- QA Combat Test Cloak 1
				}),
				tier(SL_TIER, 2.0, {
					i(188117),	-- Cypher Attunement Cloak
					i(184123),	-- Sinful Gladiator's Cape
					i(184145),	-- Sinful Aspirant's Greatcloak
				}),
			}),
			filter(CLOTH, {
				tier(SL_TIER, 2.0, {
					i(188065),	-- Choral Bands
					i(188064),	-- Choral Belt
					i(188063),	-- Choral Breeches
					i(188062),	-- Choral Cowl
					i(188061),	-- Choral Gloves
					i(188066),	-- Choral Mantle
					i(188060),	-- Choral Shoes
					i(188059),	-- Choral Tunic
					--
					i(190244),	-- Enlightened Researcher's Boots
					i(190279),	-- Enlightened Researcher's Breeches
					i(190248),	-- Enlightened Researcher's Cord
					i(190245),	-- Enlightened Researcher's Grips
					i(190277),	-- Enlightened Researcher's Handwraps
					i(190247),	-- Enlightened Researcher's Leggings
					i(190282),	-- Enlightened Researcher's Mantle
					i(190246),	-- Enlightened Researcher's Mask
					i(190275),	-- Enlightened Researcher's Raiment
					i(190280),	-- Enlightened Researcher's Sash
					i(190274),	-- Enlightened Researcher's Shawl
					i(190276),	-- Enlightened Researcher's Treads
					i(190243),	-- Enlightened Researcher's Tunic
					i(190278),	-- Enlightened Researcher's Visage
					i(190281),	-- Enlightened Researcher's Wraps
					i(190249),	-- Enlightened Researcher's Wristbands
					--

					i(188110),	-- Cypher Attunement Chestpiece
					i(188109),	-- Cypher Attunement Feet
					i(188116),	-- Cypher Attunement Hands
					i(188114),	-- Cypher Attunement Head
					i(188115),	-- Cypher Attunement Legs
					i(188107),	-- Cypher Attunement Shoulder
					i(188108),	-- Cypher Attunement Waist
					i(188113),	-- Cypher Attunement Wrist
					--
					i(190621, {	-- Dealic Deterrent Stockings
						["modID"] = 4
					}),
					i(190621, {	-- Dealic Deterrent Stockings
						["modID"] = 2
					}),
					i(190621, {	-- Dealic Deterrent Stockings
						["modID"] = 6
					}),
					i(190620, {	-- Sav'thul's Calamitous Tantour
						["modID"] = 4,
					}),
					i(190620, {	-- Sav'thul's Calamitous Tantour
						["modID"] = 2,
					}),
					i(190620, {	-- Sav'thul's Calamitous Tantour
						["modID"] = 6,
					}),
				}),
				tier(SL_TIER, 2.5, {
					i(191425),	-- Choral Amice
				}),
			}),
			filter(LEATHER, {
				tier(SL_TIER, 0.1, {
					i(178148),	-- 9.0 Dungeon - PH Item
					i(180559),	-- Boots of Endless Betrayal
					i(180561),	-- Bracers of Impossible Choices
					i(180560),	-- Girdle of Nefarious Strategy
					i(180620),	-- High Shadow Councilor's Wrap
					i(180565),	-- Lifeless Buckled Girdle
					i(180618),	-- Stained Maggot Squishers
					i(180567),	-- Stutterstep Treads
					i(178305),	-- unused
					i(180566),	-- Well-Flattened Wristguards
					i(180619),	-- Wristwraps of Broken Trust
				}),
				tier(SL_TIER, 2.0, {
					i(188068),	-- Staccato Bands
					i(188072),	-- Staccato Bracers
					i(188069),	-- Staccato Cap
					i(188089),	-- Staccato Jerkin
					i(188070),	-- Staccato Pants
					i(188090),	-- Staccato Pauldrons
					i(188067),	-- Staccato Treads
					i(188071),	-- Staccato Waistband
					--
					i(190254),	-- Unbound Explorer's Belt
					i(190255),	-- Unbound Explorer's Bindings
					i(190288),	-- Unbound Explorer's Bracers
					i(190272),	-- Unbound Explorer's Chestguard
					i(190285),	-- Unbound Explorer's Cowl
					i(190306),	-- Unbound Explorer's Epaulets
					i(190250),	-- Unbound Explorer's Footpads
					i(190284),	-- Unbound Explorer's Gloves
					i(190251),	-- Unbound Explorer's Handlers
					i(190252),	-- Unbound Explorer's Headgear
					i(190305),	-- Unbound Explorer's Jerkin
					i(190253),	-- Unbound Explorer's Legguards
					i(190273),	-- Unbound Explorer's Shoulderguards
					i(190283),	-- Unbound Explorer's Striders
					i(190286),	-- Unbound Explorer's Trousers
					i(190287),	-- Unbound Explorer's Waistwrap
					--
					i(190618, {	-- Lattice of the Distant Keeper
						["bonusID"] = 451
					}),
					i(190618, {	-- Lattice of the Distant Keeper
						["modID"] = 2
					}),
					i(190618, {	-- Lattice of the Distant Keeper
						["modID"] = 6
					}),
					i(190619, {	-- Antecedent's Aliform Joggers
						["modID"] = 4
					}),
					i(190619, {	-- Antecedent's Aliform Joggers
						["modID"] = 2
					}),
					i(190619, {	-- Antecedent's Aliform Joggers
						["modID"] = 6
					})
				}),
			}),
			filter(MAIL, {
				tier(SL_TIER, 0.1, {
					i(183993),	-- Ye Olde Test Chestguard
					i(183994),	-- Ye Olde Test Chestguard
					i(183999),	-- Ye Olde Test Chestguard
					i(184000),	-- Ye Olde Test Chestguard
					i(184003),	-- Ye Olde Test Chestguard
					i(184005),	-- Ye Olde Test Chestguard
					i(184006),	-- Ye Olde Test Chestguard
					i(184008),	-- Ye Olde Test Chestguard
					i(184009),	-- Ye Olde Test Chestguard
					i(184012),	-- Ye Olde Test Chestguard
					i(178304),	-- unused
				}),
				tier(SL_TIER, 2.0, {
					i(188074),	-- Anthemic Boots
					i(188079),	-- Anthemic Clasp
					i(188077),	-- Anthemic Cuisses
					i(188075),	-- Anthemic Grasps
					i(188073),	-- Anthemic Hauberk
					i(188076),	-- Anthemic Helm
					i(188078),	-- Anthemic Pauldrons
					i(188080),	-- Anthemic Wristlinks
					--
					i(190295),	-- Transcendent Vagabond's Chain
					i(190263),	-- Transcendent Vagabond's Clasps
					i(190259),	-- Transcendent Vagabond's Coif
					i(190289),	-- Transcendent Vagabond's Cuirass
					i(190257),	-- Transcendent Vagabond's Footguards
					i(190293),	-- Transcendent Vagabond's Greaves
					i(190291),	-- Transcendent Vagabond's Grips
					i(190258),	-- Transcendent Vagabond's Handguards
					i(190292),	-- Transcendent Vagabond's Helm
					i(190260),	-- Transcendent Vagabond's Pants
					i(190256),	-- Transcendent Vagabond's Scales
					i(190261),	-- Transcendent Vagabond's Shoulderpads
					i(190294),	-- Transcendent Vagabond's Spaulders
					i(190290),	-- Transcendent Vagabond's Striders
					i(190262),	-- Transcendent Vagabond's Waistguard
					i(190296),	-- Transcendent Vagabond's Wristguards
					--

					--
					i(190616, {	-- Controlled Sequence Clasp
						["bonusID"] = 451
					}),
					i(190616, {	-- Controlled Sequence Clasp
						["modID"] = 2
					}),
					i(190616, {	-- Controlled Sequence Clasp
						["modID"] = 6
					}),
					i(190617, {	-- Destruction-Core Handlers
						["bonusID"] = 451
					}),
					i(190617, {	-- Destruction-Core Handlers
						["modID"] = 2
					}),
					i(190617, {	-- Destruction-Core Handlers
						["modID"] = 6
					}),
				}),
			}),
			filter(PLATE, {
				tier(SL_TIER, 0.1, {
					i(180537),	-- Eredar Warcouncil Sabatons
					i(180538),	-- Nathrezim Battle Girdle
					i(170051),	-- Lost Pauldron of Might
					i(170052),	-- Lost Helm of Might
					i(180539),	-- Vambraces of Life's Assurance
					i(180550),	-- Doomwalker Warboots
					i(180551),	-- Flamelicked Girdle
					i(180552),	-- Wristguards of the Dark Keepers
				}),
				tier(SL_TIER, 2.0, {
					i(188082),	-- Harmonium Armor
					i(188087),	-- Harmonium Belt
					i(188088),	-- Harmonium Binders
					i(188083),	-- Harmonium Boots
					i(188084),	-- Harmonium Grips
					i(188085),	-- Harmonium Pillars
					i(188086),	-- Harmonium Shoulderplates
					i(188081),	-- Harmonium Visor
					--
					i(190623),	-- [DNT] 9.2 Raid - Sepulcher of the First Ones - Trash Drops - Armor - Plate Shoulders
					i(190298),	-- Eternal Warder's Breastplate
					i(190303),	-- Eternal Warder's Buckle
					i(190265),	-- Eternal Warder's Chestplate
					i(190300),	-- Eternal Warder's Crushers
					i(190268),	-- Eternal Warder's Cuisses
					i(190297),	-- Eternal Warder's Faceplate
					i(190267),	-- Eternal Warder's Gauntlets
					i(190270),	-- Eternal Warder's Girdle
					i(190299),	-- Eternal Warder's Greaves
					i(190301),	-- Eternal Warder's Legplates
					i(190269),	-- Eternal Warder's Pauldrons
					i(190266),	-- Eternal Warder's Sabatons
					i(190302),	-- Eternal Warder's Shoulderplates
					i(190271),	-- Eternal Warder's Vambraces
					i(190264),	-- Eternal Warder's Visor
					i(190304),	-- Eternal Warder's Wristplates
					--
					i(190614, {	-- Antros' Entrusted Bascinet
						["modID"] = 4,
					}),
					i(190614, {	-- Antros' Entrusted Bascinet
						["modID"] = 2,
					}),
					i(190614, {	-- Antros' Entrusted Bascinet
						["modID"] = 6,
					}),
					i(190615, {	-- Cosmic Guardian's Casing
						["modID"] = 4,
					}),
					i(190615, {	-- Cosmic Guardian's Casing
						["modID"] = 2,
					}),
					i(190615, {	-- Cosmic Guardian's Casing
						["modID"] = 6,
					}),
				}),
			}),
			filter(COSMETIC, {
				tier(SL_TIER, 0.1, {
					i(182306),	-- Monster Mantle
				}),
				tier(SL_TIER, 1.0, {
					i(186500),	-- Ensemble: Garb of the Twilight Grove(quest:63596)
					i(186518),	-- Ensemble: Forsworn Aspirant's Regalia(quest:63600)
					i(186505),	-- Ensemble: Rogue Necromancer's Vestments(quest:63629)
					i(186513),	-- Ensemble: Radiant Court Attire(quest:63632)
					i(186514),	-- Ensemble: Redeemed Inquisitor's Vestments(quest:63636)
					i(185774),	-- PH Green Head Candle
					i(186093),	-- Shaded Spectacles
				}),
				tier(SL_TIER, 1.5, {
					i(187914),	-- Captain Noteo's Unused Eye Patch
				}),
			}),
			n(LEGENDARIES, {
				-- Stupid Things?
				-- LFR
				i(190467, {	-- Girdle of Unity DK
					["bonusID"] = 6896
				}),
				i(190467, {	-- Girdle of Unity DK
					["modID"] = 4
				}),
				i(190465, {	-- Cinch of Unity Druid
					["bonusID"] = 6896
				}),
				i(190465, {	-- Cinch of Unity Druid
					["modID"] = 4
				}),
				i(190472, {	-- Cinch of Unity Monk
					["bonusID"] = 6896
				}),
				i(190472, {	-- Cinch of Unity Monk
					["modID"] = 4
				}),
				i(190468, {	-- Cord of Unity Priest
					["bonusID"] = 6897
				}),
				i(190468, {	-- Cord of Unity Priest
					["modID"] = 4
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["bonusID"] = 6896
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["modID"] = 4
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["bonusID"] = 6898
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["modID"] = 4
				}),
				i(190469, {	-- Cord of Unity Warlock
					["bonusID"] = 6896
				}),
				i(190469, {	-- Cord of Unity Warlock
					["modID"] = 4
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["bonusID"] = 6896
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["modID"] = 4
				}),
				-- LFR Alt
				i(190470, {	-- Cinch of Unity DH
					["bonusID"] = 6896
				}),
				i(190470, {	-- Cinch of Unity DH
					["modID"] = 4
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["bonusID"] = 6896
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["modID"] = 4
				}),
				i(190474, {	-- Girdle of Unity Pala
					["modID"] = 4
				}),
				i(190474, {	-- Girdle of Unity Pala
					["bonusID"] = 6896
				}),
				i(190468, {	-- Cord of Unity Priest
					["bonusID"] = 6896
				}),
				i(190464, {	-- Cord of Unity Mage
					["bonusID"] = 6896
				}),
				-- Normal
				i(190467, {	-- Girdle of Unity DK
					["bonusID"] = 8107
				}),
				i(190470, {	-- Cinch of Unity DH
					["bonusID"] = 8107
				}),
				i(190465, {	-- Cinch of Unity Druid
					["bonusID"] = 8107
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["bonusID"] = 8107
				}),
				i(190464, {	-- Cord of Unity Mage
					["bonusID"] = 8107
				}),
				i(190472, {	-- Cinch of Unity Monk
					["bonusID"] = 8107
				}),
				i(190474, {	-- Girdle of Unity Pala
					["bonusID"] = 8107
				}),
				i(190468, {	-- Cord of Unity Priest
					["bonusID"] = 8107
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["bonusID"] = 6895
				}),
				i(190469, {	-- Cord of Unity Warlock
					["bonusID"] = 8107
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["bonusID"] = 8107
				}),
				-- Normal Alt
				i(190471, {	-- Cinch of Unity Rogue
					["bonusID"] = 8107
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["modID"] = 2
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["bonusID"] = 8107
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["modID"] = 2
				}),
				-- Heroic
				i(190467, {	-- Girdle of Unity DK
					["bonusID"] = 6898
				}),
				i(190467, {	-- Girdle of Unity DK
					["modID"] = 2
				}),
				i(190470, {	-- Cinch of Unity DH
					["bonusID"] = 6898
				}),
				i(190470, {	-- Cinch of Unity DH
					["modID"] = 2
				}),
				i(190465, {	-- Cinch of Unity Druid
					["bonusID"] = 6898
				}),
				i(190465, {	-- Cinch of Unity Druid
					["modID"] = 2
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["bonusID"] = 6898
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["modID"] = 2
				}),
				i(190464, {	-- Cord of Unity Mage
					["bonusID"] = 6898
				}),
				i(190464, {	-- Cord of Unity Mage
					["modID"] = 2
				}),
				i(190472, {	-- Cinch of Unity Monk
					["bonusID"] = 6898
				}),
				i(190472, {	-- Cinch of Unity Monk
					["modID"] = 2
				}),
				i(190474, {	-- Girdle of Unity Pala
					["bonusID"] = 6898
				}),
				i(190474, {	-- Girdle of Unity Pala
					["modID"] = 2
				}),
				i(190468, {	-- Cord of Unity Priest
					["bonusID"] = 6898
				}),
				i(190468, {	-- Cord of Unity Priest
					["modID"] = 2
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["bonusID"] = 6898
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["modID"] = 6
				}),
				i(190469, {	-- Cord of Unity Warlock
					["bonusID"] = 6898
				}),
				i(190469, {	-- Cord of Unity Warlock
					["modID"] = 2
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["bonusID"] = 6898
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["modID"] = 2
				}),
				-- Mythic
				i(190467, {	-- Girdle of Unity DK
					["bonusID"] = 6897
				}),
				i(190467, {	-- Girdle of Unity DK
					["modID"] = 6
				}),
				i(190470, {	-- Cinch of Unity DH
					["bonusID"] = 6897
				}),
				i(190470, {	-- Cinch of Unity DH
					["modID"] = 6
				}),
				i(190465, {	-- Cinch of Unity Druid
					["bonusID"] = 6897
				}),
				i(190465, {	-- Cinch of Unity Druid
					["modID"] = 6
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["bonusID"] = 6897
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["modID"] = 6
				}),
				i(190464, {	-- Cord of Unity Mage
					["bonusID"] = 6897
				}),
				i(190464, {	-- Cord of Unity Mage
					["modID"] = 6
				}),
				i(190464, {	-- Cord of Unity Mage
					["bonusID"] = 6895
				}),
				i(190464, {	-- Cord of Unity Mage
					["modID"] = 4
				}),
				i(190472, {	-- Cinch of Unity Monk
					["bonusID"] = 6897
				}),
				i(190472, {	-- Cinch of Unity Monk
					["modID"] = 6
				}),
				i(190474, {	-- Girdle of Unity Pala
					["bonusID"] = 6897
				}),
				i(190474, {	-- Girdle of Unity Pala
					["modID"] = 6
				}),
				i(190468, {	-- Cord of Unity Priest
					["bonusID"] = 6897
				}),
				i(190468, {	-- Cord of Unity Priest
					["modID"] = 6
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["bonusID"] = 6897
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["bonusID"] = 6898
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["bonusID"] = 6897
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["modID"] = 6
				}),
				i(190469, {	-- Cord of Unity Warlock
					["bonusID"] = 6897
				}),
				i(190469, {	-- Cord of Unity Warlock
					["modID"] = 6
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["bonusID"] = 6897
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["modID"] = 6
				}),
				-- PvP
				i(190467, {	-- Girdle of Unity DK
					["bonusID"] = 6895
				}),
				i(190467, {	-- Girdle of Unity DK
					["bonusID"] = 6894
				}),
				i(190470, {	-- Cinch of Unity DH
					["bonusID"] = 6895
				}),
				i(190470, {	-- Cinch of Unity DH
					["bonusID"] = 6894
				}),
				i(190465, {	-- Cinch of Unity Druid
					["bonusID"] = 6895
				}),
				i(190465, {	-- Cinch of Unity Druid
					["bonusID"] = 6894
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["bonusID"] = 6894
				}),
				i(190466, {	-- Clasp of Unity Hunter
					["bonusID"] = 6895
				}),
				i(190464, {	-- Cord of Unity Mage
					["bonusID"] = 6895
				}),
				i(190464, {	-- Cord of Unity Mage
					["bonusID"] = 6894
				}),
				i(190472, {	-- Cinch of Unity Monk
					["bonusID"] = 6895
				}),
				i(190472, {	-- Cinch of Unity Monk
					["bonusID"] = 6894
				}),
				i(190474, {	-- Girdle of Unity Pala
					["bonusID"] = 6895
				}),
				i(190474, {	-- Girdle of Unity Pala
					["bonusID"] = 6894
				}),
				i(190468, {	-- Cord of Unity Priest
					["bonusID"] = 6895
				}),
				i(190468, {	-- Cord of Unity Priest
					["bonusID"] = 6894
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["bonusID"] = 6895
				}),
				i(190471, {	-- Cinch of Unity Rogue
					["bonusID"] = 6894
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["bonusID"] = 6894
				}),
				i(190473, {	-- Clasp of Unity Shaman
					["bonusID"] = 6896
				}),
				i(190469, {	-- Cord of Unity Warlock
					["bonusID"] = 6895
				}),
				i(190469, {	-- Cord of Unity Warlock
					["bonusID"] = 6894
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["bonusID"] = 6895
				}),
				i(190475, {	-- Girdle of Unity Warrior
					["bonusID"] = 6894
				}),
			}),
			filter(NECK_F, {
				tier(SL_TIER, 0.1, {
					i(177146),	-- Shaleshell Pendant
					i(177165),	-- Shaleshell Pendant
					i(175735),	-- 9.0 QRP - Bastion - Accessory - Neck
				}),
				tier(SL_TIER, 1.0, {
					i(185943),	-- Lost Adventurer's Medallion
					i(186633),	-- Mawrat Mongrel's Collar
					i(186983),	-- Attendant's Chain
				}),
				tier(SL_TIER, 2.0, {
					i(188111),	-- Cypher Attunement Neck
				}),
			}),
			filter(FINGER_F, {
				tier(SL_TIER, 0.1, {
					i(175717),	-- Inquisitor's Signet
					i(177145),	-- Sea Sapphire Band
					i(177153),	-- Beaten Copper Loop
					i(177164),	-- Sea Sapphire Band
					i(177167),	-- Beaten Copper Loop
					i(175705),	-- 9.0 QRP - Bastion - Accessory - Ring D
				}),
				tier(SL_TIER, 2.0, {
					i(188112),	-- Cypher Attunement Ring
				}),
			}),
			filter(TRINKET_F, {
				tier(SL_TIER, 0.1, {
					i(175726),	-- Primalist's Kelpling
					i(175727),	-- Elder's Stormseed
					i(177147),	-- Seabeast Tusk
					i(177148),	-- Lucky Braid
					i(177149),	-- Shimmering Rune
					i(177150),	-- Petrified Basilisk Scale
					i(177151),	-- Oceanographer's Weather Log
					i(177152),	-- Privateer's Spyglass
					i(177154),	-- Seabeast Tusk
					i(177155),	-- Shimmering Rune
					i(177156),	-- Petrified Basilisk Scale
					i(177157),	-- Bijou of the Golden City
					i(177158),	-- Enchanted Devilsaur Claw
					i(177166),	-- Lucky Braid
					i(175720),	-- 9.0 QRP - Bastion - Accessory - Trinket
					i(175721),	-- 9.0 QRP - Bastion - Accessory - Trinket
					i(179341),	-- Critterbomb Contraption
					i(181332),	-- Sinstone Kernel
				}),
				tier(SL_TIER, 0.5, {
					i(184873),	-- Soul Igniter (Test)
				}),
				tier(SL_TIER, 2.0, {
					i(188105),	-- [PH] Copy Fine Razorwing Quill
					i(188057),	-- [PH] Copy Harmonic Crowd Breaker
					i(188052),	-- [PH] Copy Iron Maiden's Toolkit
					i(188092),	-- [PH] Copy Korthian Anima Vessel
					i(188058),	-- [PH] Copy Tome of Insight
					i(188103),	-- [PH] Copy Vault Attendant's Cape
					--
					i(190622),	-- [DNT] 9.2 Raid - Sepulcher of the First Ones - World Boss - Accessory - Trinket - Omni
				}),
			}),
			--- 9.0.1 ---
			i(175768),	-- 9.0 QRP - Ardenweald - Cloak
			i(177814),	-- 9.0 Zone Uncommon - Revendreth - Accessory - Trinket
			i(179830),	-- Ardenweald Covenant Mail Chest
			i(179861),	-- Ardenweald Covenant Mail Chest
			i(179853),	-- Ardenweald Covenant Mail Chest
			i(179845),	-- Ardenweald Covenant Mail Chest
			i(179860),	-- Ardenweald Covenant Mail Feet
			i(179831),	-- Ardenweald Covenant Mail Feet
			i(179852),	-- Ardenweald Covenant Mail Feet
			i(179844),	-- Ardenweald Covenant Mail Feet
			i(179851),	-- Ardenweald Covenant Mail Hand
			i(179832),	-- Ardenweald Covenant Mail Hand
			i(179843),	-- Ardenweald Covenant Mail Hand
			i(179859),	-- Ardenweald Covenant Mail Hand
			i(179850),	-- Ardenweald Covenant Mail Head
			i(179842),	-- Ardenweald Covenant Mail Head
			i(179833),	-- Ardenweald Covenant Mail Head
			i(179858),	-- Ardenweald Covenant Mail Head
			i(179841),	-- Ardenweald Covenant Mail Legs
			i(179834),	-- Ardenweald Covenant Mail Legs
			i(179857),	-- Ardenweald Covenant Mail Legs
			i(179849),	-- Ardenweald Covenant Mail Legs
			i(179840),	-- Ardenweald Covenant Mail Shoulder
			i(179835),	-- Ardenweald Covenant Mail Shoulder
			i(179856),	-- Ardenweald Covenant Mail Shoulder
			i(179848),	-- Ardenweald Covenant Mail Shoulder
			i(179855),	-- Ardenweald Covenant Mail Waist
			i(179836),	-- Ardenweald Covenant Mail Waist
			i(179847),	-- Ardenweald Covenant Mail Waist
			i(179839),	-- Ardenweald Covenant Mail Waist
			i(179854),	-- Ardenweald Covenant Mail Wrist
			i(179846),	-- Ardenweald Covenant Mail Wrist
			i(179837),	-- Ardenweald Covenant Mail Wrist
			i(179838),	-- Ardenweald Covenant Mail Wrist
			i(178768),	-- Binds of the Unwitting Servant
			i(177523),	-- Communal Hood
			i(177532),	-- Communal Robe
			i(177526),	-- Communal Shoulderpads
			i(177525),	-- Communal Vestments
			i(181037),	-- Death Shroud Belt
			i(181038),	-- Death Shroud Bindings
			i(181032),	-- Death Shroud Boots
			i(181035),	-- Death Shroud Breeches
			i(181039),	-- Death Shroud Cloak
			i(181033),	-- Death Shroud Gloves
			i(181034),	-- Death Shroud Hood
			i(181036),	-- Death Shroud Spaulders
			i(181031),	-- Death Shroud Vest
			i(178766),	-- Deranged Surgeon's Band
			i(180996),	-- Dread Sentinel's Chestplate
			i(181003),	-- Dread Sentinel's Cloak
			i(181001),	-- Dread Sentinel's Girdle
			i(180997),	-- Dread Sentinel's Greatboots
			i(180998),	-- Dread Sentinel's Grips
			i(180995),	-- Dread Sentinel's Headgear
			i(180999),	-- Dread Sentinel's Legguards
			i(181000),	-- Dread Sentinel's Spaulders
			i(181002),	-- Dread Sentinel's Vambraces
			i(181136),	-- Fearstalker's Belt
			i(181137),	-- Fearstalker's Bracers
			i(181138),	-- Fearstalker's Cloak
			i(181132),	-- Fearstalker's Gauntlets
			i(181130),	-- Fearstalker's Hauberk
			i(181133),	-- Fearstalker's Helm
			i(181134),	-- Fearstalker's Leggings
			i(181135),	-- Fearstalker's Monnion
			i(181131),	-- Fearstalker's Sabatons
			i(177608),	-- Felsoul Cowl
			i(177610),	-- Felsoul Robe
			i(177611),	-- Felsoul Shoulderpads
			i(177426),	-- Heart-Lesion Breastplate
			i(177434),	-- Heart-Lesion Chestguard
			i(177429),	-- Heart-Lesion Helm
			i(177431),	-- Heart-Lesion Pauldrons
			i(177438),	-- Heart-Lesion Shoulderguards
			i(177569),	-- Illidari Blindfold
			i(177571),	-- Illidari Robe
			i(177567),	-- Illidari Shoulders
			i(177538),	-- Lightdrinker Hood
			i(177535),	-- Lightdrinker Jerkin
			i(177540),	-- Lightdrinker Shoulders
			i(177484),	-- Mistdancer Helm
			i(177491),	-- Mistdancer Hood
			i(177496),	-- Mistdancer Jerkin
			i(177486),	-- Mistdancer Pauldrons
			i(177493),	-- Mistdancer Shoulders
			i(177481),	-- Mistdancer Vest
			i(177475),	-- Mountainsage Hood
			i(177477),	-- Mountainsage Robe
			i(177478),	-- Mountainsage Shoulderpads
			i(177614),	-- Oathsworn Breastplate
			i(177622),	-- Oathsworn Chestguard
			i(177617),	-- Oathsworn Helm
			i(177619),	-- Oathsworn Pauldrons
			i(177626),	-- Oathsworn Shoulderguards
			i(178776),	-- Ossified Oozebound Waistguard
			i(183788),	-- Placeholder Twisting Corridors Cosmetic
			i(178758),	-- Plague Experimenter's Gloves
			i(181111),	-- Soulbreaker Drape
			i(181105),	-- Soulbreaker Handwraps
			i(181106),	-- Soulbreaker Hood
			i(181107),	-- Soulbreaker Leggings
			i(181108),	-- Soulbreaker Mantle
			i(181109),	-- Soulbreaker Sash
			i(181104),	-- Soulbreaker Slippers
			i(181103),	-- Soulbreaker Vestments
			i(181110),	-- Soulbreaker Wraps
			i(177444),	-- Springrain Headpiece
			i(177452),	-- Springrain Helm
			i(177460),	-- Springrain Hood
			i(177457),	-- Springrain Jerkin
			i(177454),	-- Springrain Pauldrons
			i(177462),	-- Springrain Shoulders
			i(177446),	-- Springrain Spaulders
			i(177441),	-- Springrain Tunic
			i(177449),	-- Springrain Vest
			i(177551),	-- Streamtalker Chestguard
			i(177546),	-- Streamtalker Coif
			i(177562),	-- Streamtalker Cowl
			i(177554),	-- Streamtalker Helm
			i(177548),	-- Streamtalker Pauldrons
			i(177556),	-- Streamtalker Shoulderguards
			i(177564),	-- Streamtalker Spaulders
			i(177543),	-- Streamtalker Tunic
			i(177559),	-- Streamtalker Vest
			i(177497),	-- Sunsoul Battleplate
			i(177505),	-- Sunsoul Breastplate
			i(177513),	-- Sunsoul Chestguard
			i(177516),	-- Sunsoul Faceguard
			i(177508),	-- Sunsoul Headpiece
			i(177500),	-- Sunsoul Helm
			i(177502),	-- Sunsoul Pauldrons
			i(177518),	-- Sunsoul Shoulderguards
			i(177510),	-- Sunsoul Spaulders
			i(177468),	-- Trailseeker Helm
			i(177470),	-- Trailseeker Spaulders
			i(177465),	-- Trailseeker Vest
			i(178439),	-- zzzRated - Cloth Cord
			i(178425),	-- zzzRated - Cloth Gloves
			i(178427),	-- zzzRated - Cloth Hood
			i(178431),	-- zzzRated - Cloth Leggings
			i(178436),	-- zzzRated - Cloth Mantle
			i(178415),	-- zzzRated - Cloth Robe
			i(178420),	-- zzzRated - Cloth Treads
			i(178443),	-- zzzRated - Cloth Wristwraps
			i(178441),	-- zzzRated - Leather Belt
			i(178422),	-- zzzRated - Leather Boots
			i(178433),	-- zzzRated - Leather Breeches
			i(178423),	-- zzzRated - Leather Gloves
			i(178429),	-- zzzRated - Leather Helm
			i(178434),	-- zzzRated - Leather Spaulders
			i(178418),	-- zzzRated - Leather Vest
			i(178446),	-- zzzRated - Leather Wristwraps
			i(178440),	-- zzzRated - Mail Belt
			i(178426),	-- zzzRated - Mail Gauntlets
			i(178428),	-- zzzRated - Mail Helm
			i(178432),	-- zzzRated - Mail Leggings
			i(178437),	-- zzzRated - Mail Monnion
			i(178421),	-- zzzRated - Mail Sabatons
			i(178417),	-- zzzRated - Mail Vest
			i(178445),	-- zzzRated - Mail Wristwraps
			i(178416),	-- zzzRated - Plate Chestplate
			i(178424),	-- zzzRated - Plate Gauntlets
			i(178438),	-- zzzRated - Plate Girdle
			i(178413),	-- zzzRated - Plate Helm
			i(178430),	-- zzzRated - Plate Legguards
			i(178435),	-- zzzRated - Plate Shoulders
			i(178419),	-- zzzRated - Plate Warboots
			i(178444),	-- zzzRated - Plate Wristwraps
			--- 9.2.0 ---
			i(188182),	-- Cavalier Hat of the First Rogue
			i(188180),	-- Cloak of the First Rogue
			i(188186),	-- Drape of Dominion
			i(188181),	-- Gloves of the First Rogue
			i(188185),	-- Indomitable Vest
			i(188183),	-- Pants of the First Rogue
			i(188187),	-- Quickfinger Pocketlifters
			i(188189),	-- Shadowwrap Leggings
			i(188184),	-- Shoulderpads of the First Rogue
			i(188190),	-- Shoulderpads of the Primordial
			i(188179),	-- Vest of the First Rogue
			i(188188),	-- Worldbinder Tricorne
		}),
		tier(DF_TIER, {
			n(BACK, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(189669),	-- 10.0 Dungeon Template - Generic - Cloak
					i(189061),	-- 10.0 End Game Template <Descriptor> Shawl
					i(192038),	-- 10.0 PH Dragonscale Expedition Shawl
					i(189102),	-- 10.0 QRP Template <Descriptor> Cloak
					i(189101),	-- 10.0 QRP Template <Descriptor> Shroud
					i(189622),	-- 10.0 Raid Template - Generic - Cloak
					i(189006),	-- 10.0 Zone Uncommon Template <Descriptor> Cape
					i(200710),	-- Ashjra'kamas
					i(200708),	-- Polymorphic Cloak of Absorption
				})),

				-- 10.2.0
				tier(DF_TIER, 2.0, bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
					header(HEADERS.LFGDungeon, 2502, {	-- Amirdrassil, the Dream's Hope
						d(LFR_RAID, {
							i(207160, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Inflammable Drapeleaf [LFR]
							i(207161, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Mantle of Blazing Sacrifice [LFR]
						}),
						d(NORMAL_RAID, {
							i(207160, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Inflammable Drapeleaf [Normal]
							i(207161, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Mantle of Blazing Sacrifice [Normal]
						}),
						d(HEROIC_RAID, {
							i(207160, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Inflammable Drapeleaf [Heroic]
							i(207161, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Mantle of Blazing Sacrifice [Heroic]
						}),
						d(MYTHIC_RAID, {
							i(207160, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Inflammable Drapeleaf [Mythic]
							i(207161, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Mantle of Blazing Sacrifice [Mythic]
						}),
					}),
				})),
			}),
			cl(DRUID, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(198145),	-- Copy Bracers of the druid name PH
					i(198144),	-- Copy Chestguard of the druid name PH
					i(198147),	-- Copy Cincture of the druid name PH
					i(198149),	-- Copy Footwraps of the druid name PH
					i(198148),	-- Copy Handwraps of the druid name PH
					i(198142),	-- Copy Headpiece of the druid name PH
					i(198143),	-- Copy Leggings of the druid name PH
					i(198146),	-- Copy Shoulderpads of the druid name PH
					i(198150),	-- Copy Wrap of the druid name PH
				})),
			}),
			filter(CLOTH, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(189683),	-- 10.0 Dungeon Template - Cloth - Feet
					i(189641),	-- 10.0 Dungeon Template - Cloth - Hand
					i(189643),	-- 10.0 Dungeon Template - Cloth - Head
					i(189647),	-- 10.0 Dungeon Template - Cloth - Legs
					i(189635),	-- 10.0 Dungeon Template - Cloth - Robe
					i(189652),	-- 10.0 Dungeon Template - Cloth - Shoulder
					i(189655),	-- 10.0 Dungeon Template - Cloth - Waist
					i(189658),	-- 10.0 Dungeon Template - Cloth - Wrist
					i(189012),	-- 10.0 End Game Template <Descriptor> Cord
					i(189010),	-- 10.0 End Game Template <Descriptor> Cowl
					i(189013),	-- 10.0 End Game Template <Descriptor> Cuffs
					i(189009),	-- 10.0 End Game Template <Descriptor> Handwraps
					i(189011),	-- 10.0 End Game Template <Descriptor> Leggings
					i(189008),	-- 10.0 End Game Template <Descriptor> Sandals
					i(189038),	-- 10.0 End Game Template <Descriptor> Shoulderpads
					i(189007),	-- 10.0 End Game Template <Descriptor> Vestment
					i(189116),	-- 10.0 QRP Template <Descriptor> Feet
					i(189070),	-- 10.0 QRP Template <Descriptor> Gloves
					i(189072),	-- 10.0 QRP Template <Descriptor> Hood
					i(189076),	-- 10.0 QRP Template <Descriptor> Leggings
					i(189081),	-- 10.0 QRP Template <Descriptor> Mantle
					i(189084),	-- 10.0 QRP Template <Descriptor> Sash
					i(189064),	-- 10.0 QRP Template <Descriptor> Vestments
					i(189087),	-- 10.0 QRP Template <Descriptor> Wraps
					i(189595),	-- 10.0 Raid Template - Cloth - Chest
					i(189592),	-- 10.0 Raid Template - Cloth - Feet
					i(189617),	-- 10.0 Raid Template - Cloth - Hand
					i(189616),	-- 10.0 Raid Template - Cloth - Head
					i(189610),	-- 10.0 Raid Template - Cloth - Legs
					i(189615),	-- 10.0 Raid Template - Cloth - Shoulder
					i(189606),	-- 10.0 Raid Template - Cloth - Waist
					i(189602),	-- 10.0 Raid Template - Cloth - Wrist
					i(188965),	-- 10.0 Zone Uncommon Template <Descriptor> Cord
					i(188962),	-- 10.0 Zone Uncommon Template <Descriptor> Handwraps
					i(188963),	-- 10.0 Zone Uncommon Template <Descriptor> Hood
					i(188964),	-- 10.0 Zone Uncommon Template <Descriptor> Leggings
					i(188961),	-- 10.0 Zone Uncommon Template <Descriptor> Sandals
					i(188991),	-- 10.0 Zone Uncommon Template <Descriptor> Shoulderpads
					i(188960),	-- 10.0 Zone Uncommon Template <Descriptor> Vestment
					i(188966),	-- 10.0 Zone Uncommon Template <Descriptor> Wristwraps
				})),

				-- 10.2.0
				tier(DF_TIER, 2.0, bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
					header(HEADERS.LFGDungeon, 2502, {	-- Amirdrassil, the Dream's Hope
						d(LFR_RAID, {
							i(207124, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Blooming Redeemer's Sash [LFR]
							i(207118, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Elder's Volcanic Wrap [LFR]
							i(210204, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Fading Flame Wristbands [LFR]
							i(207123, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Lifewoven Slippers [LFR]
							i(207116, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Lost Scholar's Timely Hat [LFR]
							i(207122, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Lost Scholar's Belted Treads [LFR]
							i(208431, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Lost Scholar's Temporal Shoulderdials [LFR]
							i(207117, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Requiem Rootmantle [LFR]
							i(207115, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Twisting Shadow Claws [LFR]
							i(207119, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Urctos's Hibernal Dial [LFR]
							i(207121, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Vesture of the Smoldering Serpent [LFR]
							i(208430, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Whispering Fanged Cord [LFR]
						}),
						d(NORMAL_RAID, {
							i(207124, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Blooming Redeemer's Sash [Normal]
							i(207118, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Elder's Volcanic Wrap [Normal]
							i(210204, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Fading Flame Wristbands [Normal]
							i(207123, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Lifewoven Slippers [Normal]
							i(207116, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Lost Scholar's Timely Hat [Normal]
							i(207122, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Lost Scholar's Belted Treads [Normal]
							i(208431, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Lost Scholar's Temporal Shoulderdials [Normal]
							i(207117, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Requiem Rootmantle [Normal]
							i(207115, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Twisting Shadow Claws [Normal]
							i(207119, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Urctos's Hibernal Dial [Normal]
							i(207121, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Vesture of the Smoldering Serpent [Normal]
							i(208430, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Whispering Fanged Cord [Normal]
						}),
						d(HEROIC_RAID, {
							i(207124, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Blooming Redeemer's Sash [Heroic]
							i(207118, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Elder's Volcanic Wrap [Heroic]
							i(210204, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Fading Flame Wristbands [Heroic]
							i(207123, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Lifewoven Slippers [Heroic]
							i(207116, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Lost Scholar's Timely Hat [Heroic]
							i(207122, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Lost Scholar's Belted Treads [Heroic]
							i(208431, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Lost Scholar's Temporal Shoulderdials [Heroic]
							i(207117, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Requiem Rootmantle [Heroic]
							i(207115, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Twisting Shadow Claws [Heroic]
							i(207119, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Urctos's Hibernal Dial [Heroic]
							i(207121, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Vesture of the Smoldering Serpent [Heroic]
							i(208430, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Whispering Fanged Cord [Heroic]
						}),
						d(MYTHIC_RAID, {
							i(207124, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Blooming Redeemer's Sash [Mythic]
							i(207118, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Elder's Volcanic Wrap [Mythic]
							i(210204, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Fading Flame Wristbands [Mythic]
							i(207123, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Lifewoven Slippers [Mythic]
							i(207116, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Lost Scholar's Timely Hat [Mythic]
							i(207122, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Lost Scholar's Belted Treads [Mythic]
							i(208431, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Lost Scholar's Temporal Shoulderdials [Mythic]
							i(207117, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Requiem Rootmantle [Mythic]
							i(207115, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Twisting Shadow Claws [Mythic]
							i(207119, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Urctos's Hibernal Dial [Mythic]
							i(207121, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Vesture of the Smoldering Serpent [Mythic]
							i(208430, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Whispering Fanged Cord [Mythic]
						}),
					}),
				})),
			}),
			filter(LEATHER, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(189638),	-- 10.0 Dungeon Template - Leather - Chest
					i(189685),	-- 10.0 Dungeon Template - Leather - Feet
					i(189639),	-- 10.0 Dungeon Template - Leather - Hand
					i(189645),	-- 10.0 Dungeon Template - Leather - Head
					i(189649),	-- 10.0 Dungeon Template - Leather - Legs
					i(189650),	-- 10.0 Dungeon Template - Leather - Shoulder
					i(189657),	-- 10.0 Dungeon Template - Leather - Waist
					i(189661),	-- 10.0 Dungeon Template - Leather - Wrist
					i(189017),	-- 10.0 End Game Template <Descriptor> Breeches
					i(189019),	-- 10.0 End Game Template <Descriptor> Bindings
					i(189037),	-- 10.0 End Game Template <Descriptor> Epaulets
					i(189015),	-- 10.0 End Game Template <Descriptor> Grips
					i(189016),	-- 10.0 End Game Template <Descriptor> Helm
					i(189018),	-- 10.0 End Game Template <Descriptor> Sash
					i(189036),	-- 10.0 End Game Template <Descriptor> Vest
					i(189014),	-- 10.0 End Game Template <Descriptor> Waders
					i(189086),	-- 10.0 QRP Template <Descriptor> Belt
					i(189090),	-- 10.0 QRP Template <Descriptor> Bindings
					i(189118),	-- 10.0 QRP Template <Descriptor> Boots
					i(189078),	-- 10.0 QRP Template <Descriptor> Breeches
					i(189117),	-- 10.0 QRP Template <Descriptor> Cover
					i(189068),	-- 10.0 QRP Template <Descriptor> Gloves
					i(189074),	-- 10.0 QRP Template <Descriptor> Hood
					i(189079),	-- 10.0 QRP Template <Descriptor> Spaulders
					i(189067),	-- 10.0 QRP Template <Descriptor> Vest
					i(189609),	-- 10.0 Raid Template - Leather - Chest
					i(189621),	-- 10.0 Raid Template - Leather - Feet
					i(189608),	-- 10.0 Raid Template - Leather - Hand
					i(189593),	-- 10.0 Raid Template - Leather - Head
					i(189599),	-- 10.0 Raid Template - Leather - Legs
					i(189620),	-- 10.0 Raid Template - Leather - Shoulder
					i(189601),	-- 10.0 Raid Template - Leather - Waist
					i(189614),	-- 10.0 Raid Template - Leather - Wrist
					i(188971),	-- 10.0 Zone Uncommon Template <Descriptor> Belt
					i(188972),	-- 10.0 Zone Uncommon Template <Descriptor> Bindings
					i(188970),	-- 10.0 Zone Uncommon Template <Descriptor> Breeches
					i(188990),	-- 10.0 Zone Uncommon Template <Descriptor> Epaulets
					i(188968),	-- 10.0 Zone Uncommon Template <Descriptor> Grips
					i(188969),	-- 10.0 Zone Uncommon Template <Descriptor> Helm
					i(188967),	-- 10.0 Zone Uncommon Template <Descriptor> Treads
					i(188989),	-- 10.0 Zone Uncommon Template <Descriptor> Tunic
				})),

				-- 10.2.0
				tier(DF_TIER, 2.0, bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
					header(HEADERS.LFGDungeon, 2502, {	-- Amirdrassil, the Dream's Hope
						d(LFR_RAID, {
							i(207131, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Bloody Dragonhide Belt [LFR]
							i(207135, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Eternal Sentinel's Cord [LFR]
							i(207130, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Flamewaker's Grips [LFR]
							i(207132, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Frenzied Incarnate Legwraps [LFR]
							i(207128, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Primordial Serpent's Bindings [LFR]
							i(207133, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Silent Tormentor's Hood [LFR]
							i(207127, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Strigine Epaulets [LFR]
							i(207134, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Tasseted Emberwalkers [LFR]
							i(207126, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Twisted Blossom Stompers [LFR]
							i(208432, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Vengeful Bladebeak Girdle [LFR]
							i(210206, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Verdant Sanctuary Bands [LFR]
							i(208420, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Visage of the Devouring Flame [LFR]
						}),
						d(NORMAL_RAID, {
							i(207131, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Bloody Dragonhide Belt [Normal]
							i(207135, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Eternal Sentinel's Cord [Normal]
							i(207130, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Flamewaker's Grips [Normal]
							i(207132, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Frenzied Incarnate Legwraps [Normal]
							i(207128, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Primordial Serpent's Bindings [Normal]
							i(207133, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Silent Tormentor's Hood [Normal]
							i(207127, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Strigine Epaulets [Normal]
							i(207134, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Tasseted Emberwalkers [Normal]
							i(207126, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Twisted Blossom Stompers [Normal]
							i(208432, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Vengeful Bladebeak Girdle [Normal]
							i(210206, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Verdant Sanctuary Bands [Normal]
							i(208420, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Visage of the Devouring Flame [Normal]
						}),
						d(HEROIC_RAID, {
							i(207131, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Bloody Dragonhide Belt [Heroic]
							i(207135, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Eternal Sentinel's Cord [Heroic]
							i(207130, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Flamewaker's Grips [Heroic]
							i(207132, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Frenzied Incarnate Legwraps [Heroic]
							i(207128, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Primordial Serpent's Bindings [Heroic]
							i(207133, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Silent Tormentor's Hood [Heroic]
							i(207127, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Strigine Epaulets [Heroic]
							i(207134, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Tasseted Emberwalkers [Heroic]
							i(207126, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Twisted Blossom Stompers [Heroic]
							i(208432, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Vengeful Bladebeak Girdle [Heroic]
							i(210206, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Verdant Sanctuary Bands [Heroic]
							i(208420, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Visage of the Devouring Flame [Heroic]
						}),
						d(MYTHIC_RAID, {
							i(207131, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Bloody Dragonhide Belt [Mythic]
							i(207135, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Eternal Sentinel's Cord [Mythic]
							i(207130, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Flamewaker's Grips [Mythic]
							i(207132, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Frenzied Incarnate Legwraps [Mythic]
							i(207128, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Primordial Serpent's Bindings [Mythic]
							i(207133, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Silent Tormentor's Hood [Mythic]
							i(207127, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Strigine Epaulets [Mythic]
							i(207134, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Tasseted Emberwalkers [Mythic]
							i(207126, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Twisted Blossom Stompers [Mythic]
							i(208432, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Vengeful Bladebeak Girdle [Mythic]
							i(210206, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Verdant Sanctuary Bands [Mythic]
							i(208420, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Visage of the Devouring Flame [Mythic]
						}),
					}),
				})),
			}),
			filter(MAIL, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(189637),	-- 10.0 Dungeon Template - Mail - Chest
					i(189684),	-- 10.0 Dungeon Template - Mail - Feet
					i(189642),	-- 10.0 Dungeon Template - Mail - Hand
					i(189644),	-- 10.0 Dungeon Template - Mail - Head
					i(189648),	-- 10.0 Dungeon Template - Mail - Legs
					i(189653),	-- 10.0 Dungeon Template - Mail - Shoulder
					i(189656),	-- 10.0 Dungeon Template - Mail - Waist
					i(189660),	-- 10.0 Dungeon Template - Mail - Wrist
					i(189060),	-- 10.0 End Game Template <Descriptor> Belt
					i(189027),	-- 10.0 End Game Template <Descriptor> Bracers
					i(189020),	-- 10.0 End Game Template <Descriptor> Chainmail
					i(189026),	-- 10.0 End Game Template <Descriptor> Cinch
					i(189023),	-- 10.0 End Game Template <Descriptor> Coif
					i(189024),	-- 10.0 End Game Template <Descriptor> Greaves
					i(189022),	-- 10.0 End Game Template <Descriptor> Grips
					i(189025),	-- 10.0 End Game Template <Descriptor> Shoulderguards
					i(189021),	-- 10.0 End Game Template <Descriptor> Striders
					i(189085),	-- 10.0 QRP Template <Descriptor> Belt
					i(189089),	-- 10.0 QRP Template <Descriptor> Bracers
					i(189071),	-- 10.0 QRP Template <Descriptor> Grips
					i(189066),	-- 10.0 QRP Template <Descriptor> Hauberk
					i(189073),	-- 10.0 QRP Template <Descriptor> Helm
					i(189077),	-- 10.0 QRP Template <Descriptor> Leggings
					i(189082),	-- 10.0 QRP Template <Descriptor> Monnion
					i(189597),	-- 10.0 Raid Template - Mail - Chest
					i(189607),	-- 10.0 Raid Template - Mail - Feet
					i(189612),	-- 10.0 Raid Template - Mail - Hand
					i(189604),	-- 10.0 Raid Template - Mail - Head
					i(189611),	-- 10.0 Raid Template - Mail - Legs
					i(189605),	-- 10.0 Raid Template - Mail - Shoulder
					i(189590),	-- 10.0 Raid Template - Mail - Waist
					i(189591),	-- 10.0 Raid Template - Mail - Wrist
					i(188980),	-- 10.0 Zone Uncommon Template <Descriptor> Bracers
					i(188973),	-- 10.0 Zone Uncommon Template <Descriptor> Chainmail
					i(188979),	-- 10.0 Zone Uncommon Template <Descriptor> Cinch
					i(188975),	-- 10.0 Zone Uncommon Template <Descriptor> Gloves
					i(188976),	-- 10.0 Zone Uncommon Template <Descriptor> Helm
					i(188977),	-- 10.0 Zone Uncommon Template <Descriptor> Leggings
					i(188978),	-- 10.0 Zone Uncommon Template <Descriptor> Shoulderguards
					i(188974),	-- 10.0 Zone Uncommon Template <Descriptor> Striders
					i(191934),	-- TEMP Event Stream TEMP - No Buckle Fleshscale Belt
				})),

				-- 10.2.0
				tier(DF_TIER, 2.0, bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
					header(HEADERS.LFGDungeon, 2502, {	-- Amirdrassil, the Dream's Hope
						d(LFR_RAID, {
							i(207138, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Aerwynn's Ritual Sarong [LFR]
							i(207142, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Ancient Haubark [LFR]
							i(207145, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Boots of the Molten Hoard [LFR]
							i(207139, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Cleats of the Savage Claw [LFR]
							i(207140, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Drakestalker's Trophy Pauldrons [LFR]
							i(207137, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Flameseer's Winged Grasps [LFR]
							i(207144, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Forlorn Leaf Clasp [LFR]
							i(207146, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Jeweled Sash of the Viper [LFR]
							i(208428, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Mantle of Slumbering Sands [LFR]
							i(208434, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Sentinel's Gilded Poulaines [LFR]
							i(207141, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Snake Eater's Cowl [LFR]
							i(207143, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Twisted Flamecuffs [LFR]
							i(210203, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Wellspring Wristlets [LFR]
						}),
						d(NORMAL_RAID, {
							i(207138, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Aerwynn's Ritual Sarong [Normal]
							i(207142, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Ancient Haubark [Normal]
							i(207145, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Boots of the Molten Hoard [Normal]
							i(207139, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Cleats of the Savage Claw [Normal]
							i(207140, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Drakestalker's Trophy Pauldrons [Normal]
							i(207137, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Flameseer's Winged Grasps [Normal]
							i(207144, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Forlorn Leaf Clasp [Normal]
							i(207146, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Jeweled Sash of the Viper [Normal]
							i(208428, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Mantle of Slumbering Sands [Normal]
							i(208434, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Sentinel's Gilded Poulaines [Normal]
							i(207141, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Snake Eater's Cowl [Normal]
							i(207143, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Twisted Flamecuffs [Normal]
							i(210203, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Wellspring Wristlets [Normal]
						}),
						d(HEROIC_RAID, {
							i(207138, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Aerwynn's Ritual Sarong [Heroic]
							i(207142, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Ancient Haubark [Heroic]
							i(207145, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Boots of the Molten Hoard [Heroic]
							i(207139, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Cleats of the Savage Claw [Heroic]
							i(207140, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Drakestalker's Trophy Pauldrons [Heroic]
							i(207137, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Flameseer's Winged Grasps [Heroic]
							i(207144, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Forlorn Leaf Clasp [Heroic]
							i(207146, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Jeweled Sash of the Viper [Heroic]
							i(208428, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Mantle of Slumbering Sands [Heroic]
							i(208434, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Sentinel's Gilded Poulaines [Heroic]
							i(207141, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Snake Eater's Cowl [Heroic]
							i(207143, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Twisted Flamecuffs [Heroic]
							i(210203, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Wellspring Wristlets [Heroic]
						}),
						d(MYTHIC_RAID, {
							i(207138, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Aerwynn's Ritual Sarong [Mythic]
							i(207142, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Ancient Haubark [Mythic]
							i(207145, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Boots of the Molten Hoard [Mythic]
							i(207139, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Cleats of the Savage Claw [Mythic]
							i(207140, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Drakestalker's Trophy Pauldrons [Mythic]
							i(207137, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Flameseer's Winged Grasps [Mythic]
							i(207144, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Forlorn Leaf Clasp [Mythic]
							i(207146, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Jeweled Sash of the Viper [Mythic]
							i(208428, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Mantle of Slumbering Sands [Mythic]
							i(208434, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Sentinel's Gilded Poulaines [Mythic]
							i(207141, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Snake Eater's Cowl [Mythic]
							i(207143, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Twisted Flamecuffs [Mythic]
							i(210203, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Wellspring Wristlets [Mythic]
						}),
					}),
					header(HEADERS.Achievement, SEASON_VERDANT, {
						n(PVP_GLADIATOR, {
							i(207142, { ["bonusID"] = 6898 }),	-- Ancient Haubark [Gladiator]
							i(207142, { ["bonusID"] = 7479 }),	-- Ancient Haubark [Gladiator]
							i(207137, { ["bonusID"] = 6898 }),	-- Flameseer's Winged Grasps [Gladiator]
							i(207137, { ["bonusID"] = 7479 }),	-- Flameseer's Winged Grasps [Gladiator]
							i(208428, { ["bonusID"] = 6898 }),	-- Mantle of Slumbering Sands [Gladiator]
							i(208428, { ["bonusID"] = 7479 }),	-- Mantle of Slumbering Sands [Gladiator]
							i(207143, { ["bonusID"] = 6898 }),	-- Twisted Flamecuffs [Gladiator]
							i(207143, { ["bonusID"] = 7479 }),	-- Twisted Flamecuffs [Gladiator]
						}),
						n(PVP_ELITE, {
							i(207142, { ["bonusID"] = 7532 }),	-- Ancient Haubark [Elite]
							i(207142, { ["bonusID"] = 8107 }),	-- Ancient Haubark [Elite]
							i(207137, { ["bonusID"] = 7532 }),	-- Flameseer's Winged Grasps [Elite]
							i(207137, { ["bonusID"] = 8107 }),	-- Flameseer's Winged Grasps [Elite]
							i(208428, { ["bonusID"] = 7532 }),	-- Mantle of Slumbering Sands [Elite]
							i(208428, { ["bonusID"] = 8107 }),	-- Mantle of Slumbering Sands [Elite]
							i(207143, { ["bonusID"] = 7532 }),	-- Twisted Flamecuffs [Elite]
							i(207143, { ["bonusID"] = 8107 }),	-- Twisted Flamecuffs [Elite]
						}),
					}),
				})),
			}),
			filter(PLATE, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(189636),	-- 10.0 Dungeon Template - Plate - Chest
					i(189634),	-- 10.0 Dungeon Template - Plate - Feet
					i(189640),	-- 10.0 Dungeon Template - Plate - Hand
					i(189682),	-- 10.0 Dungeon Template - Plate - Head
					i(189646),	-- 10.0 Dungeon Template - Plate - Legs
					i(189651),	-- 10.0 Dungeon Template - Plate - Shoulder
					i(189654),	-- 10.0 Dungeon Template - Plate - Waist
					i(189659),	-- 10.0 Dungeon Template - Plate - Wrist
					i(189035),	-- 10.0 End Game Template <Descriptor> Armplates
					i(189029),	-- 10.0 End Game Template <Descriptor> Breastplate
					i(189031),	-- 10.0 End Game Template <Descriptor> Gauntlets
					i(189034),	-- 10.0 End Game Template <Descriptor> Girdle
					i(189028),	-- 10.0 End Game Template <Descriptor> Helm
					i(189032),	-- 10.0 End Game Template <Descriptor> Legguards
					i(189033),	-- 10.0 End Game Template <Descriptor> Mantle
					i(189030),	-- 10.0 End Game Template <Descriptor> Sabatons
					i(189065),	-- 10.0 QRP Template <Descriptor> ChestPlate
					i(189115),	-- 10.0 QRP Template <Descriptor> Helm
					i(189069),	-- 10.0 QRP Template <Descriptor> Gauntlets
					i(189083),	-- 10.0 QRP Template <Descriptor> Girdle
					i(189075),	-- 10.0 QRP Template <Descriptor> Legguards
					i(189063),	-- 10.0 QRP Template <Descriptor> Sabatons
					i(189080),	-- 10.0 QRP Template <Descriptor> Spaulders
					i(189092),	-- 10.0 QRP Template <Descriptor> Ring
					i(189088),	-- 10.0 QRP Template <Descriptor> Vambraces
					i(197916),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Belt
					i(197912),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Chest
					i(197915),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Feet
					i(197914),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Hands
					i(197913),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Helm
					i(197911),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Legs
					i(197910),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Shoulder
					i(197917),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Wrist
					i(189619),	-- 10.0 Raid Template - Plate - Feet
					i(189594),	-- 10.0 Raid Template - Plate - Hand
					i(189603),	-- 10.0 Raid Template - Plate - Head
					i(189596),	-- 10.0 Raid Template - Plate - Chest
					i(189598),	-- 10.0 Raid Template - Plate - Legs
					i(189600),	-- 10.0 Raid Template - Plate - Shoulder
					i(189613),	-- 10.0 Raid Template - Plate - Wrist
					i(189618),	-- 10.0 Raid Template - Plate - Waist
					i(188988),	-- 10.0 Zone Uncommon Template <Descriptor> Armplates
					i(188982),	-- 10.0 Zone Uncommon Template <Descriptor> Breastplate
					i(188987),	-- 10.0 Zone Uncommon Template <Descriptor> Cincture
					i(188983),	-- 10.0 Zone Uncommon Template <Descriptor> Footguards
					i(188984),	-- 10.0 Zone Uncommon Template <Descriptor> Gauntlets
					i(188981),	-- 10.0 Zone Uncommon Template <Descriptor> Helm
					i(188985),	-- 10.0 Zone Uncommon Template <Descriptor> Legguards
					i(188986),	-- 10.0 Zone Uncommon Template <Descriptor> Pauldrons
					i(200737),	-- Pauldrons of Infinite Darkness
					i(200230),	-- Terrorclaw Shoulderplates
					i(195467),	-- zzOld(DNT) Test Belt of Molten Metallic Awesomeness
				})),

				-- 10.2.0
				tier(DF_TIER, 2.0, bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
					header(HEADERS.LFGDungeon, 2502, {	-- Amirdrassil, the Dream's Hope
						d(LFR_RAID, {
							i(207150, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Agonizing Manacles [LFR]
							i(207154, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Carapace of the Unbending Flame [LFR]
							i(207155, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Eldermoss Gauntlets [LFR]
							i(207151, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Emerald Guardian's Casque [LFR]
							i(207156, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Fused Obsidian Sabatons [LFR]
							i(208427, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Insurgent Flame Warboots [LFR]
							i(207148, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Lavaforged Sollerets [LFR]
							i(208426, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Mask of the Unbidden Grim [LFR]
							i(207149, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Phlegethic Girdle [LFR]
							i(207153, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Seared Ironwood Greaves [LFR]
							i(207157, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Smoldering Chevalier's Greatbelt [LFR]
							i(210205, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Vigilant Protector's Bracers [LFR]
							i(207152, { ["bonusID"] = 6894, ["modID"] = 0, }),	-- Volcanic Spelunker's Vents [LFR]
						}),
						d(NORMAL_RAID, {
							i(207150, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Agonizing Manacles [Normal]
							i(207154, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Carapace of the Unbending Flame [Normal]
							i(207155, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Eldermoss Gauntlets [Normal]
							i(207151, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Emerald Guardian's Casque [Normal]
							i(207156, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Fused Obsidian Sabatons [Normal]
							i(208427, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Insurgent Flame Warboots [Normal]
							i(207148, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Lavaforged Sollerets [Normal]
							i(208426, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Mask of the Unbidden Grim [Normal]
							i(207149, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Phlegethic Girdle [Normal]
							i(207153, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Seared Ironwood Greaves [Normal]
							i(207157, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Smoldering Chevalier's Greatbelt [Normal]
							i(210205, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Vigilant Protector's Bracers [Normal]
							i(207152, { ["bonusID"] = 6895, ["modID"] = 0, }),	-- Volcanic Spelunker's Vents [Normal]
						}),
						d(HEROIC_RAID, {
							i(207150, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Agonizing Manacles [Heroic]
							i(207154, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Carapace of the Unbending Flame [Heroic]
							i(207155, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Eldermoss Gauntlets [Heroic]
							i(207151, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Emerald Guardian's Casque [Heroic]
							i(207156, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Fused Obsidian Sabatons [Heroic]
							i(208427, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Insurgent Flame Warboots [Heroic]
							i(207148, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Lavaforged Sollerets [Heroic]
							i(208426, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Mask of the Unbidden Grim [Heroic]
							i(207149, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Phlegethic Girdle [Heroic]
							i(207153, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Seared Ironwood Greaves [Heroic]
							i(207157, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Smoldering Chevalier's Greatbelt [Heroic]
							i(210205, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Vigilant Protector's Bracers [Heroic]
							i(207152, { ["bonusID"] = 6896, ["modID"] = 0, }),	-- Volcanic Spelunker's Vents [Heroic]
						}),
						d(MYTHIC_RAID, {
							i(207150, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Agonizing Manacles [Mythic]
							i(207154, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Carapace of the Unbending Flame [Mythic]
							i(207155, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Eldermoss Gauntlets [Mythic]
							i(207151, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Emerald Guardian's Casque [Mythic]
							i(207156, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Fused Obsidian Sabatons [Mythic]
							i(208427, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Insurgent Flame Warboots [Mythic]
							i(207148, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Lavaforged Sollerets [Mythic]
							i(208426, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Mask of the Unbidden Grim [Mythic]
							i(207149, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Phlegethic Girdle [Mythic]
							i(207153, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Seared Ironwood Greaves [Mythic]
							i(207157, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Smoldering Chevalier's Greatbelt [Mythic]
							i(210205, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Vigilant Protector's Bracers [Mythic]
							i(207152, { ["bonusID"] = 6897, ["modID"] = 0, }),	-- Volcanic Spelunker's Vents [Mythic]
						}),
					}),
					header(HEADERS.Achievement, SEASON_VERDANT, {
						n(PVP_GLADIATOR, {
							i(208427, { ["bonusID"] = 6898 }),	-- Insurgent Flame Warboots [Gladiator]
							i(208427, { ["bonusID"] = 7479 }),	-- Insurgent Flame Warboots [Gladiator]
							i(208426, { ["bonusID"] = 6898 }),	-- Mask of the Unbidden Grim [Gladiator]
							i(208426, { ["bonusID"] = 7479 }),	-- Mask of the Unbidden Grim [Gladiator]
						}),
						n(PVP_ELITE, {
							i(208427, { ["bonusID"] = 7532 }),	-- Insurgent Flame Warboots [Elite]
							i(208427, { ["bonusID"] = 8107 }),	-- Insurgent Flame Warboots [Elite]
							i(208426, { ["bonusID"] = 7532 }),	-- Mask of the Unbidden Grim [Elite]
							i(208426, { ["bonusID"] = 8107 }),	-- Mask of the Unbidden Grim [Elite]
						}),
					}),
				})),
			}),
			filter(COSMETIC, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(198385),	-- Draconian Garden Pick
					i(198386),	-- Gardener's Tilling Spork
					i(198342),	-- Tuskarr Expedition Pack
				})),
			}),
			filter(TABARDS, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(191271),	-- Black Smith's Tabard
					i(194676),	-- Emboldened Dracthyr's Tabard [Lol they changed model]
				})),
			}),
			filter(NECK_F, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(189667),	-- 10.0 Dungeon Template - Generic - Neck
					i(189062),	-- 10.0 End Game Template <Descriptor> Choker
					i(192039),	-- 10.0 PH Dragonscale Expedition Choker
					i(189099),	-- 10.0 QRP Template <Descriptor> Pendant
					i(189100),	-- 10.0 QRP Template <Descriptor> Pendant
					i(189624),	-- 10.0 Raid Template - Generic - Neck
					i(189005),	-- 10.0 Zone Uncommon Template <Descriptor> Necklace
				})),
			}),
			filter(FINGER_F, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(189662),	-- 10.0 Dungeon Template - Generic - Finger
					i(189049),	-- 10.0 End Game Template <Descriptor> Band
					i(189059),	-- 10.0 End Game Template <Descriptor> Band
					i(189050),	-- 10.0 End Game Template <Descriptor> Signet
					i(192026),	-- 10.0 PH Dragonscale Expedition Band
					i(192036),	-- 10.0 PH Dragonscale Expedition Band
					i(192027),	-- 10.0 PH Dragonscale Expedition Signet
					i(189093),	-- 10.0 QRP Template <Descriptor> Band
					i(189091),	-- 10.0 QRP Template <Descriptor> Signet
					i(189094),	-- 10.0 QRP Template <Descriptor> Signet
					i(189119),	-- 10.0 QRP Template <Descriptor> Signet
					i(189623),	-- 10.0 Raid Template - Generic - Finger
					i(189003),	-- 10.0 Zone Uncommon Template <Descriptor> Band
					i(189002),	-- 10.0 Zone Uncommon Template <Descriptor> Signet
					i(200280),	-- Decaying Ghostly Band
					i(197933),	-- Lutokk's Wedding Ring
				})),
			}),
			filter(TRINKET_F, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(189666),	-- 10.0 Dungeon Template - Generic - Trinket
					i(189058),	-- 10.0 End Game Template <Descriptor> Trinket
					i(192035),	-- 10.0 PH Dragonscale Expedition Trinket
					i(189096),	-- 10.0 QRP Template <Descriptor> Trinket
					i(189632),	-- 10.0 Raid Template - AGI - Trinket
					i(189633),	-- 10.0 Raid Template - INT - Trinket
					i(189628),	-- 10.0 Raid Template - Healer - Trinket
					i(189627),	-- 10.0 Raid Template - Int DPS - Trinket
					i(189625),	-- 10.0 Raid Template - Melee DPS - Trinket
					i(189630),	-- 10.0 Raid Template - Omni  - Trinket
					i(189631),	-- 10.0 Raid Template - Physical DPS - Trinket
					i(189629),	-- 10.0 Raid Template - STR - Trinket
					i(189626),	-- 10.0 Raid Template - Tank - Trinket
					i(189004),	-- 10.0 Zone Uncommon Template <Descriptor> Trinket
					i(194398),	-- Crumbling Watcher's Stone (NYI)
					i(200679),	-- Essence of Somnikus's Shade
					i(193058),	-- Sherwood - Test Trinket
					i(198392),	-- zzOldDarkmoon Binding: Awakened Chill
					i(198391),	-- zzOldDarkmoon Binding: Inferno
					i(198393),	-- zzOldDarkmoon Binding: Refreshing Dance
					i(198394),	-- zzOldDarkmoon Binding: Watcher
					i(198433),	-- zzOldDarkmoon Deckbox: Awakened Chill
					i(198434),	-- zzOldDarkmoon Deckbox: Refreshing Dance
					i(198435),	-- zzOldDarkmoon Deckbox: Watcher
				})),

				-- 10.0.7
				tier(DF_TIER, 0.7, bubbleDown({ ["timeline"] = { CREATED_10_0_7 } }, {
					i(204192),	-- Ascendancy
					i(203680),	-- Totem Toss
				})),
			}),
			-- 10.0.0
			tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {	-- Unknown
				i(198681),	-- Luke Test Belt [DNT]
			})),

			-- 10.0.0
			tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
				i(191942),	-- Belloc's Hat [Added SpellIDs regarding this.. Belloc also lost his hat... In Waking Shores 371683 (Wear Belloc's Hat [DNT]), 371665 (Sit on Belloc's Head [DNT]) /Brage ]
			})),

			-- 10.1.0
			tier(DF_TIER, 1.0, bubbleDown({ ["timeline"] = { CREATED_10_1_0 } }, {
				i(202648),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - CLOAK 2
				i(202666),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - CLOAK 3
				i(202649),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - FINGER 2
				i(202665),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - FINGER 3
				i(202650),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - NECK 2
				i(202664),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - NECK 3
				i(202609),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - Trinket - INT
				i(202611),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - Trinket - Physical DPS
				i(202651),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Cloth - FEET 2
				i(202653),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Cloth - WRIST 2
				i(202654),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Leather - FEET 2
				i(202581),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Leather - WRIST 1
				i(202656),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Leather - WRIST 2
				i(202657),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Mail - FEET 2
				i(202658),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Mail - WAIST 2
				i(202660),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Plate - FEET 2
				i(202661),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Plate - WAIST 2
				i(202662),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Plate - WRIST 2
				i(204087),	-- 10.1 Cloak Test Item
				i(204064),	-- PH 10.1 Raid - Black Dragon Labs - Boss 9 - Sarkareth - Accessory - Trinket - Omni
				i(202608),	-- Power-Draining Spire [This was a Trinket /Braghe]
			})),

			-- 10.1.5
			tier(DF_TIER, 1.5, bubbleDown({ ["timeline"] = { CREATED_10_1_5 } }, {
				i(207899),	-- Mega Dungeon Bronze Cloth Bindings
				i(207832),	-- Mega Dungeon Bronze Cloth Breeches
				i(207831),	-- Mega Dungeon Bronze Cloth Hood
				i(207894),	-- Mega Dungeon Bronze Cloth Mitts
				i(207829),	-- Mega Dungeon Bronze Cloth Wrap
				i(207843),	-- Mega Dungeon Bronze Leather Bracers
				i(207842),	-- Mega Dungeon Bronze Leather Cinch
				i(207840),	-- Mega Dungeon Bronze Leather Cowl
				i(207837),	-- Mega Dungeon Bronze Leather Drape
				i(207905),	-- Mega Dungeon Bronze Leather Spaulders
				i(207844),	-- Mega Dungeon Bronze Mail Chainmail
				i(207914),	-- Mega Dungeon Bronze Mail Cinch
				i(207845),	-- Mega Dungeon Bronze Mail Drape
				i(207913),	-- Mega Dungeon Bronze Mail Spaulders
				i(207846),	-- Mega Dungeon Bronze Mail Striders
				i(207917),	-- Mega Dungeon Bronze Plate Cape
				i(207916),	-- Mega Dungeon Bronze Plate Chestplate
				i(207855),	-- Mega Dungeon Bronze Plate Crushers
				i(207818),	-- Mega Dungeon Bronze Plate Greaves
				i(207854),	-- Mega Dungeon Bronze Plate Stompers
				i(207929),	-- Mega Dungeon Infinite Cloth Mantle
				i(207860),	-- Mega Dungeon Infinite Cloth Robes
				i(207930),	-- Mega Dungeon Infinite Cloth Sash
				i(207825),	-- Mega Dungeon Infinite Cloth Slippers
				i(207861),	-- Mega Dungeon Infinite Cloth Wrap
				i(207869),	-- Mega Dungeon Infinite Leather Cloak
				i(207935),	-- Mega Dungeon Infinite Leather Gloves
				i(207868),	-- Mega Dungeon Infinite Leather Raiment
				i(207960),	-- Mega Dungeon Infinite Leather Tassets
				i(207870),	-- Mega Dungeon Infinite Leather Treads
				i(207947),	-- Mega Dungeon Infinite Mail Bracers
				i(207880),	-- Mega Dungeon Infinite Mail Cowl
				i(207941),	-- Mega Dungeon Infinite Mail Drape
				i(207879),	-- Mega Dungeon Infinite Mail Gauntlets
				i(207958),	-- Mega Dungeon Infinite Mail Tassets
				i(207949),	-- Mega Dungeon Infinite Plate Cape
				i(207954),	-- Mega Dungeon Infinite Plate Girdle
				i(207952),	-- Mega Dungeon Infinite Plate Greathelm
				i(207953),	-- Mega Dungeon Infinite Plate Pauldrons
				i(207891),	-- Mega Dungeon Infinite Plate Vambraces
			})),

			-- 10.1.5
			tier(DF_TIER, 1.5, bubbleDown({ ["timeline"] = { CREATED_10_1_5 } }, {
				i(208988),	-- Band of the Petrified Pumpkin [Hallow's End]
				i(208991),	-- Seal of Ghoulish Glee [Hallow's End]
				i(208986),	-- The Horseman's Horrific Hood [Hallow's End]
				i(209023),	-- The Horseman's Horrific Hood [Hallow's End]
				i(208990),	-- The Horseman's Ring [Hallow's End]
				i(208989),	-- Wicked Witch's Signet [Hallow's End]
			})),

			-- 10.2.0
			tier(DF_TIER, 2.0, bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
				i(208979),	-- 10.2 Monster - Merithra - Robe
				i(208982),	-- 10.2 Monster - Merithra - Waist
				i(208981),	-- 10.2 Monster - Merithra - Wrist
				i(211132),	-- Omni Storm
			})),
		}),
	}),
});