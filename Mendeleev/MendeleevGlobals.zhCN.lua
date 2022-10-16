local L = AceLibrary("AceLocale-2.2"):new("Mendeleev")

L:RegisterTranslations("zhCN", function() return {
	["KCI Integration"] = "KCI\233\155\134\230\136\144",
	["Integrate into the KCI tooltip"] = "\233\155\134\230\136\144\229\136\176kci\230\143\144\231\164\186",
	--["integrate"] = "\233\155\134\230\136\144",
	--["sets"] = "\232\174\190\231\189\174",
	--["toggle"] = "\229\136\135\230\141\162",
	["Toggle Sets"] = "\229\136\135\230\141\162\232\174\190\231\189\174",

	["Crafted by"] = "\229\183\165\232\137\186\232\166\129\230\177\130",
	["Crafted by: "] = "\229\183\165\232\137\186\232\166\129\230\177\130:",

	["Recipe source"] = "\233\133\141\230\150\185\229\135\186\229\164\132",
	["Recipe source: "] = "\233\133\141\230\150\185\229\135\186\229\164\132:",
	["Seasonal recipe"] = "\229\173\163\232\138\130\230\128\167\233\133\141\230\150\185",
	["Recipe faction"] = "\233\133\141\230\150\185\233\152\181\232\144\165",
	["Vendor faction"] = "\229\149\134\228\186\186\233\152\181\232\144\165",

	["Gathering skills"] = "\233\135\135\233\155\134\230\138\128\232\131\189",
	["Mine Gems"] = "\229\135\186\228\186\167\231\159\191\232\132\137",
	["Trade Skills"] = "\229\149\134\228\184\154\230\138\128\232\131\189",
	["Class Reagents"] = "\232\129\140\228\184\154\232\175\149\229\137\130",
	["Zul'Gurub Enchants"] = "\231\165\150\229\176\148\230\160\188\230\139\137\229\184\131-\233\153\132\233\173\148\231\137\169\229\147\129",
	["Zul'Gurub Classes"] = "\231\165\150\229\176\148\230\160\188\230\139\137\229\184\131-\232\181\158\232\190\190\230\139\137\232\129\140\228\184\154\228\187\187\229\138\161",
	["Zul'Gurub Coins"] = "\231\165\150\229\176\148\230\160\188\230\139\137\229\184\131-\231\161\172\229\184\129",
	["Ahn'Qiraj CC Classes"] = "\229\174\137\229\133\182\230\139\137-\229\161\158\231\186\179\233\135\140\229\165\165\232\129\140\228\184\154\228\187\187\229\138\161",
	["Ahn'Qiraj BoN Classes"] = "\229\174\137\229\133\182\230\139\137-\232\175\186\229\133\185\229\164\154\229\167\134\232\129\140\228\184\154\228\187\187\229\138\161",
	["Food type"] = "\233\163\159\231\137\169\231\177\187\229\158\139",
	["Booze"] = "\233\133\146\231\178\190\230\181\147\229\186\166",
	["Lockpick value"] = "\229\188\128\233\148\129\230\149\176\229\128\188",
	["World Drops"] = "\228\184\150\231\149\140\230\142\137\232\144\189",
	["World Boss Drops"] = "\228\184\150\231\149\140\233\166\150\233\162\134\230\142\137\232\144\189",
	["Raid Zones"] = "Raid\229\140\186\229\159\159",
	["Raid Bosses"] = "Raid\233\166\150\233\162\134",
	["Instance zones"] = "\229\137\175\230\156\172\229\140\186\229\159\159",
	["Instance bosses"] = "\229\137\175\230\156\172\233\166\150\233\162\134",
	["Elemental bosses"] = "\229\133\131\231\180\160\233\166\150\233\162\134",
	["Outdoor bosses"] = "\233\135\142\229\164\150\233\166\150\233\162\134",
	["Four Dragons"] = "\231\191\161\231\191\160\230\162\166\229\162\131\231\187\191\233\190\153",

	["Gathered by"] = "\233\135\135\233\155\134\230\150\185\229\188\143:",
	["Zul'Gurub Enchant"] = "\231\165\150\229\176\148\230\160\188\231\186\179\229\184\131-\233\153\132\233\173\148:",
	["Used by"] = "\231\148\168\233\128\148:",
	["Classes"] = "\232\129\140\228\184\154:",
	["Darkmoon Faire"] = "\230\154\151\230\156\136\233\169\172\230\136\143\229\155\162:",
	["Darkmoon Faire Card"] = "\230\154\151\230\156\136\233\169\172\230\136\143\229\155\162\229\141\161\231\137\135:",
	["World Drop"] = "\228\184\150\231\149\140\230\142\137\232\144\189",
	["World Boss Drop"] = "\228\184\150\231\149\140\233\166\150\233\162\134\230\142\137\232\144\189",
	["Found in"] = "\229\143\145\231\142\176\228\186\142:",
	["Dropped by"] = "\230\142\137\232\144\189\232\128\133:",
	["Used in"] = "\231\148\168\228\186\142:",
	["Reputaton item"] = "\229\163\176\230\156\155\231\137\169\229\147\129:",

	["Copper"]        = "\233\147\156\231\159\191",
	["Tin"]           = "\233\148\161\231\159\191",
	["Silver"]        = "\233\147\182\231\159\191",
	["Iron"]          = "\233\147\129\231\159\191",
	["Gold"]          = "\233\135\145\231\159\191",
	["Mithril"]       = "\231\167\152\233\147\182\231\159\191",
	["Truesilver"]    = "\231\156\159\233\147\182\231\159\191",
	["Small Thorium"] = "\231\145\159\233\147\182\231\159\191",
	["Hakkari Thorium"]                 = "\229\147\136\229\141\161\232\142\177\231\145\159\233\147\182\231\159\191",
	["Rich Thorium"]  = "\231\145\159\233\147\182\231\159\191",
	["Dark Iron"]     = "\233\187\145\233\147\129\231\159\191",

	["Fishing"]       = "\233\146\147\233\177\188",
	["Disenchant"]    = "\229\136\134\232\167\163",
	["Herbalism"]     = "\233\135\135\232\141\175",
	["Mining"]        = "\233\135\135\231\159\191",
	["Skinning"]      = "\229\137\165\231\154\174",
	["Alchemy"]       = "\231\130\188\233\135\145",
	["Blacksmithing"] = "\233\148\187\233\128\160",
	["Cooking"]       = "\231\131\185\233\165\170",
	["Enchanting"]    = "\233\153\132\233\173\148",
	["Engineering"]   = "\229\183\165\231\168\139",
	["Firstaid"]      = "\230\128\165\230\149\145",
	["Leatherworking"]= "\229\136\182\231\154\174",
	["Tailoring"]     = "\232\163\129\231\188\157",

	["Fish"]          = "\233\177\188\231\177\187",
	["Meat"]          = "\232\130\137\231\177\187",
	["Bread"]         = "\233\157\162\229\140\133",
	["Conjured"]      = "\233\173\148\230\179\149",
	["Cheese"]        = "\229\185\178\233\133\170",
	["Fruit"]         = "\230\176\180\230\158\156",
	["Misc"]          = "\229\133\182\228\187\150",
	["Fungus"]        = "\232\143\140\231\177\187",

	["Junk Items"]    = "\231\129\176\232\137\178\231\137\169\229\147\129",
	["Leather"]       = "\231\154\174\233\157\169\229\136\182\229\147\129",
	["Blue Dragon Card"]		= "\230\154\151\230\156\136\229\141\161\231\137\135\239\188\154\232\147\157\233\190\153",
	["Heroism Card"]		= "\230\154\151\230\156\136\229\141\161\231\137\135\239\188\154\232\139\177\233\155\132",
	["Twisting Nether Card"]	= "\230\154\151\230\156\136\229\141\161\231\137\135\239\188\154\232\153\154\231\169\186",
	["Maelstrom Card"]		= "\230\154\151\230\156\136\229\141\161\231\137\135\239\188\154\230\188\169\230\182\161",

	["Lockpicking"]   = "\230\139\190\229\143\150\231\187\145\229\174\154",
	[" (Enchant)"]    = " (\233\153\132\233\173\148)",
	["Trash Mobs"]    = "\229\176\143\230\128\170",
	["Item ID"]        = "\231\137\169\229\147\129ID",
	["Stacksize"]     = "\229\160\134\229\143\160",
	["NoClue"]        = "\230\136\145\228\184\141\231\159\165\233\129\147",

	-- Factions
	["Alliance"] = "\232\129\148\231\155\159",
	["Horde"] = "\233\131\168\232\144\189",
	["Neutral"] = "\228\184\173\231\171\139",
	["Argent Dawn"] = "\233\147\182\232\137\178\233\187\142\230\152\142",
	["Cenarion Circle"] = "\229\161\158\231\186\179\233\135\140\229\165\165\232\174\174\228\188\154",
	["Thorium Brotherhood"] = "\231\145\159\233\147\182\229\133\132\229\188\159\228\188\154",
	["Timbermaw Hold"] = "\230\156\168\229\150\137\232\166\129\229\161\158",
	["Zandalar Tribe"] = "\232\181\158\232\190\190\230\139\137\233\131\168\230\151\143",
	["Ravenholdt"] = "\230\139\137\230\150\135\233\156\141\229\190\183",

	-- Crafted by
	["Alchemy"] = "\231\130\188\233\135\145\230\156\175",
	["Blacksmithing"] = "\233\148\187\233\128\160",
	["Armorsmithing"] = "\233\152\178\229\133\183\233\148\187\233\128\160",
	["Axesmithing"] = "\230\150\167\231\177\187\233\148\187\233\128\160",
	["Hammersmithing"] = "\230\167\140\231\177\187\233\148\187\233\128\160",
	["Swordsmithing"] = "\229\137\145\231\177\187\233\148\187\233\128\160",
	["Weaponsmithing"] = "\230\173\166\229\153\168\233\147\184\233\128\160",
	["Cooking"] = "\231\131\185\233\165\170",
	["Engineering"] = "\229\183\165\231\168\139\229\173\166",
	["Gnomish Engineering"] = "\228\190\143\229\132\146\229\183\165\231\168\139\229\173\166",
	["Goblin Engineering"] = "\229\156\176\231\178\190\229\183\165\231\168\139\229\184\136",
	["First Aid"] = "\230\128\165\230\149\145",
	["Leatherworking"] = "\229\136\182\231\154\174",
	["Draconscale Leatherworking"] = "\233\190\153\233\179\158\229\136\182\231\154\174",
	["Elemental Leatherworking"] = "\229\133\131\231\180\160\229\136\182\231\154\174",
	["Tribal Leatherworking"] = "\233\131\168\230\151\143\229\136\182\231\154\174",
	["Tailoring"] = "\232\163\129\231\188\157",

	-- Sources
	["Drop"] = "\230\142\137\232\144\189",
	["Vendor"] = "\229\149\134\228\186\186",
	["Quest"] = "\228\187\187\229\138\161",
	["Crafted"] = "\229\183\165\232\137\186",

	["UBRS"] = "\233\187\145\231\159\179\229\161\148\228\184\138\229\177\130",
	["LBRS"] = "\233\187\145\231\159\179\229\161\148\228\184\139\229\177\130",
}end)
if GetLocale() == "zhCN" then
--Localized strings
--This has a slightly different structure because of the way the closure in the cats works

	MendeleevLocals.Rep	= {}
	MendeleevLocals.Rep[1]		= "(\228\187\135\230\129\168)"
	MendeleevLocals.Rep[2]		= "(\230\149\140\229\175\185)"
	MendeleevLocals.Rep[3]		= "(\229\134\183\230\183\161)"
	MendeleevLocals.Rep[4]		= "(\228\184\173\231\171\139)"
	MendeleevLocals.Rep[5]		= "(\229\143\139\229\150\132)"
	MendeleevLocals.Rep[6]		= "(\229\176\138\230\149\172)"
	MendeleevLocals.Rep[7]		= "(\229\180\135\230\149\172)"
	MendeleevLocals.Rep[8]		= "(\229\180\135\230\139\156)"

	MendeleevLocals.Dif = {}
	MendeleevLocals.Dif[0] 		= "(\229\185\179\229\135\161)"
	MendeleevLocals.Dif[1] 		= "(\229\174\185\230\152\147)"
	MendeleevLocals.Dif[2] 		= "(\228\184\173\231\173\137)"
	MendeleevLocals.Dif[3] 		= "(\233\128\130\229\174\156)"
	MendeleevLocals.Dif[4] 		= "(\229\155\176\233\154\190)"

end
