---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(ENGINEERING, {
		n(CRAFTABLES, {
			tier(SL_TIER, {
				-- 9.0.1
				tier(SL_TIER, 0.1, bubbleDown({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(172911),	-- [DNT] [REUSE ME] \\ M.O.T.E. Collector
					i(176448),	-- [DNT] [REUSE ME] \\ Soul Battery
					i(172916),	-- [DNT] [REUSE ME] \\ Soul Extractomatic [NYI]
					i(176616),	-- [DNT] [REUSE ME] \\ Unbound Soul
					i(172930),	-- [DNT] REUSE ME \\ Engineering - Modified Crafting Reagent 05
					i(172931),	-- [DNT] REUSE ME \\ Engineering - Modified Crafting Reagent 06
					i(172932),	-- [DNT] REUSE ME \\ Engineering - Modified Crafting Reagent 07
					i(172933),	-- [DNT] REUSE ME \\ Engineering - Modified Crafting Reagent 08
					i(172929),	-- [DNT] REUSE ME \\ Flash-Freeze Power Cells \\ Engineering - Modified Crafting Reagent 04
					i(172909),	-- [DNT] [REUSE ME]
					i(172942),	-- [DNT] [REUSE ME]
					i(172943),	-- [DNT] [REUSE ME]
					i(172944),	-- [DNT] [REUSE ME]
					i(172945),	-- [DNT] [REUSE ME]
					i(172913),	-- [DNT] [REUSE ME]
					i(172938),	-- Engineering Reagent 05
					i(172939),	-- Engineering Reagent 06
					i(172940),	-- Engineering Reagent 07
					i(172941),	-- Engineering Reagent 08
					i(172919),	-- Belt Modification: Damage Retaliator
					i(172917),	-- Belt Modification: Dimensional Shifter
					i(172918),	-- Belt Modification: Electro-Jump
					i(172928),	-- Hydrodynamic Accelerators
					i(172926),	-- Necrostatic Micro Capacitor
					i(172922),	-- Re-Calibrated Proton Blaster
				})),
			}),
			tier(DF_TIER, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					i(198836),	-- Arclight Vital Correctors
					i(198250),	-- Convincingly Realistic Jumper Cables+
					i(198251),	-- Convincingly Realistic Jumper Cables++
					i(198252),	-- Convincingly Realistic Jumper Cables+++
					i(198274),	-- Element-Infused Rocket Helmet (TOY!) [Used Another ID]
					i(191305),	-- Expedition Multi-Toolbox
					i(198177),	-- Draconic Gunshoes+
					i(198178),	-- Draconic Gunshoes++
					i(198179),	-- Draconic Gunshoes+++
					i(198271),	-- H.E.L.P.+
					i(198272),	-- H.E.L.P.++
					i(198273),	-- H.E.L.P.+++
					i(198152),	-- Perfectly Calibrated Lenses+
					i(198153),	-- Perfectly Calibrated Lenses++
					i(198154),	-- Perfectly Calibrated Lenses+++
					i(198531),	-- Peripheral Vision Projectors (TYLER'S TEST DNT)
					i(198242),	-- Quack-E [Used another ID!]
					i(198284),	-- Spring-Loaded Draconium Fabric Cutter
					i(198285),	-- Spring-Loaded Titanicium Fabric Cutter
					i(198853),	-- Tinker: Always Malfunction
					i(198286),	-- Tinker Removal Kit+
					i(198287),	-- Tinker Removal Kit++
					i(198288),	-- Tinker Removal Kit+++
				})),

				-- 10.0.5
				tier(DF_TIER, 0.5, bubbleDown({ ["timeline"] = { CREATED_10_0_5 } }, {
					i(203382),	-- Peripheral Vision Projectors
				})),
			}),
		}),
		filter(RECIPES, {
			tier(SL_TIER, {
				-- 9.0.1
				tier(SL_TIER, 0.1, bubbleDown({ ["timeline"] = { CREATED_9_0_1 } }, {
					r(310488),	-- Disposable Ectoplasmic Specs
					r(310480),	-- Faerie Glider Kit
					r(310515),	-- Hydrodynamic Accelerators \\ Phaevon Alloy
					r(340534),	-- Interact
					r(310481),	-- Kyrian Glider Kit
					r(310482),	-- Maldraxxian Glider Kit
					r(310513),	-- Necrostatic Micro Capacitor \\ Elecxine Alloy
					r(310537),	-- Re-Calibrated Proton Blaster
					r(310483),	-- Stoneborn Glider Kit
					r(310491),	-- Torghast Reconfiguration Rig
					r(310489),	-- Unknown
					r(310494),	-- Unknown
					r(310527),	-- Unknown
				})),
			}),
			tier(DF_TIER, {
				-- 10.0.0
				tier(DF_TIER, 0.01, bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382581),	-- Opening
					r(382352),	-- Perfectly Calibrated Lenses
					r(382360),	-- Tinker Removal Kit
					r(382382),	-- Wisp of Tyr
					r(382372),	-- Unknown
					r(382373),	-- Unknown
					-- With SpellID attached
					i(199298),	-- Schematic: Arclight Vital Correctors (RECIPE!)
					i(199296),	-- Schematic: Bronze Fireflight (RECIPE!)
					i(198780),	-- Schematic: Expedition Multi-Toolbox (RECIPE!)
					i(199292),	-- Schematic: Convincingly Realistic Jumper Cables (RECIPE!)
					i(199291),	-- Schematic: Draconic Gunshoes (RECIPE!)
					-- Without SpellID attached
					i(199294),	-- Schematic: Atomic Recalibrator (RECIPE!)
					i(199277),	-- Schematic: Battle-Ready Binoculars (RECIPE!)
					i(199279),	-- Schematic: Bottomless Stonecrust Ore Satchel (RECIPE!)
					i(199250),	-- Schematic: Calibrated Safety Switch (RECIPE!)
					i(199266),	-- Schematic: Centralized Precipitation Emitter (RECIPE!)
					i(199263),	-- Schematic: Completely Safe Rockets (RECIPE!)
					i(199224),	-- Schematic: Complicated Cuffs (RECIPE!)
					i(199235),	-- Schematic: Creature Combustion Canister (RECIPE!)
					i(199249),	-- Schematic: Critical Failure Prevention Unit (RECIPE!)
					i(199272),	-- Schematic: Deadline Deadeyes (RECIPE!)
					i(199225),	-- Schematic: Difficult Wrist Protectors (RECIPE!)
					i(199284),	-- Schematic: Draconium Brainwave Amplifier (RECIPE!)
					i(199278),	-- Schematic: Draconium Delver's Helmet (RECIPE!)
					i(199283),	-- Schematic: Draconium Encased Samophlange (RECIPE!)
					i(199280),	-- Schematic: Draconium Fisherfriend (RECIPE!)
					i(199221),	-- Schematic: Element-Infused Rocket Helmet (RECIPE!)
					i(199264),	-- Schematic: Endless Stack of Needles (RECIPE!)
					i(199267),	-- Schematic: Environmental Emulator (RECIPE!)
					i(199254),	-- Schematic: EZ-Thro Creature Combustion Canister (RECIPE!)
					i(199255),	-- Schematic: EZ-Thro Gravitational Displacer (RECIPE!)
					i(199300),	-- Schematic: EZ-Thro Grease Grenade (RECIPE!)
					i(199256),	-- Schematic: EZ-Thro Primal Deconstruction Charge (RECIPE!)
					i(199268),	-- Schematic: Giggle Goggles (RECIPE!)
					i(199288),	-- Schematic: Gyroscopic Kaleidoscope (RECIPE!)
					i(199247),	-- Schematic: Haphazardly Tethered Wires (RECIPE!)
					i(199231),	-- Schematic: High Intensity Thermal Scanner (RECIPE!)
					i(199252),	-- Schematic: I.W.I.N. Button Mk10 (RECIPE!)
					i(199281),	-- Schematic: Lapidary's Draconium Clamps (RECIPE!)
					i(199274),	-- Schematic: Lightweight Ocular Lenses (RECIPE!)
					i(199251),	-- Schematic: Magazine of Healing Darts (RECIPE!)
					i(199261),	-- Schematic: Meticulously Tuned Gear (RECIPE!)
					i(199271),	-- Schematic: Milestone Magnifiers (RECIPE!)
					i(199223),	-- Schematic: Needlessly Complex Wristguards (RECIPE!)
					i(199293),	-- Schematic: Neural Silencer Mk3 (RECIPE!)
					i(199262),	-- Schematic: One-Size-Fits-All Gear (RECIPE!)
					i(199276),	-- Schematic: Oscillating Wilderness Opticals (RECIPE!)
					i(199248),	-- Schematic: Overcharged Overclocker (RECIPE!)
					i(199222),	-- Schematic: Overengineered Sleeve Extenders (RECIPE!)
					i(199226),	-- Schematic: P.E.W. x2 (RECIPE!)
					i(199275),	-- Schematic: Peripheral Vision Projectors (RECIPE!)
					i(199270),	-- Schematic: Quality-Assured Optics (RECIPE!)
					i(199260),	-- Schematic: Rapidly Ticking Gear (RECIPE!)
					i(199259),	-- Schematic: Razor-Sharp Gear (RECIPE!)
					i(199233),	-- Schematic: S.A.V.I.O.R. (RECIPE!)
					i(199273),	-- Schematic: Sentry's Stabilized Specs (RECIPE!)
					i(199297),	-- Schematic: Spring-Loaded Capacitor Casing (RECIPE!)
					i(199282),	-- Schematic: Spring-Loaded Draconium Fabric Cutters (RECIPE!)
					i(199257),	-- Schematic: Suspiciously Silent Crate (RECIPE!)
					i(199253),	-- Schematic: Suspiciously Ticking Crate (RECIPE!)
					i(199287),	-- Schematic: Tinker: Plane Displacer (RECIPE!)
					i(199258),	-- Schematic: Tinker: Supercollide-O-Tron (RECIPE!)
					i(199265),	-- Schematic: Wyrmhole Generator (RECIPE!)
					i(199415),	-- Schematic: Zapthrottle Soul Inhaler (RECIPE!)
				})),
			}),
		}),
	}),
}));