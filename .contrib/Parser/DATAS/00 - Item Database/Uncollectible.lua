local Items = root(ROOTS.Uncollectible);
local i = function(itemID)
	-- need the ID within the group even though it's saved via ID
	local item = { ["itemID"] = itemID };
	Items[itemID] = item;
	return item;
end
-------------------------------------------------------------------- LOADING DOCK --------------------------------------------------------------------
-- Put items between these two bars if you dont want to sort them /Braghe


-------------------------------------------------------------------- LOADING DOCK --------------------------------------------------------------------

-- Dont add anything here /Braghe
-------------------------------------------------------------------- NOT SORTED --------------------------------------------------------------------
i(23820);	-- Critter Enlarger
i(139786);	-- Ancient Mana Crystal
i(103644);	-- Blessed Bandage
i(23123);	-- Blessed Wizard Oil
i(18595);	-- Blood Opal ("Retrieving Data" in-game)
i(168124);	-- Cash of War Resources
i(44626);	-- Cask of Aged Dalaran Red
i(13509);	-- Clutch of Foresight
i(23122);	-- Consecrated Sharpening Stone
i(143542);	-- Crown Co. "Kure-Everything" Tonic
i(142264);	-- Drudge Fluid
i(120257);	-- Drums of Fury
i(142262);	-- Electrified Key
i(13508);	-- Eye of Arachnida
i(129210);	-- Fel Crystal Fragments
i(127768);	-- Fel Petal
i(37431);	-- Fetch Ball
i(116984);	-- Frost Wyrm Egg
i(44618);	-- Glass of Aged Dalaran Red
i(18269);	-- Gordok Green Grog
i(153188);	-- Greater Blessed Bandage
i(19296);	-- Greater Darkmoon Prize
i(62343);	-- Greater Inscription of Charged Lodestone
i(62345);	-- Greater Inscription of Jagged Stone
i(62346);	-- Greater Inscription of Shattered Crystal
i(62333);	-- Greater Inscription of Unbreakable Quartz
i(43626);	-- Happy Pet Snack
i(33928);	-- Hollowed Bone Decanter
i(101436);	-- Icemother Milk
i(18284);	-- Kreeg's Stout Beatdown
i(19297);	-- Lesser Darkmoon Prize
i(62342);	-- Lesser Inscription of Charged Lodestone
i(62344);	-- Lesser Inscription of Jagged Stone
i(62347);	-- Lesser Inscription of Shattered Crystal
i(62321);	-- Lesser Inscription of Unbreakable Quartz
i(169943);	-- Little Princess Cap
i(142263);	-- Machine Fluid
i(138883);	-- Meryl's Conjured Refreshment
i(169944);	-- Miniscule Fez
i(19298);	-- Minor Darkmoon Prize
i(19425);	-- Mysterious Lockbox
i(118425);	-- Nesingwary's Lost Horn
i(20834);	-- Ornate Spyglass XT ("Retrieving Data" in-game)
i(23794);	-- Permanent Sheen of Zanza ("Retrieving Data" in-game)
i(23795);	-- Permanent Spirit of Zanza ("Retrieving Data" in-game)
i(23796);	-- Permanent Swiftness of Zanza ("Retrieving Data" in-game)
i(43352);	-- Pet Grooming Kit
i(33448);	-- Runic Mana Potion
i(165699);	-- Scarlet Herring Lure
i(116411);	-- Scroll of Protection
i(116410);	-- Scroll of Speed
i(141016);	-- Scroll of Town Portal: Faronaar
i(141015);	-- Scroll of Town Portal: Kal'delar
i(141013);	-- Scroll of Town Portal: Shala'nir
i(119449);	-- Shadowberry
i(141655);	-- Shimmering Ancient Mana Cluster
i(118905);	-- Sinister Spores
i(169856);	-- Spark-1351
i(168271);	-- Stolen Ramkahen Banner
i(119216);	-- Super Sticky Glitter Bomb
i(15723);	-- Tea with Sugar
i(169860);	-- Tiny Dapper Hat
i(168003);	-- Unstable Manapearl
i(13514);	-- Wail of the Banshee
i(117016);	-- Wand of Arcane Imprisonment
i(117013);	-- Wand of Lightning Shield
i(85266);	-- Winter Blossom Tree
i(128851);	-- Roasted juicycrunch carrots
-- "Mount Equipment"
i(141593);	-- Dro's Key
-- Quest Items
i(164778);	-- Abyssal Scepter
i(162579);	-- Abyssal Scepter
i(146692);	-- Ancient Dreadleather Armor
i(146700);	-- Ancient Gravenscale Armor
i(169251);	-- Ancient Insect
i(168234);	-- Ancient Runestone
i(147438);	-- Bag of Wisp-Touched Elderhide
i(146308);	-- Barrel of Storm Brew
i(169224);	-- Big Red Button
i(147439);	-- Box of Completed Prime Wardenscale
i(169248);	-- Broken Sandals
i(169391);	-- Bubble-eyed Rolly
i(169292);	-- Charged Scale of the Blue Aspect
i(146694);	-- Chipped Felsong Mantle
i(163212);	-- Cleansing Thurible
i(146686);	-- Colorless Shroud of Xavius
i(169235);	-- Confusing Spring Box
i(169250);	-- Crude Eating Utensil
i(9265);	-- Cuergo's Hidden Treasure
i(169232);	-- Dud Blast Canister
i(143656);	-- Echo of Time (N)
i(143657);	-- Echo of Time (H)
i(143658);	-- Echo of Time (M)
i(118382);	-- Ember of the Mountain (N)
i(118387);	-- Ember of the Mountain (H)
i(118390);	-- Ember of the Mountain (M)
i(164731);	-- Enchanted Shroud
i(169778);	-- Enchanting Crystal
i(141303);	-- Essence of Clarity (N)
i(141304);	-- Essence of Clarity (H)
i(141305);	-- Essence of Clarity (M)
i(132560);	-- Essence of the Whirlwind
i(132745);	-- Essence of the Whirlwind
i(169229);	-- Exhaust Aromatics
i(169164);	-- Father's Bones
i(169166);	-- Father's Clothes
i(169165);	-- Father's Sword
i(128419);	-- Fel Essence (N)
i(128420);	-- Fel Essence (H)
i(128421);	-- Fel Essence (M)
i(169228);	-- Hazardous Container
i(118383);	-- Heart of Stone (N)
i(118386);	-- Heart of Stone (H)
i(118389);	-- Heart of Stone (M)
i(168236);	-- Hearthstone Card
i(169240);	-- Idea Starter
i(169233);	-- Infinite Loop Spring
i(169227);	-- Irradiated Bolts
i(169257);	-- Jagged Rune
i(169236);	-- Latch-and-Lock Trigger
i(146952);	-- Legendary Tailor's Materials
i(146977);	-- Legendary Tanner's Kit
i(147209);	-- Legendary Wardenscale Supplies
i(168280);	-- Lost Scale of the Scarlet Broodmother
i(147582);	-- Mark of the Sentinax
i(146680);	-- Melandrus' Star-Touched Bracers
i(122618);	-- Misprinted Draenic Coin
i(169238);	-- Modified Radio Receiver
i(169222);	-- Murloc Treasure
i(168223);	-- Old Parchment
i(169231);	-- Optical Override Drive
i(163601);	-- Overgrown Anchor Weed
i(167830);	-- Petrified Ebony Scale
i(169325);	-- Petrified Ebony Scale
i(169237);	-- Pulsating Marble
i(168184);	-- Rare Metal
i(160983);	-- Recruitment Orders
i(169230);	-- Reflective Plating
i(167875);	-- Reforged Dreamglow Dragonscale
i(169252);	-- Resonant Pearl
i(18149);	-- Rune of Recall
i(146696);	-- Rusted Legplates of Mephistroth
i(147437);	-- Satchel of Starweave and Shadowcloth
i(157539);	-- Scroll of Storm Control
i(17224);	-- Scrying Scope
i(17364);	-- Scrying Scope
i(146906);	-- Sentinax Beacon of Carnage
i(146912);	-- Sentinax Beacon of Greater Carnage
i(146903);	-- Sentinax Beacon of Domination
i(146908);	-- Sentinax Beacon of Engineering
i(146922);	-- Sentinax Beacon of Fel Growth
i(146914);	-- Sentinax Beacon of Greater Engineering
i(146910);	-- Sentinax Beacon of Greater Domination
i(146915);	-- Sentinax Beacon of Greater Torment
i(146913);	-- Sentinax Beacon of Greater Warbeasts
i(146923);	-- Sentinax Beacon of Petrification
i(146909);	-- Sentinax Beacon of Torment
i(146907);	-- Sentinax Beacon of Warbeasts
i(147355);	-- Sentinax Beacon of the Bloodstrike
i(146905);	-- Sentinax Beacon of the Firestorm
i(146911);	-- Sentinax Beacon of the Greater Firestorm
i(169249);	-- Shark Tooth Necklace
i(169253);	-- Shell Horn
i(168817);	-- Siphoning Crystal
i(118384);	-- Sliver of Iron (N)
i(118385);	-- Sliver of Iron (H)
i(118388);	-- Sliver of Iron (M)
i(128416);	-- Soul Remnant (N)
i(128417);	-- Soul Remnant (H)
i(128418);	-- Soul Remnant (M)
i(147075);	-- Spirit Net
i(169246);	-- Strangely Seasoned Meat
i(146682);	-- Suramari Soul-Wraps
i(169247);	-- Throwing Rocks
i(146698);	-- Torn Bracers of the First War
i(169226);	-- Torn Sheet Music
i(169255);	-- Tuft of Red Fur
i(118377);	-- Universal Language Module
i(169239);	-- Unknowable Cube
i(169225);	-- Unstoppable Countdown Clock
i(169867);	-- Visual Holo Sphere
i(146688);	-- Waterlogged Handmaiden's Gloves
i(156926);	-- Witchrend
i(142509);	-- Withered Targeting Orb
i(164761);	-- Xal'atath, Blade of the Black Empire
i(146690);	-- Xavius' Torn Spellsash
i(17384);	-- Zinfizzlex's Portable Shredder Unit
i(17410);	-- Zinfizzlex's Portable Shredder Unit
i(135463);	-- Invincible's Reins
i(136351);	-- Handful of Obliterum Ash
i(136352);	-- Archmage Karlain's Imbued Silkweave Robe
i(139037);	-- Thunderfury, Blessed Blade of the Windseeker
i(139400);	-- [Ancient Magic and How to Wield It Without Destroying the World]
i(139401);	-- [The Fate of Aegwynn]
i(139402);	-- [The Fel Tome of Vorgalus Dor]
i(139671);	-- [Deathglare Iris]
i(151248);	-- Fragment of the Guardian's Seal (normal)
i(151249);	-- Fragment of the Guardian's Seal (hc)
i(151250);	-- Fragment of the Guardian's Seal (mythic)
i(152902);	-- Rune of Passage (normal)
i(152908);	-- Sigil of the Dark Titan (normal)
i(152909);	-- Sigil of the Dark Titan (heroic)
i(152910);	-- Sigil of the Dark Titan (mythic)
i(135511);	-- Thick Slab of Bacon. You get it for a split second after completing a bacon wq
i(137212);	-- Cut Skystone. You get it for a split second after completing the jewelcrafter daily
i(137214);	-- Cut Deep Amber. You get it for a split second after completing the jewelcrafter daily
i(137215);	-- Cut Azsunite.  You get it for a split second after completing the jewelcrafter daily
-- Recipes (Not actual recipes)
i(168326);	-- Eye of Theras
-- Mount
i(37011);	-- Magic Broom
i(33183);	-- Old Magic Broom
i(33189);	-- Rickety Magic Broom
i(33184);	-- Swift Magic Broom
-- "Toy"
i(160364);	-- Bunch of Berries
i(6351);	-- Dented Crate
i(118265);	-- Echoing Betrayal
i(2460);	-- Elixir of Tongues
i(151754);	-- Gold Plated Cage Head Key
i(13874);	-- Heavy Crate
i(151757);	-- Limited Run Blight Boar Poster
i(80914);	-- Mourning Glory
i(72201);	-- Plump Intestines
i(79104);	-- Rusty Watering Can
i(139590);	-- Scroll of Teleport: Ravenholdt
i(6357);	-- Sealed Crate
i(88496);	-- Sealed Crate
i(67495);	-- Strange Bloated Stomach
i(80513);	-- Vintage Bug Sprayer
i(6352);	-- Waterlogged Crate
i(160376);	-- Wilderbew Special
-- Bfa Consumables
i(162107);	-- [Makeshift Azerite Detector]
i(162108);	-- [Rough-hooked Tidespray Linen]
i(162109);	-- [Storm Silver Spurs]
i(162110);	-- [Disenchanting Rod]
i(162111);	-- [Monelite Fish Finder]
i(162111);	-- [Kaleidoscopic Lens]
i(163826);	-- Raider's Supply Cache
-- Bfa Quest Items
i(169473);	-- Dormant Scale of the Blue Aspect
-- Grey
i(158931);	-- Shiny Object
i(159621);	-- Personal Anchor
i(162126);	-- River Clam Meat
-- Suramar Mana Gems
i(139890);	-- Ancient Mana Gem
i(140236);	-- A Mrglrmrl Mlrglr
i(140239);	-- Excavated Highborne Artifact
i(140240);	-- Enchanted Moonwell Waters
-- "Weekly Holidays"
i(167872);	-- Damaged Diving Helmet
i(168010);	-- Submersible Propulsion Device
i(168011);	-- Jelly Jam
i(150366);	-- Moonkin Stone
i(150735);	-- Moonberry
i(150740);	-- Beanie Boomie
i(150747);	-- Brilliant Vial
i(150748);	-- Constellas Corruption
i(150749);	-- Moonglow Water
i(150750);	-- Moonkissed Antidote
-- Miscellaneous
i(89427);	-- Ancient Mogu Treasure
i(85224);	-- Basic Seed Pack
i(140360);	-- Rockwurm Barb
i(153119);	-- Wyrmtongue Cache of Finery
-------------------------------------------------------------------- NOT SORTED --------------------------------------------------------------------

