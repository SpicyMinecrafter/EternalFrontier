
/obj/machinery/vending/infini/industrial
	name = "Brownstone Solutions Toolfab Deluxe"
	desc = "An engineering vendor that synthesizes both basic engineering equipment and materials for use in building."
	markup = 0
	icon_state = "tool"
	icon_deny = "tool-deny"
	icon_vend = "tool-vend"
	vend_delay = 11
	base_type = /obj/machinery/vending/infini/industrial
	products = list(
		/obj/item/chargen_box/industrial/engineering = 20,
		/obj/item/chargen_box/industrial/firefighter = 20,
		/obj/item/chargen_box/industrial/building = 20,
		/obj/item/chargen_box/industrial/steel = 20,
		/obj/item/chargen_box/industrial/glass = 20,
		/obj/item/chargen_box/industrial/plastic = 20,
		/obj/item/chargen_box/industrial/cable = 20,
		/obj/item/chargen_box/industrial/autolathe = 20,
		/obj/item/chargen_box/industrial/mining = 20,
		/obj/item/chargen_box/industrial/chem_suit = 20,
		/obj/item/chargen_box/industrial/pick = 20,
		/obj/item/chargen_box/industrial/ore_processor = 20,
		/obj/item/chargen_box/industrial/stirling = 20
	)

/obj/machinery/vending/infini/industrial/basic
	name = "Brownstone Solutions Toolfab Standard"
	desc = "An engineering vendor that synthesizes basic engineering equipment. Unfortunately, this one lacks the correct modules to print building materials."
	markup = 0
	icon_state = "tool"
	icon_deny = "tool-deny"
	icon_vend = "tool-vend"
	vend_delay = 11
	base_type = /obj/machinery/vending/infini/industrial/basic
	products = list(
		/obj/item/chargen_box/industrial/engineering = 20,
		/obj/item/chargen_box/industrial/firefighter = 20,
		/obj/item/chargen_box/industrial/building = 20,
		/obj/item/chargen_box/industrial/autolathe = 20,
		/obj/item/chargen_box/industrial/mining = 20,
		/obj/item/chargen_box/industrial/pick = 20,
		/obj/item/chargen_box/industrial/ore_processor = 20,
		/obj/item/chargen_box/industrial/stirling = 20
	)
