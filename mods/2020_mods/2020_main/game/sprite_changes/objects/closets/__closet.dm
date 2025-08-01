/obj/structure/closet
	icon = 'mods/2020_mods/2020_main/icons/obj/closet.dmi'
	icon_state = "closed"

	var/icon_closed = "closed"
	var/icon_opened = "open"

	var/icon_locked
	var/icon_broken = "sparks"
	var/icon_off

/obj/structure/closet/on_update_icon()
	cut_overlays()

	if(!opened)
		if(broken && icon_off)
			icon_state = icon_off
			add_overlay(icon_broken)
		else if((setup & CLOSET_HAS_LOCK) && locked && icon_locked)
			icon_state = icon_locked
		else
			icon_state = icon_closed
		if(welded)
			add_overlay("welded")
	else
		icon_state = icon_opened

/////Other Changes
/obj/structure/closet/athletic_mixed
	icon_state = "mixed"
	icon_closed = "mixed"

/obj/structure/closet/lasertag/red
	icon_state = "red"
	icon_closed = "red"

/obj/structure/closet/lasertag/blue
	icon_state = "blue"
	icon_closed = "blue"

/obj/structure/closet/cabinet
	icon_state = "cabinet_closed"
	icon_closed = "cabinet_closed"
	icon_opened = "cabinet_open"

/obj/structure/closet/acloset
	icon_state = "acloset"
	icon_closed = "acloset"
	icon_opened = "aclosetopen"

/obj/structure/closet/gimmick
	icon_state = "syndicate1"
	icon_closed = "syndicate1"
	icon_opened = "syndicate1open"

/obj/structure/closet/thunderdome/tdred
	icon_state = "syndicate"
	icon_closed = "syndicate"
	icon_opened = "syndicateopen"

/obj/structure/closet/gmcloset
	icon_state = "black"
	icon_closed = "black"

/obj/structure/closet/chefcloset
	icon_state = "black"
	icon_closed = "black"

/obj/structure/closet/jcloset
	icon_state = "mixed"
	icon_closed = "mixed"

/obj/structure/closet/lawcloset
	icon_state = "blue"
	icon_closed = "blue"

/obj/structure/closet/l3closet
	icon_state = "bio"
	icon_closed = "bio"
	icon_opened = "bioopen"

/obj/structure/closet/l3closet/virology
	icon_state = "bio_virology"
	icon_closed = "bio_virology"
	icon_opened = "bio_virologyopen"

/obj/structure/closet/l3closet/security
	icon_state = "bio_security"
	icon_closed = "bio_security"
	icon_opened = "bio_securityopen"

/obj/structure/closet/l3closet/janitor
	icon_state = "bio_janitor"
	icon_closed = "bio_janitor"
	icon_opened = "bio_janitoropen"

/obj/structure/closet/l3closet/scientist
	icon_state = "bio_scientist"
	icon_closed = "bio_scientist"
	icon_opened = "bio_scientistopen"

/obj/structure/closet/l3closet/command
	icon_state = "bio_command"
	icon_closed = "bio_command"
	icon_opened = "bio_commandopen"

/obj/structure/closet/malf/suits
	icon_state = "syndicate1"
	icon_closed = "syndicate1"
	icon_opened = "syndicate1open"

/obj/structure/closet/syndicate
	icon_state = "syndicate"
	icon_closed = "syndicate"
	icon_opened = "syndicateopen"

/obj/structure/closet/emcloset
	icon_state = "emergency"
	icon_closed = "emergency"
	icon_opened = "emergencyopen"

/obj/structure/closet/firecloset
	icon_state = "firecloset"
	icon_closed = "firecloset"
	icon_opened = "fireclosetopen"

/obj/structure/closet/toolcloset
	icon_state = "toolcloset"
	icon_closed = "toolcloset"
	icon_opened = "toolclosetopen"

/obj/structure/closet/radiation
	icon_state = "radsuitcloset"
	icon_closed = "radsuitcloset"
	icon_opened = "toolclosetopen"

/obj/structure/closet/bombcloset
	icon_state = "bombsuit"
	icon_closed = "bombsuit"
	icon_opened = "bombsuitopen"

/obj/structure/closet/bombclosetsecurity
	icon_state = "bombsuitsecopen"
	icon_closed = "bombsuitsecopen"
	icon_opened = "bombsuitsec"

/obj/structure/closet/hydrant
	icon = 'mods/2020_mods/2020_main/icons/obj/closet.dmi'
	icon_state = "hydrant"
	icon_closed = "hydrant"
	icon_opened = "hydrant_open"

/obj/structure/closet/medical_wall
	icon_state = "medical_wall_first_aid"
	icon_closed = "medical_wall_first_aid"
	icon_opened = "medical_wall_first_aid_open"
	icon = 'mods/2020_mods/2020_main/icons/obj/closet.dmi'