-----------------
-- PATCH 4.0.3 --
-----------------
--- Trash ---
i(62370);	-- Bear Whisker
i(60406);	-- Blood-Caked Incisors
i(56054);	-- Gleaming Flipper
i(62770);	-- Infested Feather
i(54629);	-- Prickly Thorn
i(60390);	-- Reticulated Tissue
i(62528);	-- Sharp Crocolisk Tooth
i(56055);	-- Small Parasitic Fish
i(60405);	-- Stubby Bear Tail
i(56056);	-- Trophy Jaws
i(62452);	-- Velvet Ear

-----------------
-- PATCH 7.0.3 --
-----------------
i(123865);	-- Relic of Ursol

-----------------
-- PATCH 9.0.1 --
-----------------
--- Trash ---
i(169821);	-- Ogre Effigy
i(174790);	-- Overseer's Mandate
i(175242);	-- Waterlogged Supplies
--- Common ---

-----------------
-- PATCH 9.0.2 --
-----------------
i(180653);	-- Mythic Keystone
--- Profession ---
i(173066);	-- Darkmoon Card of Death
i(177875);	-- Darkmoon Card of Putrescence
i(177876);	-- Darkmoon Card of Repose
i(177873);	-- Darkmoon Card of the Indomitable
i(177874);	-- Darkmoon Card of Voracity
--- Vendor (Common) ---
i(182123);	-- Aged Agrave Tequila
i(174282);	-- Airy Ciabatta
i(177040);	-- Ambroria Dew
i(184227);	-- Angelic Feather
i(182122);	-- Ardenwood Vermouth
i(178217);	-- Azurebloom Tea
i(179268);	-- Banewood Penny Bun
i(179019);	-- Barbequed Dredwing
i(179011);	-- Batloaf
i(178538);	-- Beetle Juice
i(176408);	-- Blinding Smoke Capsules
i(178552);	-- Blood Oranges
i(182119);	-- Bloody Marileth
i(178549);	-- Boiled Meat
i(178545);	-- Bone Apple Tea
i(180209);	-- Bug Dissolver
i(179275);	-- Cabbage Wrapped Minced Mite
i(174285);	-- Candied Walnuts
i(179276);	-- Chimaera Tripe Soup
i(179022);	-- Clearleaf Cabbage
i(178534);	-- Corpini Slurry
i(182121);	-- Corpse Reanimator
i(179016);	-- Cottage Cheese
i(178542);	-- Cranial Concoction
i(178518);	-- Crypt-Aged Ale
i(180411);	-- Darkhaven Stout
i(179273);	-- Darkhound Tenderloin
i(178900);	-- Death Pepper Decay
i(178540);	-- Delectable Dirt Dessert
i(178220);	-- Dewdrop Ale
i(179307);	-- Drab of Tuica Moonshine
i(178544);	-- Dubious Cheese Platter
i(179269);	-- Dusk Almond Mousse
i(184283);	-- Dusk No. 1
i(173043);	-- Elysian Thade Bait
i(174284);	-- Empyrean Fruit Salad
i(179267);	-- Endmire Glowcap
i(173859);	-- Ethereal Pomegranate
i(179026);	-- Evernight Porridge
i(179272);	-- Fearstalker's Delight
i(180430);	-- Finger Food
i(182382);	-- Flask of Vile Resistance
i(176443);	-- Fleeting Frenzy Potion
i(184202);	-- Freeze-Dried Salted Meat
i(179020);	-- Garlic Clove
i(179015);	-- Garlic Spider Legs
i(180429);	-- Hand-Formed Fleshbread
i(179993);	-- Infused Muck Water
i(173039);	-- Iridescent Amberjack Bait
i(179279);	-- Jug of Tuica Moonshine
i(173038);	-- Lost Sole Bait
i(178539);	-- Lukewarm Tauralus Milk
i(179014);	-- Marbled Gorger Steak
i(179283);	-- Millet Wafers
i(179012);	-- Mirecrawler Goulash
i(184281);	-- Muckfrosty
i(179274);	-- Mutton Drob
i(179166);	-- Night Harvest Rolls
i(176331);	-- Obscuring Essence Potion
i(179025);	-- Odorous Rice
i(173041);	-- Pocked Bonefish Bait
i(179281);	-- Pridefall Borscht
i(174281);	-- Purified Skyspring Water
i(177043);	-- Reaped Larion Flank
i(176409);	-- Rejuvenating Siphoned Essence
i(184662);	-- Requisitioned Anima Cell
i(179023);	-- Rhubarb Stalks
i(178541);	-- Roasted Marrow Bones
i(179021);	-- Rosy Sweet Pepper
i(181163);	-- Scroll of Teleport: Theater of Pain
i(179277);	-- Shadeberry Shandy
i(179278);	-- Shadeskin Brandy
i(179270);	-- Shadeskin Plum
i(179992);	-- Shadespring Water
i(173040);	-- Silvergill Pike Bait
i(179018);	-- Skullboar Chop
i(184201);	-- Slushy Water
i(179013);	-- Smoked Muckfish
i(182118);	-- Sour Nightcap
i(173042);	-- Spinefin Piranha Bait
i(183857);	-- Strength of Fire
i(174283);	-- Stygian Stew
i(183807);	-- Stygic Coercion
i(183787);	-- Stygic Dampener
i(178536);	-- Tauralus Bone Marrow
i(178548);	-- Tea Bones
i(179017);	-- Telemea
i(178550);	-- Tenebrous Truffle
i(182120);	-- The Lich's Heart
--- Vendor (Uncommon) ---
i(180693);	-- Cyclonic Chronicles
i(180661);	-- Darktower Parchments: Affliction Most Foul
i(180660);	-- Darktower Parchments: Instant Polymorphist
i(180696);	-- Legion Wing Insignia
i(180377);	-- Red Rum
i(180405);	-- Rusty Gargon Chain
--- Vendor (Rare) ---
i(180686);	-- "Borrowed" Soulstone
i(180690);	-- Bottled Ash Cloud
i(179535);	-- Crumbling Pride Extractors
i(180874);	-- Gargon Whistle
i(179392);	-- Orb of Burgeoning Ambition
i(180684);	-- Sentinel Stonewing
i(180697);	-- Wing Commanders Insignia
--- Trash ---
i(183936);	-- A Curt Note
i(183928);	-- A Polite, But Short Thank You Note
i(180175);	-- A Treatise on Henbestian Logic
i(176857);	-- Abrasive Foot
i(178172);	-- Abrasive Sand
i(184566);	-- Adrima's Potpourri
i(179986);	-- Agonized Echoes
i(181781);	-- Almost Empty Amontillado Cask
i(184563);	-- Anima Condenser
i(181722);	-- Antiquated Verdigris Coin
i(180882);	-- Arena Writ
i(176886);	-- Augmented Femur
i(176864);	-- Barbed Leg
i(180385);	-- Bats Wing
i(183208);	-- Beasts, and How to Eat Them: Volume I
i(183920);	-- Bent Fork
i(180992);	-- Blood Red Plume
i(178129);	-- Bone and Muck Figure
i(176869);	-- Bone Chip
i(180381);	-- Brainwort
i(182760);	-- Brilliant Azure Orb
i(178178);	-- Brittle Bark
i(183596);	-- Broken Artifact
i(183927);	-- Broken Centurian Mechanism
i(183923);	-- Broken Claw
i(180286);	-- Broken Fishing Pole
i(183913);	-- Broken Flute Stem
i(179372);	-- Broken Mawrat Trap
i(183930);	-- Broken Vambrace Clasp
i(184369);	-- Brutally Sundered Mallet
i(182714);	-- Bundle of Leaflets
i(173877);	-- Burnished Hoof
i(178111);	-- Carrion Spattered Beak
i(176855);	-- Caustic Secretion
i(174022);	-- Ceremonial Hand Bell
i(182161);	-- Ceremonial Javelin
i(183055);	-- Chained Venthyr Pocketwatch
i(182774);	-- Chalice of Renagal's Pact
i(184372);	-- Charred Dreadplate
i(181382);	-- Chime of Eternity
i(183918);	-- Chipped Serving Bowl
i(179298);	-- Cloth Parisol Strips
i(179985);	-- Clouded Stain Glass Shards
i(180893);	-- Clumped Spores
i(180886);	-- Coarse Ground Sinew
i(176876);	-- Collapsed Psyche
i(176880);	-- Colossal Stinger
i(176883);	-- Congealed Muck
i(178177);	-- Consumptive Brambles
i(176865);	-- Contaminated Pollen
i(180878);	-- Corroded Vial
i(176809);	-- Cracked Actuator
i(180520);	-- Cracked Amber Doll
i(180505);	-- Cracked Stone Mask
i(183916);	-- Cracked Tea Cup
i(180521);	-- Creeping Hive Cobweb
i(178122);	-- Crematoric Residue
i(180991);	-- Crimson Ink Well
i(176875);	-- Crooked Horn
i(178173);	-- Crumbling Sandstone
i(183921);	-- Crumpled Napkin
i(183922);	-- Crushed Nut Shells
i(178125);	-- Dancing Metal Slivers
i(183065);	-- Dazzling Zircon Cube
i(182758);	-- Decorative Sinsteel Dagger
i(173875);	-- Defiling Mire
i(182776);	-- Demoltrov's Ritual Dagger
i(176872);	-- Dense Stalk
i(176807);	-- Dented Armorplate
i(180614);	-- Depleted Nethershard
i(178174);	-- Desiccated Core
i(176874);	-- Desiccated Humerus
i(180383);	-- Devil's Dung
i(181727);	-- Devoid Reinforced Flasks
i(182707);	-- Discarded Hand-Wraps
i(180332);	-- Discarded Wingtips
i(182366);	-- Disgusting Ooze
i(180333);	-- Disquieted Lyre Neck
i(180894);	-- Drained Flask
i(184403);	-- Dreamlure Candle
i(175962);	-- Dreamwood Antler
i(178137);	-- Drop of Memory
i(178017);	-- Drusty Molting
i(179296);	-- Duelist's Glove
i(179297);	-- Dust Filled Flask
i(176884);	-- Elongated Spinal Column
i(178104);	-- Ember Ashes
i(180327);	-- Emberflea Collection
i(178136);	-- Emotional Residue
i(180407);	-- Empty Brandy Bottle
i(180408);	-- Empty Brandy Phial
i(182715);	-- Empty Crate
i(179294);	-- Empty Dredwing Skin
i(173878);	-- Empyreal Horn
i(176861);	-- Engorged Venom Sac
i(183945);	-- Enlarged Nerve
i(182763);	-- Enormous Jade Pendant
i(178134);	-- Ephemeral Digits
i(184370);	-- Erratic Sparkshield
i(180622);	-- Essence of Ephemeral Knowledge
i(180343);	-- Everburning Censer
i(184393);	-- Everburning Mange
i(180330);	-- Fading Denathrius Pennant
i(173870);	-- Fading Glimmerdust
i(178123);	-- Fading Lightspawn Ember
i(180624);	-- Faintly Glowing Vellum
i(184077);	-- Famous Sinstone Headers
i(182709);	-- Fancy Half-Leggings
i(180506);	-- Faulty Hookshot
i(180507);	-- Feathered Drake Down
i(178105);	-- Fiery Hell Hound Claws
i(179292);	-- Fine Handkerchief
i(184392);	-- Fizzled Ritual Scroll
i(175957);	-- Fleecy Paw
i(182710);	-- Fluffy Robe
i(180310);	-- Fluttering Stone Wings
i(181730);	-- Forged Oxxein Whetstone
i(181380);	-- Forgehand Tools
i(180345);	-- Forgotten Dream Vial
i(171206);	-- Forgotten Weapon
i(176871);	-- Fortified Antennae
i(182367);	-- Foul Bones
i(184390);	-- Foul Ectoplasm
i(178923);	-- Fractured Rubble
i(176867);	-- Fractured Shackle
i(183926);	-- Frayed Leather Laces
i(184208);	-- Fraying Covenant Belt
i(180384);	-- Gallowsgrass
i(180406);	-- Gargon Treat
i(180328);	-- Ghost Tracks: A Treatise on the Unseen Trails
i(180353);	-- Ghostly Pocket Stone
i(180883);	-- Gleaming Crystal
i(183062);	-- Gleaming Replica of Partannas
i(173360);	-- Glossy Fur
i(181487);	-- Glowberry Bead String
i(179006);	-- Glowing Endmire Dust
i(182733);	-- Gnawed Animacorns
i(178175);	-- Gooey Sap
i(182765);	-- Golden Wren
i(180514);	-- Gorm Bracelet
i(176087);	-- Gorm Chitin
i(183924);	-- Gorm Egg Shells
i(176088);	-- Gormgris
i(181491);	-- Gormgris Lamp
i(180880);	-- Gory Keepsake
i(176881);	-- Grasping Tendril
i(180338);	-- Graven Image
i(180879);	-- Gritty Bone File
i(180512);	-- Guardian's Acorn
i(183049);	-- Guile of the Pack
i(183914);	-- Gummy Napkin
i(183933);	-- Guttered Crypt Candle
i(184567);	-- Hand-Knitted Steward Sweater
i(174322);	-- Harmonious Windchime
i(173871);	-- Harrowed Ichor
i(180510);	-- Hibiscus Tea Bag
i(184391);	-- Hollow Phylactery Shard
i(180307);	-- Horrific Stone Visage
i(182968);	-- Humerus
i(179368);	-- Immutable Shackles
i(184376);	-- Incinerated Arcane Tome
i(179370);	-- Inert Passage Sigil
i(180735);	-- Innert Accolade
i(180518);	-- Ironwood Needle
i(183064);	-- Jewel of Opantriss
i(176860);	-- Keen Incisor
i(183207);	-- Keepsake of the First Conflict
i(184564);	-- Kyrian Music Box
i(184565);	-- Kyrian Wave Simulator
i(181731);	-- Lacquered Larion Fang
i(183929);	-- Laestrite Pocket Gravel
i(173359);	-- Lambent Feather
i(182745);	-- Large Aquamarine Crystal
i(181379);	-- Larionfeather Quill
i(181486);	-- Leafscale Coat
i(176391);	-- Leafy Antenna
i(171346);	-- Letters from the City
i(180517);	-- Lifecrafted Flute
i(180519);	-- Lifeless Branch
i(174999);	-- Long-Forgotten Sinstone
i(177026);	-- Lost Earring
i(183071);	-- Lucky Sinrunner Horseshoe
i(173362);	-- Lustrous Scale
i(176873);	-- Macerated Ribs
i(176887);	-- Malicious Essence
i(180309);	-- Malicious Mandible
i(180881);	-- Mangled Toothpick
i(183204);	-- Manual of Bonebending Methods
i(176862);	-- Marred Skin
i(183203);	-- Massive Oxxein Tankard
i(183110);	-- Mercurial Void
i(181723);	-- Meticulously Pickled Head
i(181515);	-- Miserable Pile of Secrets
i(183935);	-- Modified Death Warrant
i(183925);	-- Mushy Snowplum
i(180346);	-- Nail-Worked Crystalware
i(180329);	-- Naked Morningstar Chain
i(180341);	-- Nathrezim Relic
i(175965);	-- Needlepoint Beak
i(180508);	-- Night Lily's Bell
i(176086);	-- Nightmare Silt
i(175960);	-- Notched Bone
i(178110);	-- Oily Black Feather
i(177027);	-- Old Glove
i(180176);	-- On the Nature of the Divine
i(176730);	-- Orders from the Ancient One
i(180718);	-- Ordinary Crystal
i(180348);	-- Ornate Filigreed Harp
i(182762);	-- Ornately Jeweled Amulet
i(178107);	-- Pallid Sinuous Hide
i(176856);	-- Partially Digested Viscera
i(177025);	-- Partially Eaten Fish
i(184076);	-- Partially Finished Stone Sentry
i(176392);	-- Patterned Wing
i(183072);	-- Perfume Bottles
i(181492);	-- Petrified Faeflower
i(180511);	-- Petrified Leaf
i(183075);	-- Phantasmal Masquerade Guise
i(183205);	-- Plated Horn of Battle
i(176858);	-- Pliable Tail Fin
i(173361);	-- Polished Claw
i(179004);	-- Polished Silver Tithe
i(183048);	-- Power of the Darkhound
i(183209);	-- Prime Enforcer's Seal
i(181728);	-- Pristine Fleshstitcher Needles
i(181725);	-- Prized Guardian's Medal
i(181729);	-- Prototype Phylactery Mold
i(182797);	-- Pugilist Ring Rules
i(179299);	-- Pulled Canine
i(182764);	-- Pulsing Star Amethyst
i(183109);	-- Pulsing Voidscarred Fragment
i(176866);	-- Putrid Sludge
i(182757);	-- Redelav Silver Set
i(182761);	-- Refined Gold Ingot
i(178132);	-- Richly Calligraphed Invitation
i(183073);	-- Royal Sinvyr Cooking Set
i(184207);	-- Rusting Covenant Spaulder
i(177028);	-- Rusty Chain
i(180382);	-- Scaldhead
i(181713);	-- Scorched Letter
i(183915);	-- Scrap of Streamer
i(180884);	-- Scroll of Foul Rites
i(178130);	-- Shapeable Muck
i(184377);	-- Shattered Firestone
i(174104);	-- Shattered Memento
i(184375);	-- Shattered Orbiter Crystal
i(179003);	-- Shattered Quartz Eyes
i(180504);	-- Shimmerbough Recorder
i(183056);	-- Shriekwing by Krentis
i(176879);	-- Silk Spigot
i(175959);	-- Silky Mane
i(179291);	-- Silver Flask
i(182756);	-- Silver Winged Bust
i(180342);	-- Silvered Fang
i(179290);	-- Simple Manacles
i(178126);	-- Sinew-Wrapped Hilt
i(180347);	-- Sinsteel Silverware
i(184553);	-- Sinvyr Shards
i(176870);	-- Skeletal Tusk
i(180476);	-- Sleep Slime
i(180513);	-- Sleepy Toadstool
i(183917);	-- Slime-Stained Bowl
i(176868);	-- Sliver of Entropy
i(176393);	-- Slumber Powder
i(183047);	-- Soul of the Darkhound
i(179369);	-- Spectral Key
i(176853);	-- Spindly Flesh
i(178106);	-- Splintered Fang
i(180334);	-- Splintering Stein
i(183931);	-- Split Arrow Fletching
i(176877);	-- Split Tooth
i(176882);	-- Spotless Skull
i(180516);	-- Spriggan Pipes
i(178116);	-- Squishy Eyeball
i(181489);	-- Star Lake Sonnets
i(178114);	-- Stone Haunch
i(184209);	-- Stoneborn Fragments
i(182718);	-- Stoneborn Messenger Stamp Sheet
i(180331);	-- Stonewright's Chisel
i(175954);	-- Suffused Horn
i(181724);	-- Tactics Vol. 83: Exploitation of Weather
i(183108);	-- Tainted Void-Touched Core
i(178115);	-- Tapping Stone Claw
i(178127);	-- Tattered Scraps of Clothing
i(176859);	-- Tempered Carapace
i(178133);	-- Tendrils of Ectoplasm
i(182775);	-- Teramanik's Gilded Reins
i(183050);	-- The Endmire's Mists
i(183051);	-- The Rushing Tide
i(178103);	-- Tiny Wing
i(179001);	-- Tithe Jar
i(184310);	-- Tod's Sinstone
i(183932);	-- Torn Bet Voucher
i(180623);	-- Torn Rune-Etched Page
i(184562);	-- Tranquility Stone
i(176089);	-- Treesnap Mandible
i(180326);	-- Twisted Parasol
i(179289);	-- Twisted Prayer Beads
i(173874);	-- Twisted Sediment
i(178113);	-- Twitching Stone
i(175955);	-- Umbral Pelt
i(176854);	-- Unbreakable Jawbone
i(184309);	-- Venthyr Inquisitor's Notes
i(184394);	-- Vial of Bleak Blood
i(176863);	-- Virulent Gland
i(179288);	-- Voltive Candles
i(181726);	-- Warfare Vol. 27: Behind Enemy Lines
i(180889);	-- Warped Spectacles
i(182713);	-- Water-Run Letter
i(180475);	-- Webbed Foot
i(180515);	-- Weird Egg
i(178131);	-- Whetstone Talon File
i(181490);	-- Wild Godrune
i(182711);	-- Winner Caller's Warbler
i(176885);	-- Wisp of Extinction
i(178135);	-- Wisp of Life
i(180344);	-- Wisps of Nightmares
i(180174);	-- Witherfall Varietals for the Discriminating Palate
i(182708);	-- Wood Carved Chomper Protector
i(178108);	-- Wool of Dredbat
i(180885);	-- Worn Rune-Adorned Pouch
--- Common ---
i(178149);	-- Centurion Anima Core
i(181394);	-- Empty Plague Bottle
i(183718);	-- Extra Gooey Gorm Gunk
i(180226);	-- Game Rulebook
i(184163);	-- Gilded Slime
i(180224);	-- Gubbins's Lost Diary
i(180220);	-- Historical Treatise
i(180227);	-- Horror Novel
i(180173);	-- House Grinchin Ring
i(183822);	-- Icecrown Survival Kit
i(180221);	-- Joke Book
i(180052);	-- Left Gem Eye
i(184485);	-- Mawforged Key
i(181558);	-- Missing Ritual Pages
i(180222);	-- Mortal Recipe Book
i(180225);	-- Murder Mystery
i(180168);	-- Oribobber
i(180053);	-- Right Gem Eye
i(180219);	-- Romance Novel
i(180228);	-- Self-Help Book
i(179308);	-- Shadeskin Brandy Phial
i(183799);	-- Shifting Catalyst
i(180223);	-- Sinstone Archival Records
i(180318);	-- Soulful Mana Potion
i(178150);	-- Tasty Purian
i(184759);	-- Tasty Purian
i(180229);	-- Tubbins's Autobiography
--- Uncommon ---
i(171209);	-- Blooded Satchel
i(180715);	-- Bottled Wrath
i(178124);	-- Dancing Motes of Light
i(179293);	-- Glimmering Facial Cream
i(180009);	-- Resonating Anima Mote
i(180410);	-- Simmiring Draft of Shadows
i(179295);	-- Squeaky Bat
i(180709);	-- Tempered Armor Patch
i(178602);	-- Thorny Loop
i(182198);	-- Undulating Blood Burrower
--- Rare ---
i(182200);	-- Engorged Blood Burrower
i(180170);	-- Pulsing Animacone
i(180008);	-- Resonating Anima Core
--- Queens Conservatory ---
i(180979);	-- Artisan's Large Satchel
i(180976);	-- Artisan's Satchel
i(180983);	-- Artisan's Stuffed Satchel
i(180980);	-- Journeyman's Large Satchel
i(180988);	-- Journeyman's Overflowing Satchel
i(180975);	-- Journeyman's Satchel
i(180984);	-- Journeyman's Stuffed Satchel
i(180981);	-- Novice's Large Satchel
i(180989);	-- Novice's Overflowing Satchel
i(180974);	-- Novice's Satchel
i(180985);	-- Novice's Stuffed Satchel
--- Ember Court ---
i(181341);	-- Alexandros Mograine
i(181248);	-- Ancient Sinstone
i(180485);	-- Ansel's Lucky Violin
i(178886);	-- Baroness Vashj
i(181362);	-- Blob of Slime
i(180486);	-- Chiu's Lute
i(178888);	-- Choofa
i(181364);	-- Cluster of Seeds
i(181361);	-- Court Gossip
i(178889);	-- Cryptkeeper Kassir
i(181344);	-- Droman Aliothe
i(181454);	-- Duskmire Ruse
i(181369);	-- Giant Lungcap
i(181342);	-- Hunt-Captain Korayn
i(181346);	-- Kleia and Pelagos
i(181338);	-- Lady Moonberry
i(182212);	-- Magical Curio
i(180484);	-- Noko's Flute
i(181347);	-- Plague Deviser Marileth
i(178887);	-- Polemarch Adrestes
i(181343);	-- Rendle and Cudgelface
i(181348);	-- Sika
i(182186);	-- Stolen Memento
i(181349);	-- Stonehead
i(181715);	-- Temel's Certificate of Completion
i(181340);	-- The Countess
i(180470);	-- Wild Fungus
--- Anima ---
i(184147);	-- Agony Enrichment Device
i(181540);	-- Animaflower Bud
i(181477);	-- Ardendew Pearl
i(184381);	-- Astral Sapwood
i(184773);	-- Battle-Tested Armor Component
i(181545);	-- Bloodbound Globule
i(184150);	-- Bonded Tallow Candles
i(184152);	-- Bottle of Diluted Anima-Wine
i(183723);	-- Brimming Anima Orb
i(181646);	-- Bound Failsafe Phylactery
i(184374);	-- Cartel Exchange Vessel
i(181541);	-- Celestial Acorn
i(184768);	-- Censer of Dried Gracepetals
i(181368);	-- Centurion Power Core
i(184766);	-- Chronicles of the Paragons
i(181552);	-- Collected Tithe
i(184764);	-- Colossus Actuator
i(184148);	-- Concealed Sinvyr Flask
i(181544);	-- Confessions of Misdeed
i(184363);	-- Considerations on Courage
i(181478);	-- Cornucopia of the Winter Court
i(184151);	-- Counterfeit Ruby Brooch
i(181548);	-- Darkhaven Soul Lantern
i(181551);	-- Depleted Stoneborn Heart
i(184383);	-- Duskfall Tuber
i(181645);	-- Engorged Monstrosity's Heart
i(184294);	-- Ethereal Ambrosia
i(184286);	-- Extinguished Soul Anima
i(184378);	-- Faeweald Amber
i(181744);	-- Forgelite Ember
i(181745);	-- Forgesmith's Coal
i(184385);	-- Fossilized Heartwood
i(184777);	-- Gravedredger's Shovel
i(184767);	-- Handheld Soul Mirror
i(184384);	-- Hibernal Sproutling
i(181550);	-- Hopebreaker's Field Injector
i(181377);	-- Illustrated Combat Meditation Aid
i(184774);	-- Juvenile Sporespindle
i(184382);	-- Luminous Sylberry
i(184307);	-- Maldraxxi Armor Scraps
i(184305);	-- Maldraxxi Champion's Armaments
i(181546);	-- Mature Cryptbloom
i(184387);	-- Misty Shimmerleaf
i(184763);	-- Mnemis Neural Network
i(184315);	-- Multi-Modal Anima Container
i(184360);	-- Musings on Repetition
i(184386);	-- Nascent Sporepod
i(184775);	-- Necromancy for the Practical Ritualist
i(181547);	-- Noble's Draught
i(181642);	-- Novice Principles of Plaguistry
i(181743);	-- Plume of the Archon
i(184388);	-- Plump Glitterroot
i(181649);	-- Preserved Preternatural Braincase
i(184769);	-- Pressed Torchlily Blossom
i(184379);	-- Queen's Frozen Tear
i(184362);	-- Reflections on Purity
i(184771);	-- Remembrance Parchment Ash
i(183727);	-- Resonance of Conflict
i(184772);	-- Ritual Maldracite Crystal
i(184770);	-- Roster of the Forgotten
i(184293);	-- Sanctified Skylight Leaf
i(184146);	-- Singed Soul Shackles
i(184389);	-- Slumbering Starseed
i(184373);	-- Small Anima Globe
i(184306);	-- Soulcatching Sludge
i(181650);	-- Spellwarded Dissertation
i(181647);	-- Stabilized Plague Strain
i(184380);	-- Starblossom Nectar
i(181479);	-- Starlight Catcher
i(184519);	-- Totem of Stolen Mojo
i(181644);	-- Unlabeled Culture Jars
i(184776);	-- Urn of Arena Soil
i(184765);	-- Vesper Strikehammer
i(184371);	-- Vivacity of Collaboration
i(181643);	-- Weeping Corpseshroom
i(184149);	-- Widowbloom-Infused Fragrance
i(181648);	-- Ziggurat Focusing Crystal

