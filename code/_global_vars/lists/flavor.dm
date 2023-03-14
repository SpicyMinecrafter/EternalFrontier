// Noises made when hit while typing.
var/global/list/hit_appends = list("-OOF", "-ACK", "-UGH", "-HRNK", "-HURGH", "-GLORF")

// Some scary sounds.
var/global/list/scarySounds = list(
	'sound/weapons/thudswoosh.ogg',
	'sound/weapons/Taser.ogg',
	'sound/weapons/armbomb.ogg',
	'sound/voice/hiss1.ogg',
	'sound/voice/hiss2.ogg',
	'sound/voice/hiss3.ogg',
	'sound/voice/hiss4.ogg',
	'sound/voice/hiss5.ogg',
	'sound/voice/hiss6.ogg',
	'sound/effects/Glassbr1.ogg',
	'sound/effects/Glassbr2.ogg',
	'sound/effects/Glassbr3.ogg',
	'sound/items/Welder.ogg',
	'sound/items/Welder2.ogg',
	'sound/machines/airlock.ogg',
	'sound/effects/clownstep1.ogg',
	'sound/effects/clownstep2.ogg'
)

// Reference list for disposal sort junctions. Filled up by sorting junction's New()
var/global/list/tagger_locations = list()

var/global/list/station_prefixes = list("", "Imperium", "Heretical", "Cuban",
	"Psychic", "Elegant", "Common", "Uncommon", "Rare", "Unique",
	"Houseruled", "Religious", "Atheist", "Traditional", "Houseruled",
	"Mad", "Super", "Ultra", "Secret", "Top Secret", "Deep", "Death",
	"Zybourne", "Central", "Main", "Government", "Uoi", "Fat",
	"Automated", "Experimental", "Augmented")

var/global/list/station_names = list("", "Stanford", "Dwarf", "Alien",
	"Aegis", "Death-World", "Rogue", "Safety", "Paranoia",
	"Explosive", "North", "West", "East", "South", "Slant-ways",
	"Widdershins", "Rimward", "Expensive", "Procreatory", "Imperial",
	"Unidentified", "Immoral", "Carp", "Orc", "Pete", "Control",
	"Nettle", "Class", "Crab", "Fist", "Corrogated", "Skeleton",
	"Gentleman", "Capitalist", "Communist", "Bear", "Beard", "Space",
	"Star", "Moon", "System", "Mining", "Research", "Supply", "Military",
	"Orbital", "Battle", "Science", "Asteroid", "Home", "Production",
	"Transport", "Delivery", "Extraplanetary", "Orbital", "Correctional",
	"Robot", "Hats", "Pizza"
)

var/global/list/station_suffixes = list("Station", "Frontier",
	"Death-trap", "Space-hulk", "Lab", "Hazard", "Junker",
	"Fishery", "No-Moon", "Tomb", "Crypt", "Hut", "Monkey", "Bomb",
	"Trade Post", "Fortress", "Village", "Town", "City", "Edition", "Hive",
	"Complex", "Base", "Facility", "Depot", "Outpost", "Installation",
	"Drydock", "Observatory", "Array", "Relay", "Monitor", "Platform",
	"Construct", "Hangar", "Prison", "Center", "Port", "Waystation",
	"Factory", "Waypoint", "Stopover", "Hub", "HQ", "Office", "Object",
	"Fortification", "Colony", "Planet-Cracker", "Roost", "Airstrip")

var/global/list/greek_letters = list("Alpha", "Beta", "Gamma", "Delta",
	"Epsilon", "Zeta", "Eta", "Theta", "Iota", "Kappa", "Lambda", "Mu",
	"Nu", "Xi", "Omicron", "Pi", "Rho", "Sigma", "Tau", "Upsilon", "Phi",
	"Chi", "Psi", "Omega")

var/global/list/phonetic_alphabet = list("Alpha", "Bravo", "Charlie",
	"Delta", "Echo", "Foxtrot", "Golf", "Hotel", "India", "Juliet",
	"Kilo", "Lima", "Mike", "November", "Oscar", "Papa", "Quebec",
	"Romeo", "Sierra", "Tango", "Uniform", "Victor", "Whiskey", "X-ray",
	"Yankee", "Zulu")

var/global/list/numbers_as_words = list("One", "Two", "Three", "Four",
	"Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve",
	"Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen",
	"Eighteen", "Nineteen")