/obj/structure/closet/shipping_wall
	icon_state = "shipping_wall"
	icon_closed = "shipping_wall"
	icon_opened = "shipping_wall_open"
	icon = 'mods/2020_mods/2020_main/icons/obj/closet.dmi'

/obj/structure/closet/wardrobe
	icon_state = "blue"
	icon_closed = "blue"

/obj/structure/closet/wardrobe/pink
	icon_state = "pink"
	icon_closed = "pink"

/obj/structure/closet/wardrobe/black
	icon_state = "black"
	icon_closed = "black"

/obj/structure/closet/wardrobe/chaplain_black
	icon_state = "black"
	icon_closed = "black"

/obj/structure/closet/wardrobe/green
	icon_state = "green"
	icon_closed = "green"

/obj/structure/closet/wardrobe/xenos
	icon_state = "green"
	icon_closed = "green"

/obj/structure/closet/wardrobe/orange
	icon_state = "orange"
	icon_closed = "orange"

/obj/structure/closet/wardrobe/yellow
	icon_state = "yellow"
	icon_closed = "yellow"

/obj/structure/closet/wardrobe/atmospherics_yellow
	icon_state = "yellow"
	icon_closed = "yellow"

/obj/structure/closet/wardrobe/engineering_yellow
	icon_state = "yellow"
	icon_closed = "yellow"

/obj/structure/closet/wardrobe/white
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/pjs
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/science_white
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/robotics_black
	icon_state = "black"
	icon_closed = "black"

/obj/structure/closet/wardrobe/chemistry_white
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/genetics_white
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/virology_white
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/medic_white
	icon_state = "white"
	icon_closed = "white"

/obj/structure/closet/wardrobe/grey
	icon_state = "grey"
	icon_closed = "grey"

/obj/structure/closet/wardrobe/mixed
	icon_state = "mixed"
	icon_closed = "mixed"

/obj/structure/closet/wardrobe/tactical
	icon_state = "syndicate1"
	icon_closed = "syndicate1"
	icon_opened = "syndicate1open"

/obj/structure/closet/wardrobe/suit
	icon_state = "mixed"
	icon_closed = "mixed"

/obj/structure/closet/wardrobe/lawyer_black
	icon_state = "black"
	icon_closed = "black"

////Secure Lockers
/obj/structure/closet/secure_closet
	icon_state = "secure"
	icon_closed = "secure"
	icon_locked = "secure1"
	icon_opened = "secureopen"
	icon_off = "secureoff"

/obj/structure/closet/secure_closet/cargotech
	icon_state = "securecargo"
	icon_closed = "securecargo"
	icon_locked = "securecargo1"
	icon_opened = "securecargoopen"
	icon_off = "securecargooff"

/obj/structure/closet/secure_closet/quartermaster
	icon_state = "secureqm"
	icon_closed = "secureqm"
	icon_locked = "secureqm1"
	icon_opened = "secureqmopen"
	icon_off = "secureqmoff"

/obj/structure/closet/secure_closet/engineering_chief
	icon_state = "securece"
	icon_closed = "securece"
	icon_locked = "securece1"
	icon_opened = "secureceopen"
	icon_off = "secureceoff"

/obj/structure/closet/secure_closet/engineering_electrical
	icon_state = "secureengelec"
	icon_closed = "secureengelec"
	icon_locked = "secureengelec1"
	icon_opened = "toolclosetopen"
	icon_off = "secureengelecoff"

/obj/structure/closet/secure_closet/engineering_welding
	icon_state = "secureengweld"
	icon_closed = "secureengweld"
	icon_locked = "secureengweld1"
	icon_opened = "toolclosetopen"
	icon_off = "secureengweldoff"

/obj/structure/closet/secure_closet/engineering_personal
	icon_state = "secureeng"
	icon_closed = "secureeng"
	icon_locked = "secureeng1"
	icon_opened = "secureengopen"
	icon_off = "secureengoff"

/obj/structure/closet/secure_closet/atmos_personal
	icon_state = "secureatm"
	icon_closed = "secureatm"
	icon_locked = "secureatm1"
	icon_opened = "secureatmopen"
	icon_off = "secureatmoff"

/obj/structure/closet/secure_closet/freezer/meat
	icon = 'mods/2020_mods/2020_main/icons/obj/closet.dmi'
	icon_state = "fridge"
	icon_closed = "fridge"
	icon_locked = "fridge1"
	icon_opened = "fridgeopen"
	icon_off = "fridgebroken"

/obj/structure/closet/secure_closet/freezer/fridge
	icon = 'mods/2020_mods/2020_main/icons/obj/closet.dmi'
	icon_state = "fridge"
	icon_closed = "fridge"
	icon_locked = "fridge1"
	icon_opened = "fridgeopen"
	icon_off = "fridgebroken"

/obj/structure/closet/secure_closet/freezer/money
	icon = 'mods/2020_mods/2020_main/icons/obj/closet.dmi'
	icon_state = "fridge"
	icon_closed = "fridge"
	icon_locked = "fridge1"
	icon_opened = "fridgeopen"
	icon_off = "fridgebroken"