-----------------
-- PATCH 9.0.5 --
-----------------
--- Ember Court ---
i(185684);	-- Lord Garridan's Egg
i(185683);	-- Prince Renathal's Egg
i(185682);	-- Temel's Egg
i(185681);	-- Theotar's Egg
--- Trash ---
i(184845);	-- Bloodstained Spectacles

-----------------
-- PATCH 9.1.0 --
-----------------
--- Vendor (Common) ---
i(185933);	-- Cheap Spices
i(185936);	-- Common Drum
i(185934);	-- Cracked Warhammer
i(185932);	-- Damaged Flask
i(185909);	-- Dull Opal
i(185935);	-- Dusty Skull
i(185937);	-- Stale Bread
i(185910);	-- Star Lantern
i(185938);	-- Threadbare Cloth
i(185939);	-- Worn Journal
--- Vendor (Poor) ---
i(187193);	-- Autographed Stuffed Seagull
i(187211);	-- Chronicle of Cartel Al
i(187188);	-- D'roo's Bottomless Gulper
i(187197);	-- D'roo's Haunted Drumset
i(187196);	-- Endless Arcade Token
i(187190);	-- Floral Print Button Down
i(187195);	-- Golden Sax
i(187212);	-- Hyperlight Moccasins
i(187189);	-- Hyperlight Multitool
i(187213);	-- Jo's Intergalactic Cache
i(187594);	-- P'ugh's Almanac
i(187199);	-- Pa'hix's Runepuzzle
i(187194);	-- Star in a Jar
i(187192);	-- Urn of Knowledge
i(187191);	-- Vi'ller's Preserved Eye
i(187198);	-- Xy'le Date
--- Trash ---
i(187338);	-- Alabaster Feather
i(187487);	-- Ancient Relic Expositor
i(187479);	-- Bark Strip Bedding
i(187483);	-- Blood-Tipped Razorwing Quill
i(187470);	-- Broken Mutilator Chain
i(187408);	-- Cartel Purchase Order
i(186660);	-- Charger's Armor Spikes
i(187477);	-- Chewed Mawsworn Orders
i(187449);	-- Chipped Razorwing Fang
i(187453);	-- Coiled Black Chain
i(185483);	-- Cranial Disk
i(187456);	-- Crucible of Soulforge Metal
i(187444);	-- Crushed Mawshrooms
i(185739);	-- Crystaline Shard
i(187464);	-- Crystallized Soul Dust
i(185478);	-- Dagger-Length Talons
i(187355);	-- Devourer Femur
i(185968);	-- Duplicate Rune Chit
i(187358);	-- Dusty Meditation Crystal
i(187554);	-- Elethium Chips
i(187488);	-- Emptied Inkwell
i(187480);	-- Energy-Singed Branch
i(187498);	-- Extravagantly Embroidered Pouch
i(185476);	-- Flowing Ridge Spikes
i(187484);	-- Gilded Korthian Decoration
i(186703);	-- Gold Chalice
i(187495);	-- Golden Filigree Brush
i(187445);	-- Inert Spell Scroll
i(187481);	-- Intact Razorwing Ribcage
i(187555);	-- Irredeemable Trash
i(185477);	-- Irridescent Eye
i(187471);	-- Large Shardhide Tooth
i(185481);	-- Long Fibrous Tongue
i(187491);	-- Mawshroom Cap
i(187490);	-- Mawshroom Fungi
i(187492);	-- Mawshroom Stem
i(187469);	-- Mawsworn Javelin Heads
i(187441);	-- Mawsworn Val'kyr Feather
i(186677);	-- Metallic Socket
i(187472);	-- Molted Razorwing Scale
i(187553);	-- Orboreal Carvings
i(187180);	-- Pitted Diaphanous Wing
i(187486);	-- Prismatic Glass Pyramids
i(187493);	-- Pungent Mawshroom Residue
i(185969);	-- Rune-Etched Stone
i(187474);	-- Scratched Mawsworn Buckle
i(187473);	-- Severed Gromit Limb
i(187468);	-- Shadehound Tack
i(187550);	-- Shadowsteel Shavings
i(187475);	-- Shardhide Spine-Fin
i(187446);	-- Shredded Documents
i(187482);	-- Shredded Mawsworn Tunic
i(185479);	-- Sinuous Wing Membrane
i(187448);	-- Sloughed Shardhide Scales
i(185737);	-- Small Chain Links
i(187356);	-- Small Gromit Bones
i(185482);	-- Socketed Crest
i(187454);	-- Spare Weapon Chains
i(187443);	-- Specimen Jar Cork
i(187489);	-- Specimen Jar Glass
i(187455);	-- Spiked Manacles
i(185970);	-- Splintered Crystal Fragments
i(186661);	-- Splintered Horseshoe
i(187357);	-- Squished Mawshroom
i(187485);	-- Stone Teleporter Parts
i(187348);	-- Tattered Scroll
i(187451);	-- Torture Device Parts
i(187452);	-- Vacant Soul Vessel
i(187450);	-- Vial of Spectral Tears
i(185480);	-- Vibrantly Colored Crest
i(187461);	-- Warped Branding Rod
i(187476);	-- Weathered Journal
--- Common ---
i(187343);	-- Condensed Offering Sphere
i(185947);	-- Draught of Leeching Strikes
i(185951);	-- Draught of Spiked Skin
i(185950);	-- Draught of Temporal Rush
i(187418);	-- Evolving Mawshroom
i(185946);	-- Long Tail Dynarats
i(187407);	-- Satchel of Security
i(187236);	-- Zovaal's Dark Carafe
--- Uncommon ---
i(187533);	-- Greater Phial of Serenity
--- Rare ---
i(186189);	-- Cache of Armaments
i(187220);	-- Coalesced Power
--- Epic ---
i(185615);	-- Recovered Phantasma
--- Anima ---
i(186201);	-- Ancient Anima Vessel
i(186204);	-- Anima-Stained Glass Shards
i(187349);	-- Anima Laden Egg
i(187517);	-- Animaswell Prism
i(187347);	-- Concentrated Anima
i(186200);	-- Infused Dendrite
i(187175);	-- Runekeeper's Ingot
i(186205);	-- Scholarly Attendant's Bangle
i(186206);	-- Vault Emberstone
i(186202);	-- Wafting Koricone
--- Shard ---
i(187293);	-- Desolate Shard of Bek
i(187296);	-- Desolate Shard of Cor
i(187299);	-- Desolate Shard of Dyz
i(187294);	-- Desolate Shard of Jas
i(187297);	-- Desolate Shard of Kyr
i(187300);	-- Desolate Shard of Oth
i(187295);	-- Desolate Shard of Rev
i(187298);	-- Desolate Shard of Tel
i(187301);	-- Desolate Shard of Zed
i(187302);	-- Foreboding Shard of Bek
i(187305);	-- Foreboding Shard of Cor
i(187308);	-- Foreboding Shard of Dyz
i(187303);	-- Foreboding Shard of Jas
i(187306);	-- Foreboding Shard of Kyr
i(187309);	-- Foreboding Shard of Oth
i(187304);	-- Foreboding Shard of Rev
i(187307);	-- Foreboding Shard of Tel
i(187310);	-- Foreboding Shard of Zed
i(187284);	-- Ominous Shard of Bek
i(187287);	-- Ominous Shard of Cor
i(187290);	-- Ominous Shard of Dyz
i(187285);	-- Ominous Shard of Jas
i(187288);	-- Ominous Shard of Kyr
i(187291);	-- Ominous Shard of Oth
i(187286);	-- Ominous Shard of Rev
i(187289);	-- Ominous Shard of Tel
i(187292);	-- Ominous Shard of Zed
i(187312);	-- Portentous Shard of Bek
i(187315);	-- Portentous Shard of Cor
i(187318);	-- Portentous Shard of Dyz
i(187313);	-- Portentous Shard of Jas
i(187316);	-- Portentous Shard of Kyr
i(187319);	-- Portentous Shard of Oth
i(187314);	-- Portentous Shard of Rev
i(187317);	-- Portentous Shard of Tel
i(187320);	-- Portentous Shard of Zed
i(187057);	-- Shard of Bek
i(187063);	-- Shard of Cor
i(187073);	-- Shard of Dyz
i(187059);	-- Shard of Jas
i(187065);	-- Shard of Kyr
i(187076);	-- Shard of Oth
i(187061);	-- Shard of Rev
i(187071);	-- Shard of Tel
i(187079);	-- Shard of Zed

