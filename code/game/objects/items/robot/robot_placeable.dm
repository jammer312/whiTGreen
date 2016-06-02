//wrost shitcode, as i thought

/obj/item/robot_parts/equippable/plaseble
	var/obj/storage = null	//placeable

/obj/item/robot_parts/equippable/plaseble/attach_to_robot(var/mob/living/silicon/robot/M)
	holding_robot = M
	if(storage && M.module)
		M.module.placeable += storage
		M.module.modules += storage
		storage.loc = M.module

/obj/item/robot_parts/equippable/plaseble/detach_from_robot(var/mob/living/silicon/robot/M)
	if(storage)
		if(M.module)
			M.module.placeable.Remove(storage)
			M.uneq_module(storage)
			M.module.modules.Remove(storage)
		storage.loc = src
		if(M.module)
			M.module.rebuild()			//No need to fix modules, as it's done in rebild()
	holding_robot = null

/obj/item/robot_parts/equippable/simple_tool/New()
	..()
	if(tool.m_amt != 0 || tool.g_amt != 0)
		m_amt = tool.m_amt + 60
	if(tool.m_amt != 0 || tool.g_amt != 0)
		g_amt = tool.g_amt
	if(tool.origin_tech)
		origin_tech = tool.origin_tech

//=========================================

/obj/item/robot_parts/equippable/plaseble/beaker
	icon_state = "beaker"
	item_state = "beaker"
	name = "cyborg beaker"
	desc = "A beaker. It attached to the holder."

/obj/item/robot_parts/equippable/plaseble/beaker/New()
	if(!storage)
		storage = new/obj/item/weapon/reagent_containers/glass/beaker(src)
	..()

/obj/item/robot_parts/equippable/plaseble/beaker/large
	icon_state = "beakerlarge"
	name = "cyborg large beaker"
	desc = "A large beaker. It attached to the holder."

/obj/item/robot_parts/equippable/plaseble/beaker/large/New()
	storage = new/obj/item/weapon/reagent_containers/glass/beaker/large(src)
	..()

/obj/item/robot_parts/equippable/plaseble/beaker/noreact
	icon_state = "beakernoreact"
	name = "cyborg cryostasis beaker"
	desc = "A cryostasis beaker. It attached to the holder."

/obj/item/robot_parts/equippable/plaseble/beaker/noreact/New()
	storage = new/obj/item/weapon/reagent_containers/glass/beaker/noreact(src)
	..()

/obj/item/robot_parts/equippable/plaseble/beaker/bluespace
	icon_state = "beakerbluespace"
	name = "cyborg bluespace beaker"
	desc = "A bluespace beaker. It attached to the holder."

/obj/item/robot_parts/equippable/plaseble/beaker/bluespace/New()
	storage = new/obj/item/weapon/reagent_containers/glass/beaker/bluespace(src)
	..()

/obj/item/robot_parts/equippable/plaseble/drinkingglass
	icon_state = "drinkingglass"
	item_state = null
	name = "cyborg glass"
	desc = "A glass. It attached to the holder."

/obj/item/robot_parts/equippable/plaseble/drinkingglass/New()
	storage = new/obj/item/weapon/reagent_containers/food/drinks/drinkingglass(src)
	..()

/obj/item/robot_parts/equippable/plaseble/syringe
	icon_state = "syringe"
	item_state = null
	name = "modular syringe"
	desc = "Cyborg module which allows syringe using."

/obj/item/robot_parts/equippable/plaseble/syringe/New()
	storage = new/obj/item/weapon/reagent_containers/syringe(src)
	..()

/obj/item/robot_parts/equippable/plaseble/dropper
	icon_state = "dropper"
	item_state = null
	name = "modular dropper"
	desc = "Cyborg module which allows dropper using."

/obj/item/robot_parts/equippable/plaseble/dropper/New()
	storage = new/obj/item/weapon/reagent_containers/dropper(src)
	..()

/obj/item/robot_parts/equippable/plaseble/bucket
	icon_state = "bucket"
	name = "modular bucket"
	desc = "Cyborg module which allows bucket using."

/obj/item/robot_parts/equippable/plaseble/bucket/New()
	storage = new/obj/item/weapon/reagent_containers/glass/bucket/cyborg(src)
	..()