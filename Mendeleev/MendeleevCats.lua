-- vim: noet
local BB = AceLibrary("Babble-Boss-2.2")
local BZ = AceLibrary("Babble-Zone-2.2")
local BC = AceLibrary("Babble-Class-2.2")
local L  = AceLibrary("AceLocale-2.2"):new("Mendeleev")

MendeleevLocals.infosets = {
	{
		name = L["Gathering skills"],
		setindex = "gatherskill",
		--color = {0.0, 0.75, 0.8},
		colour = "|cff8470FF",
		header = L["Gathering skills"],
		sets = {
			gatherskillfishing    = L["Fishing"],
			gatherskilldisenchant = L["Disenchant"],
			gatherskillherbalism  = L["Herbalism"],
			gatherskillmining     = L["Mining"],
			gatherskillskinning   = L["Skinning"],
		},
	},
	{
		name = L["Crafted by"],
		setindex = "craftedbyspecialty",
		--color = {0.0, 0.75, 0.8},
		colour = "|cff8470ff",
		header = L["Crafted by"],
		useval = function (v) return " ("..(v > 0 and v or "Unk")..")" end,
		sets = {
			craftedbyalchemy                   = L["Alchemy"],
			craftedbyblacksmith                = L["Blacksmithing"],
			craftedbyblacksmithgeneral         = L["Blacksmithing"],
			craftedbyarmorsmith                = L["Armorsmithing"],
			craftedbyaxesmith                  = L["Axesmithing"],
			craftedbyhammersmith               = L["Hammersmithing"],
			craftedbyswordsmith                = L["Swordsmithing"],
			craftedbyweaponsmith               = L["Weaponsmithing"],
			craftedbycooking                   = L["Cooking"],
			craftedbyengineering               = L["Engineering"],
			craftedbyengineeringgeneral        = L["Engineering"],
			craftedbyengineeringgnome          = L["Gnomish Engineering"],
			craftedbyengineeringgoblin         = L["Goblin Engineering"],
			craftedbyfirstaid                  = L["First Aid"],
			craftedbyleatherworking            = L["Leatherworking"],
			craftedbyleatherworkinggeneral     = L["Leatherworking"],
			craftedbyleatherworkingdragonscale = L["Draconscale Leatherworking"],
			craftedbyleatherworkingelemental   = L["Elemental Leatherworking"],
			craftedbyleatherworkingtribal      = L["Tribal Leatherworking"],
			craftedbytayloring                 = L["Tailoring"],
		},
	},
	{
		name = L["Mine Gems"],
		setindex = "minedgem",
		--color = {0.75, 0.75, 0.75},
		colour = "|cffB0C4DE",
		header = L["Found in"],
		sets = {
			minedgemcopper      = L["Copper"],
			minedgemtin         = L["Tin"],
			minedgemsilver      = L["Silver"],
			minedgemiron        = L["Iron"],
			minedgemgold        = L["Gold"],
			minedgemmithril     = L["Mithril"],
			minedgemtruesilver  = L["Truesilver"],
			minedgemthorium     = L["Small Thorium"],
			minedgemzgthorium   = L["Hakkari Thorium"],
			minedgemrichthorium = L["Rich Thorium"],
			minedgemdarkiron    = L["Dark Iron"],
		},
	},
	{
		name = L["Trade Skills"],
		setindex = "tradeskill",
		--color = {1.0, 0.82, 0.0},
		colour = "|cffF5DEB3",
		header = L["Used by"],
		sets = {
			tradeskillalchemy        = L["Alchemy"],
			tradeskillblacksmithing  = L["Blacksmithing"],
			tradeskillcooking        = L["Cooking"],
			tradeskillenchanting     = L["Enchanting"],
			tradeskillengineering    = L["Engineering"],
			tradeskillfirstaid       = L["Firstaid"],
			tradeskillleatherworking = L["Leatherworking"],
			tradeskilltailoring      = L["Tailoring"],
		},
	},
	{
		name = L["Class Reagents"],
		setindex = "reagent",
		colour = "|cffff00ff",
		--color = {1.0, 0.0, 1.0},
		header = L["Classes"],
		sets = {
			reagentpaladin = BC["Paladin"],
			reagentdruid   = BC["Druid"],
			reagentmage    = BC["Mage"],
			reagentpriest  = BC["Priest"],
			reagentrogue   = BC["Rogue"],
			reagentshaman  = BC["Shaman"],
			reagentwarlock = BC["Warlock"],
		},
	},
	{
		name = L["Food type"],
		setindex = "foodclass",
		--color = {0.2, 0.6, 0.8},
		colour = "|cff87CEFA",
		header = L["Food type"],
		sets = {
			foodclassbread  = L["Bread"],
			foodclassfish   = L["Fish"],
			foodclassmeat   = L["Meat"],
			foodclasscheese = L["Cheese"],
			foodclassfruit  = L["Fruit"],
			foodclassfungus = L["Fungus"],
			foodclassmisc   = L["Misc"],
		},
	},
	{
		name = L["Recipe source"],
		setindex = "recipe",
		--color = {0.2, 0.6, 0.8},
		colour = "|cff8470FF",
		header = L["Recipe source"],
		useval = function (v) 
					if v == 0 then return  "" end
					local g = v > 9999 and floor(v/10000) or 0
					v = v-(g*10000)
					local s = v > 99 and floor(v/100) or 0
					v = v-(s*100)
					local c = v
					return " ("..(g>0 and (g.."g ") or "").. (((g+s)>0) and (s.."s ") or "").. c.. "c)"
				end,
		sets = {
			recipevendor  = L["Vendor"],
			recipedrop    = L["Drop"],
			recipequest   = L["Quest"],
			recipecrafted = L["Crafted"],
		},
	},
	{
		name = L["Seasonal recipe"],
		setindex = "recipeseasonal",
		--color = {0.2, 0.6, 0.8},
		colour = "|cff8470FF",
		header = L["Seasonal recipe"],
		sets = {
			recipeseasonal = "",
		},
	},
	{
		name = L["Recipe faction"],
		setindex = "recipefaction",
		--color = {0.2, 0.6, 0.8},
		colour = "|cff8470FF",
		header = L["Vendor faction"],
		useval = function (v) return MendeleevLocals.Rep[v] or "" end,
		sets = {
			recipefactionalliance           = L["Alliance"],
			recipefactionhorde              = L["Horde"],
			recipefactionneutral            = L["Neutral"],
			recipefactionargentdawn         = L["Argent Dawn"],
			recipefactioncenarioncircle     = L["Cenarion Circle"],
			recipefactionthoriumbrotherhood = L["Thorium Brotherhood"],
			recipefactiontimbermaw          = L["Timbermaw Hold"],
			recipefactionzandalar           = L["Zandalar Tribe"],
			recipefactionravenholdt         = L["Ravenholdt"],
		},
	},
	{
		name = L["Reputaton item"],
		setindex = "reputationjunk",
		--color = {1,1,1},
		colour = "|cffB0C4DE",
		header = L["Reputaton item"],
		sets = {
			reputationjunk = "",
		},
	},
	{
		name = L["Booze"],
		setindex = "booze",
		--color = {1,1,1},
		colour = "|cffB0C4DE",
		header = " ",
		useval = function (v) return string.format("%d%% alc/vol (%d proof)", v, v*2) end,
		sets = {
			booze = "",
		},
	},
	{
		name = L["Darkmoon Faire"],
		setindex = "faire",
		--color = {1,0.2,1},
		colour = "|cffFFFF00",
		header = L["Darkmoon Faire"],
		useval = function (v) return string.format(" (%d tickets)", v) end,
		sets = {
			faireengin   = L["Engineering"],
			fairegreys   = L["Junk Items"],
			faireleather = L["Leather"],
			fairesmithy  = L["Blacksmithing"],
		},
	},
	{
		name = L["Darkmoon Faire Card"],
		setindex = "deckcards",
		--color = {1,0.2,1},
		colour = "|cffFFFF00",
		header = L["Darkmoon Faire Card"],
		sets = {
			deckbeasts     = L["Blue Dragon Card"],
			deckwarlords   = L["Heroism Card"],
			deckportals    = L["Twisting Nether Card"],
			deckelementals = L["Maelstrom Card"],
		},
	},
	{
		name = L["Lockpick value"],
		setindex = "keyskeleton",
		--color = {1,1,1},
		colour = "|cffFFFF00",
		header = " ",
		useval = function (v) return v end,
		sets = {
			keyskeleton = L["Lockpicking"],
		}
	},
	{
		name = L["Lockpick value"],
		setindex = "lockboxes",
		--color = {1,1,1},
		colour = "|cffFFFF00",
		header = " ",
		useval = function (v) return v end,
		sets = {
			lockboxes = L["Lockpicking"],
		}
	},
	{
		name = L["Lockpick value"],
		setindex = "seaforium",
		--color = {1,1,1},
		colour = "|cffFFFF00",
		header = " ",
		useval = function (v) return v end,
		sets = {
			seaforium = L["Lockpicking"],
		},
	},
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
-- Items (drops from bosses etc
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
	{
		name = L["Zul'Gurub Enchants"],
		setindex = "zulgurubenchants",
		--color = { },
		colour = "|cffDC143C",
		header = L["Zul'Gurub Enchant"],
		sets = {
			zulgurubdruidenchant   = BC["Druid"],
			zulgurubhunterenchant  = BC["Hunter"],
			zulgurubmageenchant    = BC["Mage"],
			zulgurubpaladinenchant = BC["Paladin"],
			zulgurubpriestenchant  = BC["Priest"],
			zulgurubrogueenchant   = BC["Rogue"],
			zulgurubshamanenchant  = BC["Shaman"],
			zulgurubwarlockenchant = BC["Warlock"],
			zulgurubwarriorenchant = BC["Warrior"],
		},
	},
	{
		name = L["Zul'Gurub Classes"],
		setindex = "zulgurubclasses",
		--color = { },
		colour = "|cffDC143D",
		header = L["Zul'Gurub Classes"],
		useval = function (v) return MendeleevLocals.Rep[v] or " (Unk)" end,
		sets = {
			zulgurubdruid   = BC["Druid"],
			zulgurubhunter  = BC["Hunter"],
			zulgurubmage    = BC["Mage"],
			zulgurubpaladin = BC["Paladin"],
			zulgurubpriest  = BC["Priest"],
			zulgurubrogue   = BC["Rogue"],
			zulgurubshaman  = BC["Shaman"],
			zulgurubwarlock = BC["Warlock"],
			zulgurubwarrior = BC["Warrior"],
		},
	},
	{
		name = L["Ahn'Qiraj CC Classes"],
		setindex = "ahnqirajclassescc",
		--color = { },
		colour = "|cff7FFF00",
		header = L["Ahn'Qiraj CC Classes"],
		useval = function (v) return MendeleevLocals.Rep[v] or " (Unk)" end,
		sets = {
			ahnqirajdruidcc   = BC["Druid"],
			ahnqirajhuntercc  = BC["Hunter"],
			ahnqirajmagecc    = BC["Mage"],
			ahnqirajpaladinc  = BC["Paladin"],
			ahnqirajpriestcc  = BC["Priest"],
			ahnqirajroguecc   = BC["Rogue"],
			ahnqirajshamancc  = BC["Shaman"],
			ahnqirajwarlockcc = BC["Warlock"],
			ahnqirajwarriorcc = BC["Warrior"],
		},
	},
	{
		name = L["Ahn'Qiraj BoN Classes"],
		setindex = "ahnqirajclassesbon",
		--color = { },
		colour = "|cffDAA520",
		header = L["Ahn'Qiraj BoN Classes"],
		useval = function (v) return MendeleevLocals.Rep[v] or " (Unk)" end,
		sets = {
			ahnqirajdruidbon   = BC["Druid"],
			ahnqirajhunterbon  = BC["Hunter"],
			ahnqirajmagebon    = BC["Mage"],
			ahnqirajpaladinbon = BC["Paladin"],
			ahnqirajpriestbon  = BC["Priest"],
			ahnqirajroguebon   = BC["Rogue"],
			ahnqirajshamanbon  = BC["Shaman"],
			ahnqirajwarlockbon = BC["Warlock"],
			ahnqirajwarriorbon = BC["Warrior"],
		},
	},
	{
		name = L["World Drops"],
		setindex = "worlddrops",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = L["Found in"],
		sets = {
			worlddrops = L["World Drop"],
		},
	},
	{
		name = L["World Boss Drops"],
		setindex = "bossdrops",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = L["Found in"],
		sets = {
			worlddrops = L["World Boss Drop"],
		},
	},
	{
		name = L["Elemental bosses"],
		setindex = "elementalbosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = L["Found in"],
		sets = {
			avalanchion        = BB["Avalanchion"],
			thewindreaver      = BB["The Windreaver"],
			baroncharr         = BB["Baron Charr"],
			princesstempestria = BB["Princess Tempestria"],
		},
	},
	{
		name = BZ["Dire Maul"],
		setindex = "diremaul",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Dire Maul"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			knotthimblejackscache = BB["Knot Thimblejack's Cache"],
			kinggordok            = BB["King Gordok"],
			chorushtheobserver    = BB["Cho'Rush the Observer"],
			captainkromcrush      = BB["Captain Kromcrush"],
			guardfengus           = BB["Guard Fengus"],
			guardmoldar           = BB["Guard Mol'dar"],
			guardslipkik          = BB["Guard Slip'kik"],
			stomperkreeg          = BB["Stomper Kreeg"],
			diremaulwesttrash     = L["Trash Mobs"],
			lordhelnurath         = BB["Lord Hel'nurath"],
			illyannaravenoak      = BB["Illyanna Ravenoak"],
			immolthar             = BB["Immol'thar"],
			magisterkalendris     = BB["Magister Kalendris"],
			tendriswarpwood       = BB["Tendris Warpwood"],
			princetortheldrin     = BB["Prince Tortheldrin"],
			tsuzee                = BB["Tsu'zee"],
			diremauleasttrash     = L["Trash Mobs"],
			pimgib                = BB["Pimgib"],
			alzzinthewildshaper   = BB["Alzzin the Wildshaper"],
			zevrimthornhoof       = BB["Zevrim Thornhoof"],
			hydrospawn            = BB["Hydrospawn"],
			lethtendris           = BB["Lethtendris"],
			pusillin              = BB["Pusillin"],
		},
	},
	
	{
		name = L["UBRS"],
		setindex = "upperblackrockspire",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = L["UBRS"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			  generaldrakkisath  = BB["General Drakkisath"],
			  rendblackhand      = BB["Warchief Rend Blackhand"],
			  gyth               = BB["Gyth"],
			  goralukanvilcrack  = BB["Goraluk Anvilcrack"],
			  pyroguardemberseer = BB["Pyroguard Emberseer"],
			  solakarflamewreath = BB["Solakar Flamewreath"],
			}
	},
	{
		name = L["LBRS"],
		setindex = "lowerblackrockspire",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = L["LBRS"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			  halycon               = BB["Halycon"],
			  crystalfang           = BB["Crystal Fang"],
			  thebeast              = BB["The Beast"],
			  mothersmolderweb      = BB["Mother Smolderweb"],
			  overlordwyrmthalak    = BB["Overlord Wyrmthalak"],
			  highlordomokk         = BB["Highlord Omokk"],
			  warmastervoone        = BB["War Master Voone"],
			  shadowhuntervoshgajin = BB["Shadow Hunter Vosh'gajin"],
		},
	},
	{
		name = BZ["Blackrock Depths"],
		setindex = "blackrockdepthsbosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Blackrock Depths"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			  ambassadorflamelash      = BB["Ambassador Flamelash"],
			  angerrel                 = BB["Anger'rel"],
			  baelgar                  = BB["Bael'Gar"],
			  doomrel                  = BB["Doom'rel"],
			  doperel                  = BB["Dope'rel"],
			  emperordagranthaurissian = BB["Emperor Dagran Thaurissan"],
			  fineousdarkvire          = BB["Fineous Darkvire"],
			  generalangerforge        = BB["General Angerforge"],
			  gloomrel                 = BB["Gloom'rel"],
			  golemlordargelmach       = BB["Golem Lord Argelmach"],
			  haterel                  = BB["Hate'rel"],
			  highinterrogatorgerstahn = BB["High Interrogator Gerstahn"],
			  hurleyblackbreath        = BB["Hurley Blackbreath"],
			  lordincendius            = BB["Lord Incendius"],
			  magmus                   = BB["Magmus"],
			  phalanx                  = BB["Phalanx"],
			  pluggerspazzring         = BB["Plugger Spazzring"],
			  princessmoirabronzebeard = BB["Princess Moira Bronzebeard"],
			  ribblyscrewspigot        = BB["Ribbly Screwspigot"],
			  seethrel                 = BB["Seeth'rel"],
			  vilerel                  = BB["Vile'rel"],
		},
	},
	{
		name = BZ["Scholomance"],
		setindex = "scholomancebosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Scholomance"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			  lordalexeibarov        = BB["Lord Alexei Barov"],
			  darkmastergandling     = BB["Darkmaster Gandling"],
			  kirtonostheherald      = BB["Kirtonos the Herald"],
			  rattlegore             = BB["Rattlegore"],
			  vectus                 = BB["Vectus"],
			  mardukblackpool        = BB["Marduk Blackpool"],
			  rasfrostwhisper        = BB["Ras Frostwhisper"],
			  jandicebarov           = BB["Jandice Barov"],
			  doctortheolenkrastinov = BB["Doctor Theolen Krastinov"],
			  theravenian            = BB["The Ravenian"],
			  lorekeeperpolkelt      = BB["Lorekeeper Polkelt"],
			  instructormalicia      = BB["Instructor Malicia"],
			  ladyilluciabarov       = BB["Jandice Barov"],
		},
	},
	{
		name = BZ["Stratholme"],
		setindex = "stratholmebosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Stratholme"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			  baronrivendare        = BB["Baron Rivendare"],
			  baronessanastari      = BB["Baroness Anastari"],
			  magistratebarthilas   = BB["Magistrate Barthilas"],
			  malekithepallid       = BB["Maleki the Pallid"],
			  nerubenkan            = BB["Nerub'enkan"],
			  ramsteinthegorger     = BB["Ramstein the Gorger"],
			  archivistgalford      = BB["Archivist Galford"],
			  cannonmasterwilley    = BB["Cannon Master Willey"],
			  balnazzar             = BB["Balnazzar"],
			  timmythecruel         = BB["Timmy the Cruel"],
			  hearthsingerforresten = BB["Hearthsinger Forresten"],
			  postmastermalown      = BB["Postmaster Malown"],
		},
	},
	{
		name = BZ["The Temple of Atal'Hakkar"],
		setindex = "templeofatalhakkarbosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["The Temple of Atal'Hakkar"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			  weaver             = BB["Weaver"],
			  zolo               = BB["Zolo"],
			  loro               = BB["Loro"],
			  gasher             = BB["Gasher"],
			  hukku              = BB["Hukku"],
			  mijan              = BB["Mijan"],
			  zullor             = BB["Zul'Lor"],
			  avatarofhakkar     = BB["Avatar of Hakkar"],
			  shadeoferanikus    = BB["Shade of Eranikus"],
			  jammalantheprophet = BB["Jammal'an the Prophet"],
			  atalalarion        = BB["Atal'alarion"],
			  dreamscythe        = BB["Dreamscythe"],
			  ogomthewretched    = BB["Ogom the Wretched"],
			  morphaz            = BB["Morphaz"],
			  hazzas             = BB["Hazzas"],
			}
	},
	{
		name = BZ["Blackwing Lair"],
		setindex = "blackwinglairbosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Blackwing Lair"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			nefarian              = BB["Nefarian"],
			vaelastraszthecorrupt = BB["Vaelastrasz the Corrupt"],
			razorgoretheuntamed   = BB["Razorgore the Untamed"],
			broodlordlashlayer    = BB["Broodlord Lashlayer"],
			chromaggus            = BB["Chromaggus"],
			ebonroc               = BB["Ebonroc"],
			firemaw               = BB["Firemaw"],
			flamegor              = BB["Flamegor"],
		},
	},
	{
		name = BZ["Molten Core"],
		setindex = "moltencorebosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Molten Core"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			majordomoexecutus      = BB["Majordomo Executus"],
			magmadar               = BB["Magmadar"],
			ragnaros               = BB["Ragnaros"],
			barongeddon            = BB["Baron Geddon"],
			garr                   = BB["Garr"],
			golemaggtheincinerator = BB["Golemagg the Incinerator"],
			sulfuronharbinger      = BB["Sulfuron Harbinger"],
			shazzrah               = BB["Shazzrah"],
			lucifron               = BB["Lucifron"],
			gehennas               = BB["Gehennas"],
		},
	},
	{
		name = L["Outdoor bosses"],
		setindex = "outdoorbosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = L["Found in"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			azuregos   = BB["Azuregos"],
			lordkazzak = BB["Lord Kazzak"],
		},
	},
	{
		name = L["Four Dragons"],
		setindex = "thefourdragons",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = L["Found in"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			ysondre = BB["Ysondre"],
			emeriss = BB["Emeriss"],
			taerar  = BB["Taerar"],
			lethon  = BB["Lethon"],
		},
	},
	{
		name = BZ["Onyxia's Lair"],
		setindex = "onyxia",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Onyxia's Lair"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			onyxia = BB["Onyxia"],
		},
	},
	{
		name = BZ["Zul'Gurub"],
		setindex = "zulgurubbosses",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Zul'Gurub"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			highpriestessjeklik = BB["High Priestess Jeklik"],
			highpriestvenoxis   = BB["High Priest Venoxis"],
			highpriestthekal    = BB["High Priest Thekal"],
			highpriestessarlokk = BB["High Priestess Arlokk"],
			highpriestessmarli  = BB["High Priestess Mar'li"],
			jindothehexxer      = BB["Jin'do the Hexxer"],
			bloodlordmandokir   = BB["Bloodlord Mandokir"],
			gahzranka           = BB["Gahz'ranka"],
			grilek              = BB["Gri'lek"],
			hazzarah            = BB["Hazza'rah"],
			renataki            = BB["Renataki"],
			wushoolay           = BB["Wushoolay"],
			hakkar              = BB["Hakkar"],
		},
	},
	{
		name = BZ["Ruins of Ahn'Qiraj"],
		setindex = "ruinsofahnqiraj",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Ruins of Ahn'Qiraj"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			buruthegorger        = BB["Buru the Gorger"],
			generalrajaxx        = BB["General Rajaxx"],
			ossiriantheunscarred = BB["Ossirian the Unscarred"],
			kurinnaxx            = BB["Kurinnaxx"],
			moam                 = BB["Moam"],
			ayamissthehunter     = BB["Ayamiss the Hunter"],
		},
	},
	{
		name = BZ["Temple of Ahn'Qiraj"],
		setindex = "ahnqiraj",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Temple of Ahn'Qiraj"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			battleguardsartura    = BB["Battleguard Sartura"],
			theprophetskeram      = BB["The Prophet Skeram"],
			princesshuhuran       = BB["Princess Huhuran"],
			princessyauj          = BB["Princess Yauj"],
			fankrisstheunyielding = BB["Fankriss the Unyielding"],
			lordkri               = BB["Lord Kri"],
			cthun                 = BB["C'Thun"],
			ouro                  = BB["Ouro"],
			vem                   = BB["Vem"],
			viscidus              = BB["Viscidus"],
			emperorveklor         = BB["Emperor Vek'lor"],
			emperorveknilash      = BB["Emperor Vek'nilash"],
		},
	},
	{
		name = BZ["Naxxramas"],
		setindex = "naxxall",
		--color = {1,0.3,0},
		colour = "|cffB0C4DE",
		header = BZ["Naxxramas"],
		useval = function (v) return (v > 0 and string.format(" (%.2f%%)", v/100)) or "" end,
		sets = {
			thaddius             = BB["Thaddius"],
			grobbulus            = BB["Grobbulus"],
			patchwerk            = BB["Patchwerk"],
			gluth                = BB["Gluth"],
			heigantheunclean     = BB["Heigan the Unclean"],
			instructorrazuvious  = BB["Instructor Razuvious"],
			grandwidowfaerlina   = BB["Grand Widow Faerlina"],
			anubrekhan           = BB["Anub'Rekhan"],
			maexxna              = BB["Maexxna"],
			kelthuzad            = BB["Kel'Thuzad"],
			sapphiron            = BB["Sapphiron"],
			noththeplaguebringer = BB["Noth the Plaguebringer"],
			gothiktheharvester   = BB["Gothik the Harvester"],
			loatheb              = BB["Loatheb"],
		},
	},
}

------------------------------------------------------------------------------------------------------
--other stuff
------------------------------------------------------------------------------------------------------

MendeleevLocals.custominfosets = {"stacksize", "itemid", "crafting"}