-----------------
-- PATCH 9.1.5 --
-----------------
i(187786);	-- Timeworn Keystone
--- Vendor (Common) ---
i(187911);	-- Sable "Soup"

-----------------
-- PATCH 9.2.0 --
-----------------
--- Vendor (Common) ---
i(190881);	-- Circle of Subsistence
i(187712);	-- Precursor Placoderm Bait
i(190936);	-- Restorative Flow
--- Trash ---
i(188835);	-- Acridic Acid Bubble
i(188792);	-- Armored Frame
i(187711);	-- Broker Bits
i(188789);	-- Bufonid Throat Guard
i(188794);	-- Captured Light
i(188811);	-- Celestial Salt Crystal
i(188791);	-- Conical Borer
i(188947);	-- Constellation-Inscribed Palm
i(188827);	-- Cosmic Goo
i(188685);	-- Cyclical Spinning Rune
i(188779);	-- Energy-Bathed Horn
i(188672);	-- Fractured Heat Emitter
i(188948);	-- Gleaming Wing
i(189571);	-- Golden Saber Hilt
i(188684);	-- Illustrious Visor
i(190235);	-- Inert Cracked Carapace
i(188760);	-- Inert Engimatic Crown
i(187842);	-- Inert Progenium Ore
i(188671);	-- Large Gilded Ring
i(188795);	-- Majestic Mane
i(188670);	-- Molded Minerals
i(188682);	-- Mystically Sculpted Sphere
i(188669);	-- Obsidian Core
i(188836);	-- Polygonal Avian Beak
i(190236);	-- Proto Scale Fragment
i(188762);	-- Resonant Bar
i(188683);	-- Roiling Glyph
i(188681);	-- Sleek Optical Lens
i(188834);	-- Spectral Lupine Tooth
i(188790);	-- Subdivided Orb
i(190382);	-- Warped Pocket Dimension
i(188946);	-- Weave of Light
--- Common ---
i(190738);	-- Bouncing Bufonids
i(185920);	-- Cartel Al Incident Report
i(188523);	-- Energizing Leporid
i(185927);	-- Expedition Report A37J - Foreword
i(185928);	-- Expedition Report A37J - Part 1
i(185929);	-- Expedition Report A37J - Part 2
i(185930);	-- Expedition Report A37J - Part 3
i(185931);	-- Expedition Report A37J - Part 4
i(188761);	-- Happy Fun Sphere
i(189768);	-- Jiro Hammer
i(189767);	-- Roaming Repair Tool
--- Anima ---
i(189864);	-- Anima Gossamer
i(189865);	-- Anima Matrix
i(189544);	-- Anima Webbing