/obj/structure/closet/secure_closet/guncabinet
	icon = 'mods/2020_mods/2020_main/icons/obj/guncabinet.dmi'
	icon_state = "base"

/obj/structure/closet/secure_closet/hydroponics
	icon_state = "hydrosecure"
	icon_closed = "hydrosecure"
	icon_locked = "hydrosecure1"
	icon_opened = "hydrosecureopen"
	icon_off = "hydrosecureoff"

/obj/structure/closet/secure_closet/hydroponics/sci
	icon_state = "hydrosecure"
	icon_closed = "hydrosecure"
	icon_locked = "hydrosecure1"
	icon_opened = "hydrosecureopen"
	icon_off = "hydrosecureoff"

/obj/structure/closet/secure_closet/medical1
	icon_state = "medical"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_off = "medicaloff"

/obj/structure/closet/secure_closet/medical3
	icon_state = "securemed"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_off = "securemedoff"

/obj/structure/closet/secure_closet/paramedic
	icon_state = "medical"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_off = "medicaloff"

/obj/structure/closet/secure_closet/cmo
	icon_state = "cmosecure"
	icon_closed = "cmosecure"
	icon_locked = "cmosecure1"
	icon_opened = "cmosecureopen"
	icon_off = "cmosecureoff"

/obj/structure/closet/secure_closet/chemical
	icon_state = "medical"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_off = "medicaloff"

/obj/structure/closet/secure_closet/medical_wall
	icon_state = "medical_wall_unlocked"
	icon_closed = "medical_wall_unlocked"
	icon_locked = "medical_wall_locked"
	icon_opened = "medical_wall_open"
	icon_off = "medical_wall_off"

/obj/structure/closet/secure_closet/counselor
	icon_state = "medical"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_off = "medicaloff"

/obj/structure/closet/secure_closet/virology
	icon_state = "secureviro"
	icon_closed = "secureviro"
	icon_locked = "secureviro1"
	icon_opened = "secureviroopen"
	icon_off = "securevirooff"

/obj/structure/closet/secure_closet/psychiatry
	icon_state = "securemed"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_off = "securemedoff"

/obj/structure/closet/secure_closet/scientist
	icon_state = "secureres"
	icon_closed = "secureres"
	icon_locked = "secureres1"
	icon_opened = "secureresopen"
	icon_off = "secureresoff"

/obj/structure/closet/secure_closet/xenobio
	icon_state = "secureres"
	icon_closed = "secureres"
	icon_locked = "secureres1"
	icon_opened = "secureresopen"
	icon_off = "secureresoff"

/obj/structure/closet/secure_closet/research_director
	icon_state = "rdsecure"
	icon_closed = "rdsecure"
	icon_locked = "rdsecure1"
	icon_opened = "rdsecureopen"
	icon_off = "rdsecureoff"

/obj/structure/closet/secure_closet/captains
	icon_state = "capsecure"
	icon_closed = "capsecure"
	icon_locked = "capsecure1"
	icon_opened = "capsecureopen"
	icon_off = "capsecureoff"

/obj/structure/closet/secure_closet/hop
	icon_state = "hopsecure"
	icon_closed = "hopsecure"
	icon_locked = "hopsecure1"
	icon_opened = "hopsecureopen"
	icon_off = "hopsecureoff"

/obj/structure/closet/secure_closet/hop2
	icon_state = "hopsecure"
	icon_closed = "hopsecure"
	icon_locked = "hopsecure1"
	icon_opened = "hopsecureopen"
	icon_off = "hopsecureoff"

/obj/structure/closet/secure_closet/hos
	icon_state = "hossecure"
	icon_closed = "hossecure"
	icon_locked = "hossecure1"
	icon_opened = "hossecureopen"
	icon_off = "hossecureoff"

/obj/structure/closet/secure_closet/warden
	icon_state = "wardensecure"
	icon_closed = "wardensecure"
	icon_locked = "wardensecure1"
	icon_opened = "wardensecureopen"
	icon_off = "wardensecureoff"

/obj/structure/closet/secure_closet/security
	icon_state = "sec"
	icon_closed = "sec"
	icon_locked = "sec1"
	icon_opened = "secopen"
	icon_off = "secoff"

/obj/structure/closet/secure_closet/detective
	icon_state = "cabinetdetective"
	icon_closed = "cabinetdetective"
	icon_locked = "cabinetdetective1"
	icon_opened = "cabinetdetectiveopen"
	icon_off = "cabinetdetectiveoff"

/obj/structure/closet/secure_closet/chaplain
	icon_state = "chaplainsecure"
	icon_closed = "chaplainsecure"
	icon_locked = "chaplainsecure1"
	icon_opened = "chaplainsecureopen"
	icon_off = "chaplainsecureoff"