/obj/item/gun/energy/temperature
	name = "temperature gun"
	icon = 'icons/obj/guns/freezegun.dmi'
	icon_state = "freezegun"
	item_state = "freezegun"
	fire_sound = 'sound/weapons/pulse3.ogg'
	desc = "A gun that changes temperatures. It has a small label on the side, 'More extreme temperatures will cost more charge!'"
	matter = list(
		MAT_STEEL = MATTER_AMOUNT_PRIMARY,
		MAT_GLASS = MATTER_AMOUNT_REINFORCEMENT,
		MAT_SILVER = MATTER_AMOUNT_TRACE
	)
	charge_cost = 10
	origin_tech = "{'combat':3,'materials':4,'powerstorage':3,'magnets':2}"
	slot_flags = SLOT_BELT|SLOT_BACK
	one_hand_penalty = 2
	wielded_item_state = "gun_wielded"
	projectile_type = /obj/item/projectile/temp
	cell_type = /obj/item/cell/high
	combustion = 0
	var/firing_temperature = T20C
	var/current_temperature = T20C

/obj/item/gun/energy/temperature/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)


/obj/item/gun/energy/temperature/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()


/obj/item/gun/energy/temperature/attack_self(mob/living/user)
	user.set_machine(src)
	var/temp_text = ""
	if(firing_temperature > (T0C - 50))
		temp_text = "<FONT color=black>[firing_temperature] ([round(firing_temperature-T0C)]&deg;C) ([round(firing_temperature*1.8-459.67)]&deg;F)</FONT>"
	else
		temp_text = "<FONT color=blue>[firing_temperature] ([round(firing_temperature-T0C)]&deg;C) ([round(firing_temperature*1.8-459.67)]&deg;F)</FONT>"

	var/dat = {"<B>Freeze Gun Configuration: </B><BR>
	Current output temperature: [temp_text]<BR>
	Target output temperature: <A href='?src=\ref[src];temp=-100'>-</A> <A href='?src=\ref[src];temp=-10'>-</A> <A href='?src=\ref[src];temp=-1'>-</A> [current_temperature] <A href='?src=\ref[src];temp=1'>+</A> <A href='?src=\ref[src];temp=10'>+</A> <A href='?src=\ref[src];temp=100'>+</A><BR>
	"}

	show_browser(user, dat, "window=freezegun;size=450x300;can_resize=1;can_close=1;can_minimize=1")
	onclose(user, "window=freezegun", src)

/obj/item/gun/energy/temperature/Topic(user, href_list, state = GLOB.inventory_state)
	..()

/obj/item/gun/energy/temperature/OnTopic(user, href_list)
	if(href_list["temp"])
		var/amount = text2num(href_list["temp"])
		if(amount > 0)
			src.current_temperature = min(500, src.current_temperature+amount)
		else
			src.current_temperature = max(0, src.current_temperature+amount)
		. = TOPIC_REFRESH

		attack_self(user)

/obj/item/gun/energy/temperature/Process()
	switch(firing_temperature)
		if(0 to 100) charge_cost = 100
		if(100 to 250) charge_cost = 50
		if(251 to 300) charge_cost = 10
		if(301 to 400) charge_cost = 50
		if(401 to 500) charge_cost = 100

	if(current_temperature != firing_temperature)
		var/difference = abs(current_temperature - firing_temperature)
		if(difference >= 10)
			if(current_temperature < firing_temperature)
				firing_temperature -= 10
			else
				firing_temperature += 10
		else
			firing_temperature = current_temperature