-----------------
-- PATCH 9.2.5 --
-----------------
i(191734);	-- Motion Sick Peon's Magical Elixir

------------------
-- PATCH 10.0.2 --
------------------
--- Vendor (Poor) ---
i(198440);	-- Discounted Meat
i(200622);	-- Focusing Incense
i(200620);	-- Inflaming Incense
i(200621);	-- Soothing Incense
i(200639);	-- Talisman of Ohn'ahra
i(200637);	-- Talisman of the Maruuk
i(200623);	-- Wind-Grown Grass
--- Vendor (Common) ---
i(194884);	-- Annoy-o-Tron Gang
i(193499);	-- Blacktalon Wingpack
i(194679);	-- BOOM-O-MATIC 90000
i(201427);	-- Fleeting Sands
i(194890);	-- GG-117 Micro-Jetpack
i(198452);	-- Prototype F
i(201428);	-- Quicksilver Sands
i(194696);	-- Recycled Crawler Mine
i(194887);	-- Scrap Trap
i(194961);	-- Stolen Rocket Hop
i(201436);	-- Temporally-Locked Sands
i(198453);	-- Unstable Azerite Grenade
i(201438);	-- Weary Sands
i(198486);	-- Windscale Rider
i(194889);	-- XD-57 "Bullseye" Guided Rocket Kit
--- Consumables Character Created ---
i(198832);	-- Conjured Blubbery Muffin
i(198833);	-- Conjured Celebratory Cake
i(198831);	-- Conjured Snow in a Cone
i(198830);	-- Conjured Tasty Hatchling's Treat
--- Dragon Isle Supplies Items ---
i(200697);	-- Blightshroom
i(200554);	-- Dropcap Head
i(200685);	-- Enchanted Compass
i(200929);	-- Everglow Nectar
i(200692);	-- Gift of the Grove
i(200221);	-- Gorloc Crystals
i(200704);	-- Gratona Seed
i(200589);	-- Hydro Life Seed
i(200698);	-- Ley Orb
i(200702);	-- Magenta Titian Extract
i(200553);	-- Panthis Nectar
i(200705);	-- Thaldraszus Root
i(200701);	-- Titian Extract
i(200696);	-- Winter Berries
--- Profession	---
i(201926);	-- Crushing
i(200647);	-- Crystalline Shatter
i(192182);	-- Decay to Elements
i(200648);	-- Elemental Shatter
i(194537);	-- Fiddle with Draconium Fabric Cutters
i(194538);	-- Fiddle with Khaz'gorite Fabric Cutters
i(198390);	-- Milling
i(192181);	-- Order to Elements
i(194709);	-- Prospecting
i(194973);	-- Reclaim Concoctions
i(200635);	-- Refine Dragon Isles Herbs
i(198424);	-- Refine Dragon Isles Hides
i(198425);	-- Refine Dragon Isles Leather
i(198426);	-- Refine Dragon Isles Scales
--- Trash ---
i(200823);	-- 300x Magnifying Glass
i(200770);	-- A Brief History of Azeroth
i(193389);	-- Adamantine Core
i(200783);	-- Adorned Ohunan Jess
i(192644);	-- Aeriform Speck
i(201210);	-- Albino Feather
i(200804);	-- Ancestor's Scales
i(192608);	-- Ancient Resin
i(201220);	-- Ancient Tool
i(192717);	-- Animated Splinter
i(192646);	-- Aqueous Speck
i(193450);	-- Arakkoa Doll
i(201824);	-- Arcane Fluid
i(200836);	-- Arcane-Infused Crystals
i(200785);	-- Argali Wool Rug
i(200813);	-- Assorted Fractals
i(200768);	-- Assorted Salamanther Lures
i(201967);	-- Autographed Skull
i(200817);	-- Azure Splinters
i(201191);	-- Back Scratcher
i(200766);	-- Bakar Fangs
i(192685);	-- Battle-Hardened Fang
i(201198);	-- Beaded Bracelet
i(192610);	-- Beady Woodland Eye
i(200789);	-- Beckoning Kite
i(200782);	-- Bejeweled Horseshoes
i(201226);	-- Big Rock
i(201180);	-- Bone Necklace
i(201205);	-- Bone Toothpick
i(200798);	-- Bottled Diseased Parasites
i(192611);	-- Bottled Torrent
i(200791);	-- Braided Ottuk Hair Fishing Line
i(192747);	-- Broken Branch
i(201165);	-- Burnished Bauble
i(200533);	-- Bygone Idol
i(200834);	-- Can You Smell It?
i(200821);	-- Celsius 232
i(200769);	-- Ceramic Shards
i(192686);	-- Charred Carapace
i(192655);	-- Chilling Spider Leg
i(200811);	-- Congealed Sap Droplet
i(200814);	-- Congealing Shard
i(200774);	-- Contained Void Sample
i(200248);	-- Cooked Book
i(194721);	-- Cracked Hourglass
i(192624);	-- Cracked Scales
i(201178);	-- Cracked Skull
i(192769);	-- Cracked Spear
i(192688);	-- Cracked Stone Bracers
i(201216);	-- Crumbled Elemental Spark
i(193384);	-- Crumbling Bone
i(194083);	-- Crushed Stone
i(192746);	-- Curio of Yore
i(192651);	-- Damaged Core
i(200532);	-- Damaged Qiraji Ring
i(200799);	-- Decaying Pelt Bolt
i(193385);	-- Decaying Resin
i(201188);	-- Deceased Critter
i(200848);	-- Decorative Bouquet
i(200793);	-- Decorative Sail
i(200451);	-- Deep Sea Star
i(193420);	-- Depleted Mana Stone
i(200815);	-- Deposited
i(192652);	-- Discharged Thunderscale
i(200780);	-- Dragon Horns
i(192613);	-- Dragon Tooth
i(201193);	-- Dragon Tooth Shank
i(201197);	-- Dream Journal
i(200850);	-- Dream-Infused Seed
i(195359);	-- Dry Snapper Meat
i(200820);	-- Dry Wood Log
i(192687);	-- Duck Bill
i(192689);	-- Eagle Eye
i(192614);	-- Elemental Ooze
i(201467);	-- Emerald Bloom
i(193849);	-- Emptied Satchel
i(201195);	-- Empty Herb Pouch
i(200840);	-- Encyclopaedia Draeconica Set
i(200767);	-- Energized Crystal
i(201968);	-- Enormous Grain of Salt
i(200818);	-- Eternal Flame
i(192691);	-- Eternal Ice Stalactite
i(194036);	-- Exquisite Necklace
i(192692);	-- Faerie Dust
i(200805);	-- Fallen Watcher Remains
i(192693);	-- First Heads Horn
i(192653);	-- Floppy Molten Ear
i(192697);	-- Fluffy Ear
i(200800);	-- Fool's Gold
i(200794);	-- Fresh Critter Carcass
i(201206);	-- Fresh Meat Lump
i(192089);	-- Fresh Vorquin Carcass
i(192700);	-- Frozen Dorsal Spike
i(192701);	-- Frozen Eye
i(192616);	-- Fung Eye
i(200832);	-- Geode Splinters
i(192654);	-- Giant Stone Eye
i(192702);	-- Giant's Heart
i(194038);	-- Gilded Blade
i(200801);	-- Gilded Statuette
i(194035);	-- Glittering Diamonds
i(192707);	-- Gnawing Incisors
i(194071);	-- Gold Ring
i(201190);	-- Goo Filled Flask
i(192656);	-- Half-Digested Fish
i(201227);	-- Half-Eaten Stone
i(201228);	-- Handful of Gravel
i(192657);	-- Hardy Cloven Hoof
i(193438);	-- Harrowing Osteal
i(201185);	-- Hidden Blade
i(192703);	-- Hide-Piercing Horn
i(192617);	-- Hound Paw
i(200853);	-- How to Grow a Tree in 10 Days
i(192704);	-- Huge Flat Tooth
i(200784);	-- Hunting Trophies
i(192618);	-- Ice Chunks
i(200776);	-- Igneous Rock Sculpture
i(192705);	-- Imposing Tusk
i(192659);	-- Impressive Mandible
i(192619);	-- Impressive Tail Fin
i(200838);	-- Insignia of the Kirin Tor
i(200830);	-- Instantly Drying Clay
i(200822);	-- Jar of Ashes
i(200772);	-- Knowledge Discs
i(201170);	-- Knucklebones
i(201192);	-- Large Dragonbone Dice
i(192620);	-- Large Tail Spikes
i(200778);	-- Lava Blowing for Dummies
i(200779);	-- Lava Jars
i(192621);	-- Long-Toed Talon
i(192708);	-- Magnificent Antler
i(200788);	-- Mantacorn Horns
i(200786);	-- Marbled Broadhoof Brisket
i(192622);	-- Massive Beast Eye
i(192660);	-- Massive Hydra Claw
i(192623);	-- Massive Proto-Dragon Claw
i(192709);	-- Membranous Wing
i(192714);	-- Mgrrrl
i(200841);	-- Miniature Prismatic Disc
i(192695);	-- Molten Mandible
i(201466);	-- Mote of Dreams
i(192625);	-- Motionless Stone
i(192626);	-- Mound of Dust
i(200105);	-- Muck Covered Flotsam
i(193410);	-- Nauseating Stinger
i(192710);	-- Nearly Unbreakable Horn
i(201209);	-- Nibbled Fish Head
i(200852);	-- Nourishing Fertilizer
i(192627);	-- Obsidian Clump
i(192645);	-- Obsidian Nugget
i(200777);	-- Obsidian Shards
i(192711);	-- Oily Liver
i(200831);	-- Opalescent Figure
i(200773);	-- Otherworldly Artifact
i(192712);	-- Otherworldly Essence
i(201203);	-- Painted Gnoll Band
i(201219);	-- Parchment Cards
i(200816);	-- Partially Damp Measuring Stick
i(201171);	-- Perfectly Round Stone
i(192713);	-- Pharyngeal Jaw
i(192628);	-- Phoenix Ash
i(192715);	-- Phoenix Stone
i(201163);	-- Piece of Dragonkin Eggshell
i(200828);	-- Pocketed Clouds
i(200842);	-- Power-Depleted Staff
i(192661);	-- Prehistoric Fin
i(192716);	-- Prehistoric Sediment
i(201196);	-- Pretty Flower
i(192629);	-- Primal Beast Claw
i(192648);	-- Pristine Beast Fur
i(200771);	-- Projected Starmap
i(201194);	-- Pumice Hand Chalk
i(200790);	-- Pungent Soup Spices
i(192662);	-- Pyretic Speck
i(192706);	-- Razor Quill
i(200765);	-- Reed Sculpture
i(192630);	-- Reef Carapace
i(200781);	-- Rejuvenating Ashes
i(192605);	-- Reptilian Fang
i(200797);	-- Repulsive Perfume
i(192718);	-- Rock-Hard Eggshell
i(192650);	-- Roomy Shell
i(201186);	-- Rope Bonds
i(200796);	-- Rotting Wood Totem
i(200808);	-- Runestone Shards
i(200835);	-- Sand Pouch
i(192719);	-- Scaled Toes
i(192631);	-- Scale-Piercing Fang
i(192663);	-- Scaly Wing
i(195360);	-- Scorched Snapper Meat
i(201208);	-- Seer's Crystal
i(200775);	-- Self-Luminous Orb
i(200851);	-- Self-Trimming Bonsai
i(192690);	-- Serrated Limb
i(192664);	-- Serrated Pincer
i(201182);	-- Serrated Stone
i(192666);	-- Severed Roots
i(200843);	-- Severely Chipped Broadsword
i(202107);	-- Shadowscrawled Coin
i(192632);	-- Sharp Bird Talon
i(199206);	-- Shattered Adamant Scales
i(201207);	-- Shells in a Conch
i(201162);	-- Shiny Metal Scraps
i(200795);	-- Sickly Egg Sacs
i(200802);	-- Signet of the Dragonflights
i(199476);	-- Singed Cloth Scraps
i(192669);	-- Sizeable Feather
i(192720);	-- Slender Twisting Horn
i(192683);	-- Slimy Frog Eggs
i(200106);	-- Slimy Old Boot
i(200764);	-- Slimy Shinies
i(201221);	-- Small Titan Mechanism
i(192634);	-- Smashed Metal Scraps
i(201222);	-- Smooth Seashell
i(193860);	-- Snapped Wand
i(200837);	-- So You Think You Can Rune?
i(193387);	-- Solar Battery
i(201184);	-- Spare Bow String
i(201729);	-- Spiked Horseshoe
i(192670);	-- Splendid Feather
i(201199);	-- Splendid Feather Necklace
i(192721);	-- Splendid Horn
i(192722);	-- Splendid Whiskers
i(192723);	-- Springy Tongue
i(201202);	-- Squirrel Tail
i(202065);	-- Static Sand
i(201970);	-- Stolen Illidari Blindfold
i(201167);	-- Stone Calendar
i(200826);	-- Stored Humid Air
i(200787);	-- Strong Exotic Spices
i(192671);	-- Sublime Flower
i(192609);	-- Swim Bladder
i(192672);	-- Tattered Proto-Wing
i(200792);	-- Taxidermied Catch
i(194886);	-- Tazenrath's Torn Wing
i(200849);	-- Tear of the Dreamer
i(192647);	-- Terrene Speck
i(192724);	-- Terrifying Teeth
i(192725);	-- Thin Blubber
i(201969);	-- Threatening Note
i(201971);	-- Threatening Note
i(200803);	-- Through the Stained-Glass
i(192726);	-- Thunderhorn
i(192727);	-- Timeless Horns
i(193391);	-- Time-Worn Fang
i(201164);	-- Titan Runestone
i(200833);	-- Titan Watcher Replica
i(201204);	-- Tooth Bracelet
i(192665);	-- Torn Dragon Wing
i(192673);	-- Torn Ear
i(199204);	-- Torn Resilient Leather Scraps
i(200809);	-- Trinket-Packed Collar
i(192728);	-- Undamaged Silk Gland
i(192729);	-- Unhinged Mandible
i(192674);	-- Unknown Titan Mechanism
i(200812);	-- Unmelting Crystalline Structure
i(192730);	-- Unstable Arcane Essence
i(201168);	-- Untainted Scales
i(201424);	-- Unusable Plant Matter
i(192731);	-- Venomous Fang
i(201468);	-- Verdant Swirl
i(200819);	-- Volatile Sparks
i(192635);	-- Warped Metal
i(200827);	-- Weathered Sculpture
i(192675);	-- Winglet
i(200806);	-- Woodcarving Stone
i(201177);	-- Wooden Eagle Statue
i(200810);	-- Wooden Stonegrabber Figurine
i(200807);	-- Wooden Ursine Figure
i(200531);	-- Worn Chitin Fragment
--- Common ---
i(191850);	-- Broken Severite Blade Tip
i(198688);	-- Catnip Leaf
i(191851);	-- Dull Draconium Weapon Head
i(201091);	-- Sharp Tooth
--- Rare ---
i(202033);	-- Slippery Salmon
i(202063);	-- Flopping Tilapia
i(202108);	-- Bouncing Bass
--- Anima ---
i(202034);	-- Flame of Remembrance

