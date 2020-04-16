/obj/item/grenade/anti_photon
	desc = "An experimental device for temporarily removing light in a limited area."
	name = "photon disruption grenade"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "emp"
	item_state = "emp"
	det_time = 20
	origin_tech = "{'bluespace':4,'materials':4}"
	matter = list(
		MAT_STEEL = MATTER_AMOUNT_PRIMARY,
		MAT_GLASS = MATTER_AMOUNT_REINFORCEMENT,
		MAT_DIAMOND = MATTER_AMOUNT_TRACE
	)

/obj/item/grenade/anti_photon/detonate()
	playsound(src.loc, 'sound/effects/phasein.ogg', 50, 1, 5)
	set_light(-1, 6, 10, 2, "#ffffff")
	addtimer(CALLBACK(src, .proc/finish), rand(20 SECONDS, 29 SECONDS))

/obj/item/grenade/anti_photon/proc/finish()
	set_light(1, 1, 10, 2, "#[num2hex(rand(64,255))][num2hex(rand(64,255))][num2hex(rand(64,255))]")
	playsound(loc, 'sound/effects/bang.ogg', 50, 1, 5)
	sleep(1 SECOND)
	qdel(src)