var/global/list/music_tracks = list(
	"80s All Over Again" = /decl/music_track/eighties,
	"Absconditus" = /decl/music_track/absconditus,
	"Aint I Right" = /decl/music_track/aintiright,
	"As Far As It Gets" = /decl/music_track/asfarasitgets,
	"Asteroids" = /decl/music_track/df_theme,
	"Battle Of Hymn Of The Republic" = /decl/music_track/battlehymnoftherepublic,
	"Beyond" = /decl/music_track/ambispace,
	"Black Betty" = /decl/music_track/blackbetty,
	"Bringing Home The Rain" = /decl/music_track/bringinghometherain,
	"Chinatown" = /decl/music_track/chinatown,
	"Clouds of Fire" = /decl/music_track/clouds_of_fire,
	"Comet Halley" = /decl/music_track/comet_haley,
	"Country Roads" = /decl/music_track/countryroads,
	"Debt Collector" = /decl/music_track/debtcollector,
	"Deum Verum" = /decl/music_track/deumverum,
	"Don't Stop Me Now" = /decl/music_track/dontstopmenow,
	"Eine Kleine Natchmusik" = /decl/music_track/einekleinenachtmusik,
	"Electric City" = /decl/music_track/electriccity,
	"Endless Space" = /decl/music_track/endless_space,
	"Every Light Is Blinking At Once" = /decl/music_track/elibao,
	"Faster Than Light" = /decl/music_track/fasterthanlight,
	"Fleet Party Theme" = /decl/music_track/one_loop,
	"Floating" = /decl/music_track/floating,
	"Fortunate Son" = /decl/music_track/fortunateson,
	"Grand" = /decl/music_track/grand,
	"Gimme Shelter" = /decl/music_track/gimmeshelter,
	"Here Comes The Bride" = /decl/music_track/herecomesthebride,
	"Hold On" = /decl/music_track/holdon,
	"Human" = /decl/music_track/human,
	"I Beat My Meat" = /decl/music_track/ibeatmymeat,
	"In Orbit" = /decl/music_track/inorbit,
	"Lasers Rip Apart The Bulkhead" = /decl/music_track/lasers,
	"Maple Leaf Rag" = /decl/music_track/mapleleafrag,
	"Marhaba" = /decl/music_track/marhaba,
	"Martian Cowboy" = /decl/music_track/martiancowboy,
	"Maschine Klash" = /decl/music_track/digit_one,
	"Memories of Lysendraa" = /decl/music_track/lysendraa,
	"Monument" = /decl/music_track/monument,
	"Nebula" = /decl/music_track/nebula,
	"Outbreak" = /decl/music_track/outbreak,
	"Phoron Will Make Us Rich" = /decl/music_track/pwmur,
	"Please Come Back Any Time" = /decl/music_track/elevator,
	"Red Sector A" = /decl/music_track/redsectora,
	"Rise Up Dead Man" = /decl/music_track/riseupdeadman,
	"Scratch" = /decl/music_track/level3_mod,
	"Space Asshole" = /decl/music_track/spaceasshole,
	"Space Oddity" = /decl/music_track/space_oddity,
	"Stage Three" = /decl/music_track/dilbert,
	"The Ballad Of Serenity" = /decl/music_track/theballadofserenity,
	"The Cause" = /decl/music_track/thecause,
	"The City" = /decl/music_track/thecity,
	"The Horror" = /decl/music_track/thehorror,
	"THUNDERDOME" = /decl/music_track/thunderdome,
	"Torn" = /decl/music_track/torn,
	"Treacherous Voyage" = /decl/music_track/treacherous_voyage,
	"Turbo Killer" = /decl/music_track/turbokiller,
	"USSR National Anthem" = /decl/music_track/ussrnationalanthem,
	"Wake" = /decl/music_track/wake,
	"We All Lift" = /decl/music_track/wealllift,
	"Wild Encounters" = /decl/music_track/wildencounters
)

/proc/setup_music_tracks(var/list/tracks)
	. = list()
	var/track_list = LAZYLEN(tracks) ? tracks : global.music_tracks
	for(var/track_name in track_list)
		var/track_path = track_list[track_name]
		. += new/datum/track(track_name, track_path)

GLOBAL_GETTER(cable_colors, /list, SetupCableColors())
/proc/SetupCableColors()
	. = list()

	var/list/valid_cable_coils = typesof(/obj/item/stack/cable_coil)
	for(var/ctype in list(
		/obj/item/stack/cable_coil/single,
		/obj/item/stack/cable_coil/cut,
		/obj/item/stack/cable_coil/cyborg,
		/obj/item/stack/cable_coil/fabricator,
		/obj/item/stack/cable_coil/random
	))
		valid_cable_coils -= typesof(ctype)

	var/special_name_mappings = list(/obj/item/stack/cable_coil = "Red")
	for(var/coil_type in valid_cable_coils)
		var/name = special_name_mappings[coil_type] || capitalize(copytext_after_last("[coil_type]", "/"))

		var/obj/item/stack/cable_coil/C = coil_type
		var/color = initial(C.color)

		.[name] = color
	. = sortTim(., /proc/cmp_text_asc)