------------------
-- PATCH 10.0.5 --
------------------
--- Profession White Items ---
i(5956);	-- Blacksmith Hammer
i(85663);	-- Herbalist's Spade
i(2901);	-- Mining Pick
i(7005);	-- Skinning Knife
--- Vendor ---
i(203478);	-- Field Deployable Heat Source

------------------
-- PATCH 10.0.7 --
------------------
--- Trash ---
i(205241);	-- Bone Necklace
i(204442);	-- Clump of Tar
i(204234);	-- Dead Worms
i(200846);	-- Fletching-less Arrows
i(205239);	-- Fluffy Ear
i(201173);	-- Handful of Teeth
i(205235);	-- Hound Paw
i(205236);	-- Long-Toed Talon
i(205237);	-- Pristine Beast Fur
i(205238);	-- Rain-soaked Feather
i(205244);	-- Rain-soaked pelt
i(205242);	-- Serrated Stone
i(192668);	-- Short Rib
i(205243);	-- Spare Bow String
i(204308);	-- Sturdy Bone
i(204873);	-- Tied-up Envelope
i(203988);	-- Warshard of the Hakkari, Unborn
i(203989);	-- Warshard of the Hakkari, Unborn
i(205240);	-- Wooden Eagle Statue
--- Common ---
i(204237);	-- Clockwork Azshara
i(204235);	-- Kaldorei Fruitcake

