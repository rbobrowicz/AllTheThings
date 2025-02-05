---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- Everything in this file hasn't been implemented yet.

root(ROOTS.NeverImplemented, {
	filter(RECIPES, {
		prof(ENGINEERING, {
			tier(TBC_TIER, {
				i(23813),	-- Schematic: Blue Smoke Flare [Removed in TBC Beta]
				i(23882),	-- Schematic: Critter Enlarger [Removed in TBC Beta]
				i(23812),	-- Schematic: Red Smoke Flare [Removed in TBC Beta]
			}),
			tier(WOTLK_TIER, {
				i(37589),	-- Hyper-Powered Mote Extractor
			}),
			tier(MOP_TIER, {
				-- 5.2.0
				tier(MOP_TIER, 2.0, bubbleDownSelf({ ["timeline"] = {"created 5.2.0"} }, {
					i(94894),	-- Schematic: Advanced Refrigeration Unit
					i(97230),	-- Schematic: Jard's Peculiar Energy Source
					i(94893),	-- Schematic: Pierre
					i(94880),	-- Schematic: Sky Golem
				})),
			}),
			tier(WOD_TIER, {
				-- 6.0.2
				tier(WOD_TIER, 0.2, bubbleDownSelf({ ["timeline"] = {"created 6.0.2"} }, {
					i(100907),	-- Schematic: Rascal-Bot
				})),
			}),
			tier(LEGION_TIER, {
				-- 7.0.3
				tier(LEGION_TIER, 0.3, bubbleDownSelf({ ["timeline"] = {"created 7.0.3"} }, {
					i(137692),	-- Schematic: Blingtron's Circuit Design Tutorial
					i(137697),	-- Schematic: Blink-Trigger Headgun (Rank 2)
					i(137699),	-- Schematic: Bolt-Action Headgun (Rank 2)
					i(137693),	-- Schematic: Reaves Module: Failure Detection Mode
					i(137700),	-- Schematic: Reinforced Headgun (Rank 2)
					i(137725),	-- Schematic: Sonic Environment Enhancer
					i(137698),	-- Schematic: Tactical Headgun (Rank 2)
				})),

				-- 7.1.5
				tier(LEGION_TIER, 1.5, bubbleDownSelf({ ["timeline"] = {"created 7.1.5"} }, {
					i(144343),	-- Schematic: Rechargeable Reaves Battery
				})),

				-- 7.3.0
				tier(LEGION_TIER, 3.0, bubbleDownSelf({ ["timeline"] = {"created 7.3.0"} }, {
					i(151714),	-- Schematic: Gravitational Reduction Slippers
					i(151717),	-- Schematic: Wormhole Generator: Argus
				})),
			}),
			tier(BFA_TIER, {
				-- 8.0.1
				tier(BFA_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 8.0.1"} }, {
					i(162333),	-- Schematic: Catchroot Seed Spreader
					i(162737),	-- Schematic: Catchroot Seed Spreader
					i(162334),	-- Schematic: Charged Refrigeration Projectile
					i(162738),	-- Schematic: Charged Refrigeration Projectile
					i(162338),	-- Schematic: Electro-Induced Slumber Bomb
					i(162335),	-- Schematic: Fro-Grow Grenade
					i(162739),	-- Schematic: Fro-Grow Grenade
					i(162336),	-- Schematic: Neurological Immobilization Bomb
					i(162740),	-- Schematic: Neurological Immobilization Bomb
				})),

				-- 8.1.5
				tier(BFA_TIER, 1.5, bubbleDownSelf({ ["timeline"] = {"created 8.1.5"} }, {
					i(165843),	-- Schematic: Mechantula
				})),
			}),
			tier(SL_TIER, {
				-- 9.0.1
				tier(SL_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 9.0.1"} }, {
					i(183867),	-- [DNT][REUSE ME] Schematic: Crafter's Mark III
				})),
			}),
		}),
		prof(FIRST_AID, {
			tier(CLASSIC_TIER, {
				i(16085),	-- Artisan First Aid - Heal Thyself
				i(8547),	-- Formula: Powerful Smelling Salts
				i(23689),	-- Manual: Crystal Infused Bandage
			}),
		}),
		prof(FISHING, {
			tier(CLASSIC_TIER, {
				i(16082),	-- Artisan Fishing - The Way of the Lure
			}),
			tier(CATA_TIER, {
				-- 4.0.1
				tier(CATA_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 4.0.1"} }, {
					i(46054),	-- Journeyman Fishing - Fishing for Dummies
					i(46055),	-- Grand Master Fishing - Deep Sea Adventures
				})),
			}),
		}),
		prof(INSCRIPTION, {
			tier(MOP_TIER, {
				-- 5.0.1
				tier(MOP_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 5.0.1"} }, {
					i(87829),	-- Technique: Incarnadine Ink
					i(87830),	-- Technique: Tigersblood Tincture
				})),
			}),
			tier(WOD_TIER, {
				-- 6.2.1
				tier(WOD_TIER, 2.1, bubbleDownSelf({ ["timeline"] = {"created 6.2.1"} }, {
					i(129139),	-- Tome of Rapid Pathfinding
				})),
			}),
			tier(LEGION_TIER, {
				-- 7.0.3
				tier(LEGION_TIER, 0.3, bubbleDownSelf({ ["timeline"] = {"created 7.0.3"} }, {
					-- #if BEFORE 10.1.5
					i(141061),	-- Technique: Grimoire of the Abyssal (Item never made it into the game)
					-- #endif
					i(141065),	-- Technique: Grimoire of the Terrorguard (Item never made it into the game)
					i(141065),	-- Technique: Grimoire of the Terrorguard
				})),

				-- 7.2.0
				tier(LEGION_TIER, 2.0, bubbleDownSelf({ ["timeline"] = {"created 7.2.0"} }, {
					i(146335),	-- Vantus Rune Technique: Black Rook Hold (likely PTR version)
					i(146355),	-- Vantus Rune Technique: Black Rook Hold (likely PTR version)
					i(146375),	-- Vantus Rune Technique: Black Rook Hold (likely PTR version)
					i(146344),	-- Vantus Rune Technique: Cathedral of Eternal Night (likely PTR version)
					i(146364),	-- Vantus Rune Technique: Cathedral of Eternal Night (likely PTR version)
					i(146384),	-- Vantus Rune Technique: Cathedral of Eternal Night (likely PTR version)
					i(146395),	-- Vantus Rune Technique: Court of Stars (likely PTR version)
					i(146397),	-- Vantus Rune Technique: Court of Stars (likely PTR version)
					i(146399),	-- Vantus Rune Technique: Court of Stars (likely PTR version)
					i(146336),	-- Vantus Rune Technique: Darkheart Thicket (likely PTR version)
					i(146356),	-- Vantus Rune Technique: Darkheart Thicket (likely PTR version)
					i(146376),	-- Vantus Rune Technique: Darkheart Thicket (likely PTR version)
					i(146396),	-- Vantus Rune Technique: Eye of Azshara (likely PTR version)
					i(146398),	-- Vantus Rune Technique: Eye of Azshara (likely PTR version)
					i(146400),	-- Vantus Rune Technique: Eye of Azshara (likely PTR version)
					i(146337),	-- Vantus Rune Technique: Halls of Valor (likely PTR version)
					i(146357),	-- Vantus Rune Technique: Halls of Valor (likely PTR version)
					i(146377),	-- Vantus Rune Technique: Halls of Valor (likely PTR version)
					i(146338),	-- Vantus Rune Technique: Maw of Souls (likely PTR version)
					i(146358),	-- Vantus Rune Technique: Maw of Souls (likely PTR version)
					i(146378),	-- Vantus Rune Technique: Maw of Souls (likely PTR version)
					i(146339),	-- Vantus Rune Technique: Neltharion's Lair (likely PTR version)
					i(146359),	-- Vantus Rune Technique: Neltharion's Lair (likely PTR version)
					i(146379),	-- Vantus Rune Technique: Neltharion's Lair (likely PTR version)
					i(146340),	-- Vantus Rune Technique: Return to Karazhan (Lower) (likely PTR version)
					i(146360),	-- Vantus Rune Technique: Return to Karazhan (Lower) (likely PTR version)
					i(146380),	-- Vantus Rune Technique: Return to Karazhan (Lower) (likely PTR version)
					i(146345),	-- Vantus Rune Technique: Return to Karazhan (Upper) (likely PTR version)
					i(146365),	-- Vantus Rune Technique: Return to Karazhan (Upper) (likely PTR version)
					i(146385),	-- Vantus Rune Technique: Return to Karazhan (Upper) (likely PTR version)
					i(146341),	-- Vantus Rune Technique: The Arcway (likely PTR version)
					i(146361),	-- Vantus Rune Technique: The Arcway (likely PTR version)
					i(146381),	-- Vantus Rune Technique: The Arcway (likely PTR version)
					i(146342),	-- Vantus Rune Technique: Vault of the Wardens (likely PTR version)
					i(146362),	-- Vantus Rune Technique: Vault of the Wardens (likely PTR version)
					i(146382),	-- Vantus Rune Technique: Vault of the Wardens (likely PTR version)
					i(146343),	-- Vantus Rune Technique: Violet Hold (likely PTR version)
					i(146363),	-- Vantus Rune Technique: Violet Hold (likely PTR version)
					i(146383),	-- Vantus Rune Technique: Violet Hold (likely PTR version)
				})),
			}),
			i(169550),	-- REUSE ME [MTMM]
			tier(SL_TIER, {
				-- 9.0.1
				tier(SL_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 9.0.1"} }, {
					i(183865),	-- [DNT][REUSE ME] Technique: Crafter's Mark III
				})),
			}),
		}),
		prof(JEWELCRAFTING, {
			tier(TBC_TIER, {
				-- 2.1.0
				tier(TBC_TIER, 1.0, bubbleDownSelf({ ["timeline"] = {"created 2.1.0"} }, {
					i(32412),	-- Design: Relentless Earthstorm Diamond
				})),

				-- 2.1.3
				tier(TBC_TIER, 1.3, bubbleDownSelf({ ["timeline"] = {"created 2.1.3"} }, {
					i(21958),	-- Design: Arcanite Sword Pendant
					i(21959),	-- Design: Blood Crown
					i(25888),	-- Primal Stone Statue
				})),

				-- 2.3.0
				tier(TBC_TIER, 3.0, bubbleDownSelf({ ["timeline"] = {"created 2.3.0"} }, {
					i(34221),	-- Design: Chaotic Skyfire Diamond
				})),

				-- 2.4.0
				tier(TBC_TIER, 4.0, bubbleDownSelf({ ["timeline"] = {"created 2.4.0"} }, {
					i(35533),	-- Design: Amulet of Flowing Life
					i(35534),	-- Hard Khorium Band
					i(35535),	-- Hard Khorium Choker
					i(35536),	-- Loop of Forged Power
					i(35537),	-- Pendant of Sunfire
					i(35538),	-- Ring of Flowing Life
				})),

				i(21950),	-- Design: Cut Emerald - Deprecated
				i(21951),	-- Design: Cut Azerothian Diamond
				i(20972),	-- Design: Silver Rose Pendant
			}),
			tier(CATA_TIER, {
				-- 4.0.1
				tier(CATA_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 4.0.1"} }, {
					r(73259),	-- Resolute Hessonite
					r(73233),	-- Mystic Alicite
				})),
			}),
			tier(WOD_TIER, {
				-- 6.0.1
				tier(WOD_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 6.0.1"} }, {
					i(116080),	-- Design: Greater Taladite Amplifier
				})),
			}),
		}),
		prof(MINING, {
			tier(LEGION_TIER, {
				-- 7.0.3
				tier(LEGION_TIER, 0.3, bubbleDownSelf({ ["timeline"] = {"created 7.0.3"} }, {
					i(124463),	-- Mining Technique: Leystone Deposit
					i(124464),	-- Mining Technique: Leystone Deposit
					i(124465),	-- Mining Technique: Leystone Deposit
					i(124467),	-- Mining Technique: Leystone Seam
					i(124468),	-- Mining Technique: Leystone Seam
					i(124469),	-- Mining Technique: Leystone Seam
					i(124471),	-- Mining Technique: Living Leystone
					i(124472),	-- Mining Technique: Living Leystone
					i(124473),	-- Mining Technique: Living Leystone
					i(124475),	-- Mining Technique: Felslate Deposit
					i(124476),	-- Mining Technique: Felslate Deposit
					i(124477),	-- Mining Technique: Felslate Deposit
					i(124479),	-- Mining Technique: Felslate Seam
					i(124480),	-- Mining Technique: Felslate Seam
					i(124481),	-- Mining Technique: Felslate Seam
					i(124483),	-- Mining Technique: Living Seam
					i(124484),	-- Mining Technique: Living Seam
					i(124485),	-- Mining Technique: Living Seam
					i(124487),	-- Mining Technique: Infernal Brimstone
					i(124488),	-- Mining Technique: Infernal Brimstone
				})),
			}),
		}),
		prof(TAILORING, {
			tier(CLASSIC_TIER, {
				i(7093),	-- Pattern: Boots of Darkness
				r(8778),	-- Boots of Darkness
				i(6273),	-- Pattern: Green Woolen Robe
				r(7636),	-- Green Woolen Robe
				i(10324),	-- Pattern: Stormcloth Boots
				r(12090),	-- Stormcloth Boots
				i(10304),	-- Pattern: Stormcloth Gloves
				r(12063),	-- Stormcloth Gloves
				i(10319),	-- Pattern: Stormcloth Headband
				r(12083),	-- Stormcloth Headband
				i(10303),	-- Pattern: Stormcloth Pants
				r(12062),	-- Stormcloth Pants
				i(10322),	-- Pattern: Stormcloth Shoulders
				r(12087),	-- Stormcloth Shoulders
				i(10313),	-- Pattern: Stormcloth Vest
				r(12068),	-- Stormcloth Vest
				i(21369),	-- Pattern: Felcloth Bag
			}),
			tier(TBC_TIER, {
				i(24315),	-- Pattern: Heavy Netherweave Net
				i(29120),	-- Pattern: Truefaith Vestments
				i(30474),	-- Pattern: Lifeblood Bracers
				r(36672),	-- Lifeblood Bracers
				i(30473),	-- Pattern: Lifeblood Belt
				r(36670),	-- Lifeblood Belt
				i(30472),	-- Pattern: Lifeblood Leggings
				r(36669),	-- Lifeblood Leggings
				i(30470),	-- Pattern: Netherflame Belt
				r(36667),	-- Netherflame Belt
				i(30471),	-- Pattern: Netherflame Boots
				r(36668),	-- Netherflame Boots
				i(30469),	-- Pattern: Netherflame Robe
				r(36665),	-- Netherflame Robe
			}),
			tier(WOTLK_TIER, {
				i(42196),	-- Pattern: Aurora Slippers
				i(42190),	-- Pattern: Deathchill Cloak
				i(42180),	-- Pattern: Ebonweave
				i(42200),	-- Pattern: Ebonweave Gloves
				i(42199),	-- Pattern: Ebonweave Robe
				i(42194),	-- Pattern: Frostmoon Pants
				i(42186),	-- Pattern: Frostweave Bag
				i(42179),	-- Pattern: Green Workman's Shirt
				i(42191),	-- Pattern: Hat of Wintry Doom
				i(42195),	-- Pattern: Light Blessed Mittens
				i(42181),	-- Pattern: Moonshroud
				i(42198),	-- Pattern: Moonshroud Gloves
				i(42197),	-- Pattern: Moonshroud Robe
				i(42192),	-- Pattern: Silky Iceshard Boots
				i(42182),	-- Pattern: Spellweave
				i(42202),	-- Pattern: Spellweave Gloves
				i(42201),	-- Pattern: Spellweave Robe
				i(42189),	-- Pattern: Wispcloak
				i(42174),	-- Pattern: Yellow Lumberjack Shirt
			}),
			tier(WOD_TIER, {
				-- 6.0.1
				tier(WOD_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 6.0.1"} }, {
					i(114867),	-- Pattern: Miniature Flying Carpet - NYI
					r(168851),	-- Miniature Flying Carpet
					i(114872),	-- Pattern: Greater Hexweave Essence
					r(169669),	-- Pattern: Hexweave Cloth
					i(118098),	-- Pattern: Murloc Chew Toy
					r(173415),	-- Murloc Chew Toy
				})),
			}),
			tier(LEGION_TIER, {
				-- 7.0.3
				tier(LEGION_TIER, 0.3, bubbleDownSelf({ ["timeline"] = {"created 7.0.3"} }, {
					i(137981),	-- Pattern: Silkweave Cloak
					i(151746),	-- Pattern: Lightweave Breeches
				})),
			}),
			tier(BFA_TIER, {
				-- 8.0.1
				tier(BFA_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 8.0.1"} }, {
					i(162424),	-- Pattern: Embroidered Deep Sea Cloak of the Feather (alliance)
					i(162770),	-- Pattern: Embroidered Deep Sea Cloak of the Feather (horde)
					i(162426),	-- Pattern: Embroidered Deep Sea Cloak of Resilience (alliance)
					i(162771),	-- Pattern: Embroidered Deep Sea Cloak of Resilience (horde)
					i(162428),	-- Pattern: Embroidered Deep Sea Gloves (Rank 3)
					i(162430),	-- Pattern: Embroidered Deep Sea Breeches (Rank 3)
				})),
			}),
			tier(SL_TIER, {
				-- 9.0.1
				tier(SL_TIER, 0.1, bubbleDownSelf({ ["timeline"] = {"created 9.0.1"} }, {
					i(183871),	-- [DNT][REUSE ME] Pattern: Crafter's Mark III
				})),
			}),
		}),
		prof(POISONS, {
			tier(CLASSIC_TIER, {
				i(5657),	-- Recipe: Instant Toxin
			}),
		}),
	}),
});