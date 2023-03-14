/datum/map/kleibkhar
	name = "Kleibkhar"
	full_name = "Kleibkhar Colony"
	path = "kleibkhar"

	station_name  = "Kleibkhar Colony"
	station_short = "Kleibkhar Colony"

	evac_controller_type = /datum/evacuation_controller/lifepods

	radiation_detected_message = "High levels of radiation have been detected near the surface of %STATION_NAME%. Please move to a shielded area."

	allowed_spawns = list(/decl/spawnpoint/cryo)
	default_spawn = /decl/spawnpoint/cryo
	shuttle_docked_message = "The shuttle has docked."
	shuttle_leaving_dock = "The shuttle has departed from home dock."
	shuttle_called_message = "A scheduled transfer shuttle has been sent."
	shuttle_recall_message = "The shuttle has been recalled"
	emergency_shuttle_docked_message = "The emergency escape shuttle has docked."
	emergency_shuttle_leaving_dock = "The emergency escape shuttle has departed from %dock_name%."
	emergency_shuttle_called_message = "An emergency escape shuttle has been sent."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled"

	lobby_screens = list(
		'maps/kleibkhar/lobby/EF-BG.png'
	)
	lobby_tracks = list(\
		/decl/music_track/redsectora,
		/decl/music_track/holdon,
		/decl/music_track/bringinghometherain,
		/decl/music_track/gimmeshelter,
		/decl/music_track/thehorror)


	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

/datum/map/kleibkhar/get_map_info()
	return "Several years ago the galactic war ended with most worlds completely destroyed. Many homeworlds were lost and Earth was among them. The remnants of each species scatters to avoid the lawless populated systems or what was left of them. One way or another you found yourself here, ready to start a new life on a cold yet habitable rimworld."