------------------
-- PATCH 10.1.0 --
------------------
-- Quest Items --
i(202180);	-- Pipsee Cheese Snack
i(202619);	-- Mender Supplies
i(202620);	-- Toxin Antidote
i(202647);	-- Stolen Goods
i(202868);	-- Mender's Signal
i(202873);	-- Drooping Mushroom Cutting
i(203012);	-- Viridian Heartcrystal
i(203385);	-- Flamesight Rune
i(203393);	-- Spongy Loamshroom
i(203394);	-- Elementally Charged Orb
i(203396);	-- Displayed Armor Piece
i(203442);	-- Snail Slime
i(203453);	-- Dragonbone Totem
i(203454);	-- Zaqali Equipment
i(203455);	-- Draketooth Fetish
i(203456);	-- Obsidian Prayer Beads
i(203457);	-- Volcanic Herb Sachet
i(203458);	-- Black Dragonscale Robes
i(203653);	-- Vacant Elemental Core
i(203654);	-- Zaqali Flame Totem
i(204067);	-- Glowing Crystal
i(204069);	-- Sulfuric Crystal
i(204070);	-- Magma Crystal
i(204085);	-- Zaqali Dragonslayer's Spear
i(204088);	-- Quartzite Spore Bile
i(204273);	-- Stolen Supplies
i(204433);	-- Everburning Fireshard
i(204435);	-- Obsidian Tablet
i(204437);	-- Drakeforged Armaments
i(204694);	-- Greater Flamesight Rune
i(204713);	-- Sundered Flame Expedition Notes
i(204792);	-- Nightlight Conkerbell Sample
i(204801);	-- Gelcap Spores
i(204803);	-- Echoed Lurker Flesh
i(204817);	-- Underlight Cocoon Fibers
i(205169);	-- Glimmer Mushroom
i(205179);	-- Glimmerfish Scale
i(205217);	-- Sharpbeak's Feed
--- Trash ---
i(201166);	-- Gilded Hilt
i(200107);	-- Tarnished Engagement Ring
i(204580);	-- Abnormal Brain
i(205457);	-- Delicate Crystal Shell
i(205459);	-- Luminous Gloop
i(205460);	-- Pulverized Living Earth
i(205461);	-- Vicious Stoneclaw
i(205462);	-- Royal Nerubian Capsa
i(205464);	-- Granite Scales
i(205465);	-- Gleaming Rock Viper Eye
i(205466);	-- Regurgitated Spores
i(205467);	-- Preserved Krolusk Crest
i(205468);	-- Hooked Tail Claw
i(205469);	-- Serrated Sporebat Spine
i(205470);	-- Torn Deep Scales
i(205471);	-- Slimy Deepsea Fin
i(205472);	-- Wad of Sparkling Somethings
i(205695);	-- Dense Salamanther Skull
i(205697);	-- Gelatinous Egg Mass
i(205698);	-- Mangled Niffen Pack
i(205699);	-- Rock Worm Frills
i(205700);	-- Sensitive Scotopic Eye
i(205866);	-- Rough Coiled Horns
i(205868);	-- Cracked Chitin Carapace
i(205869);	-- Aromatic Royal Jelly
i(205870);	-- Glittering Spore Dust
i(205871);	-- Glowing Underlight Wings
i(205872);	-- Earthvermin Fluff
i(205873);	-- Foraged Rare Fungi
i(205875);	-- Massive Deepstrider Femur
--- Common ---
i(204342);	-- Questionable Jerky
i(206033);	-- Untranslated Obsidian Tome

