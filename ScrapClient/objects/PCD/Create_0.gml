/// @description Insert description here
// You can write your code in this editor

//Character name
character_name="Unamed"
//Total level
level=5;
//class_array[class][level, subclass]
class_array=[
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[5,1],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0],
[0,0]];

//race_array[race, subrace]
race_array=[0,0];

//background_array=[background,variant];
background_array=[0,0];

//alignment=[lawful,good]
alignment=[2,2];

experience=6500;

//
stat_score=[10,10,10,10,10,10];
stat_bonus=[0,0,0,0,0,0];
for(var ii=0; ii<array_length(stat_score); ii++)
{
stat_bonus[ii]=floor(stat_score[ii]/2-5);
}

saving_throws=[1,0,1,0,0,0]

skills=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

tool_profs=["",""]
language_profs=["Common",""]



class_name=[
"Artificer",
"Barbarian",
"Bard",
"Cleric",
"Druid",
"Fighter",
"Monk",
"Paladin",
"Ranger",
"Rogue",
"Sorcerer",
"Warlock",
"Wizard"
];

race_name=[
"Dragonborn",
"Dwarf",
"Elf",
"Gnome",
"Halfling",
"Human",
"Tiefling"

];
//Health
//hit point maximum 
HPM=0;
//hit points
HP=0;

//Stats
STRs=10;
DEXs=10;
CONs=10;
INTs=10;
WISs=10;
CHAs=10;
//Profs
PROF=2;
//full list

stat_name=[
"Strength",			//0
"Dexterity",		//1
"Constitution",		//2
"Inteligence",		//3
"Wisdom",			//4
"Charisma"			//5
];
skill_name=[
"Acrobatics",		//0
"Animal Handling",	//1
"Arcana",			//2
"Athletics",		//3
"Deception",		//4
"History",			//5
"Insight",			//6
"Intimidation",		//7
"Investigation",	//8
"Medicine",			//9
"Nature",			//10
"Perception",		//11
"Performance",		//12
"Persuasion",		//13
"Religion",			//14
"Sleight of Hand",	//15
"Stealth",			//16
"Survival"			//17
];

armor_name=[
"Light",			//18
"Medium",			//19
"Heavy"				//20
];
weapon_name=[
//simple melee
"Club",				//21
"Dagger",			//22
"Greatclub",		//23
"Handaxe",			//24
"Javelin",			//25
"Light hammer",		//26
"Mace",				//27
"Quarterstaff",		//28
"Sickle",			//29
"Spear",			//30
"Unarmed Strike",	//31
//simple ranged
"Crossbow, light",	//32
"Dart",				//33
"Shortbow",			//34
"Sling",			//35
//martial melee
"Battleaxe",		//36
"Flail",			//37
"Glaive",			//38
"Greataxe",			//39
"Halberd",			//40
"Lance",			//41
"Longsword",		//42
"Maul",				//43
"Morningstar",		//44
"Pike",				//45
"Rapier",			//46
"Scimitar",			//47
"Shortsword",		//48
"Trident",			//49
"War pick",			//50
"Warhammer",		//51
"Whip",				//52
//martial ranged
"Blowgun",			//53
"Crossbow, hand",	//54
"Crossbow, heavy",	//55
"Longbow",			//56
"Net",				//57
//misc
"Firearms"			
];
Tooltype_name=[
//Artisan's Tools
"Alchemist's supplies",		//58
"Brewer's supplies",		//59
"Calligrapher's supplies",	//60
"Carpenter's tools",		//61
"Cartographer's tools",		//62
"Cobbler's tools",			//63
"Cook's utensils",			//64
"Glassblower's tools",		//65
"Jeweler's tools",			//66
"Leatherworker's tools",	//67
"Mason's tools",			//68
"Painter's supplies",		//69
"Potter's tools",			//70
"Smith's tools",			//71
"Tinker's tools",			//72
"Weaver's tools",			//73
"Woodcarver's tools",		//74
//Disguise Kit
"Disguise kit",				//75
//Forgery Kit
"Forgery kit",				//76
//Gaming
"Cards",					//77
"Boardgames",				//78
"Dice",						//79
"Throwing",					

//Herbalism
"Herbalism kit",			//80
//Musical Instrument
"Brass",					//82
"Keyboard",					//85
"Percussion",				//83
"Strings",					//81
"Vocals",
"Woodwinds",				//84
//Navigation
"Navigator's tools",		//86
"Poisoner's kit",			//87
"Thieves' tools",			//88
"Land vehicles",			//89
"Water vehicles",			//90
//Languages
//A lopsided hodge podge of different languages with all the useful features
//making it one of the hardest languages to learn
"Alpha",

//A very simple language using easy to chisel characters
"Runes",

//A poetic language written with a single stroke
"Cursive",

//A language of ideograms
"Kata",

//An ancient language
"Glyphs",

//A dead language used by celestials using the Roman script
"Latin",

//Ancient, yet still used language made by dragons
"Draconic",

//A very poorly made language and script
"Infernal",

//A much more robust form of the dwarven language used by giants and primordials
"Primal",

//A much older and simpler form of the elven language without a script
"fabel"];
//human
//dwarf
//elf

//draconic
//demonic
//angelic