------------------
-- PATCH 10.1.5 --
------------------
--- Time Rifts ---
i(208030);	-- Advanced Titan Gizmo
i(207031);	-- Bomb Lobber
i(207036);	-- Crankshot
i(207037);	-- Empty Gun Rack
i(207038);	-- Empty Gun Rack
i(206653);	-- Fel Pinecone
i(207033);	-- Flamethrower
i(205978);	-- Glob of Azmerloth Slime
i(207034);	-- Railgun
i(208029);	-- Scareloc Parts
i(207032);	-- Shrapnel Spreader
i(207035);	-- Thunderbolt

------------------
-- PATCH 10.1.7 --
------------------
--- Trash ---
i(204720);	-- Join the New Scarlet Crusade!
i(209034);	-- Half-Completed Invasion Plans (Dropped in Argus during Seeing Red Quests)
i(209033);	-- Worn Felsteel Prayer Rod (Dropped in Argus during Seeing Red Quests)

------------------
-- PATCH 10.2.0 --
------------------
--- Trash ---
i(210445);	-- Ash Pouch
i(210554);	-- Blazing Feather
i(210444);	-- Burning Flower
i(210451);	-- Imp Tail
i(211270);	-- Pristine Core Leather
i(210452);	-- Small Demon Horn

------------------
-- PATCH 10.2.5 --
------------------
--- Trash ---
i(211938);	-- Flame Inscribed Band
i(211937);	-- Scarlet Pendant
--- Common ---
i(211943);	-- Scarlet Silk Bandage
--- Azerothian Archives Trash ---
i(212766);	-- Amphora Fragment
i(213362);	-- Ancient Drakonid Candy
i(208736);	-- Apprentice Astrologist Homework
i(213029);	-- Bent Drakonid Fork
i(213210);	-- Bloodied Banner Scrap
i(213033);	-- Brittle Blacksmith Tongs
i(213043);	-- Brittle Djaradin Leather
i(212767);	-- Broken Beaker
i(213195);	-- Charred Doodle
i(213206);	-- Charred Letter
i(212771);	-- Charred Snail Shells
i(212646);	-- Chipped Armor Plate
i(213027);	-- Chipped Drakonid Cup
i(213179);	-- Cracked Draconic Tooth
i(213028);	-- Cracked Drafting Compass
i(213034);	-- Cracked Drakonid Bowl
i(213038);	-- Cracked Magnifying Glass
i(213180);	-- Crumpled Map
i(213035);	-- Crusty Dracthyr Brush
i(213041);	-- Desiccated Djaradin Scroll
i(213042);	-- Deteriorated Djaradin Banner
i(213367);	-- Discarded Claw Prototype
i(213360);	-- Discarded Drakonid Amulet
i(213201);	-- Discarded Waterfowl Bones
i(213361);	-- Disquieting Children's Toy
i(207460);	-- Dreadsquall Eggshell Fragment
i(213213);	-- Dried Cave Fungus
i(213364);	-- Empty Vial of Perfume
i(213388);	-- Faded Centaur Painting
i(212772);	-- False Silver Coin
i(212765);	-- Fish Bones
i(212648);	-- Fishbone Needle
i(212764);	-- Fishing Net Fragment
i(213044);	-- Frayed Fang Amulet
i(213384);	-- Horsehair Doll
i(213358);	-- Indelicately Excavated Skull
i(213037);	-- Jagged Garden Trowel
i(212647);	-- Leather Bakar-Sized Shoe
i(213205);	-- Mad Scribblings
i(213026);	-- Massive Drakonid Brush
i(213031);	-- Misshapen Drakonid Goblet
i(213363);	-- Molted Eye Skin
i(213377);	-- Mutliated Storybook
i(213374);	-- Niffen Noseplug
i(212768);	-- Niffen-Sized Dagger
i(208201);	-- Paper Scraps
i(213211);	-- Petrified Flower Petals
i(213194);	-- Petrified Rations
i(212761);	-- Pouch of Coins
i(213196);	-- Pressed Flower
i(213387);	-- Primitive Centaur Carving
i(212649);	-- Quilted Tent Scrap
i(213184);	-- Rock with Chewed Gum
i(213030);	-- Rusty Garden Shears
i(212688);	-- Salt-dried Roots
i(213368);	-- Scratch-and-Sniff Stone
i(212774);	-- Sharpened Shalewing Bones
i(205221);	-- Simple Pottery Fragment
i(212770);	-- Smashed Pottery
i(213277);	-- Smudged Snippet of Poetry
i(213045);	-- Snapped Djaradin Necklace
i(212763);	-- Spoiled Honeywine
i(213385);	-- Stiff Brush
i(213366);	-- Strip of Niffen Headwear
i(213216);	-- Strip of Notched Leather
i(213040);	-- Tarnished Djaradin Amulet
i(213039);	-- Thin Drakonid Spoon
i(213386);	-- Unearthed Stone Arrowhead
i(213380);	-- Unidentifiable Equine Fossil
i(213203);	-- Velvet Nightcap
i(213032);	-- Warped Drakonid Jar
i(213212);	-- Whalebone Knife
i(205222);	-- Wooden Caravan Spoke
i(213182);	-- Worry Stone
i(213214);	-- Woven Lavareed Basket
-- Quest items --
i(211922);	-- Bouquet of Flowers
i(211923);	-- Sealed Letter