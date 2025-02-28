//Hairstyles

/decl/sprite_accessory/hair/far
	name = "Bands"
	icon_state = "belle_bands"
	species_allowed = list(SPECIES_FAREY)
	icon = 'mods/content/2020_the_cold_war/icons/mobs/species/farey/hair.dmi'
	color_blend = ICON_MULTIPLY
	uid = "acc_hair_far_bands"


/decl/sprite_accessory/hair/far/get_hidden_substitute()
	if(accessory_flags & VERY_SHORT)
		return src
	return GET_DECL(/decl/sprite_accessory/hair/bald)

/decl/sprite_accessory/hair/far/apollo
	name = "Apollo"
	icon_state = "apollo"
	uid = "acc_hair_far_apollo"

/*
/decl/sprite_accessory/hair/tak/straight
	name = "Takivak Straight Hair"
	icon_state = "hair_straight"
	uid = "acc_hair_tak_straight"

/decl/sprite_accessory/hair/tak/clean
	name = "Takivak Clean"
	icon_state = "hair_clean"
	uid = "acc_hair_tak_clean"

/decl/sprite_accessory/hair/tak/shaggy
	name = "Takivak Shaggy"
	icon_state = "hair_shaggy"
	uid = "acc_hair_tak_shaggy"

/decl/sprite_accessory/hair/tak/mohawk
	name = "Takivak Mohawk"
	icon_state = "hair_mohawk"
	uid = "acc_hair_tak_mohawk"

/decl/sprite_accessory/hair/tak/plait
	name = "Takivak Plait"
	icon_state = "hair_plait"
	uid = "acc_hair_tak_plait"

/decl/sprite_accessory/hair/tak/long
	name = "Takivak Long Hair"
	icon_state = "hair_long"
	uid = "acc_hair_tak_long"

/decl/sprite_accessory/hair/tak/spiky
	name = "Takivak Spiky"
	icon_state = "hair_spiky"
	uid = "acc_hair_tak_spiky"

/decl/sprite_accessory/hair/tak/bangs
	name = "Takivak Bangs"
	icon_state = "hair_bangs"
	uid = "acc_hair_tak_bangs"

/decl/sprite_accessory/hair/tak/messy
	name = "Takivak Messy"
	icon_state = "hair_messy"
	uid = "acc_hair_tak_messy"

/decl/sprite_accessory/hair/tak/braid
	name = "Takivak Braid"
	icon_state = "hair_braid"
	uid = "acc_hair_tak_braid"

/decl/sprite_accessory/hair/tak/bob
	name = "Takivak Bob"
	icon_state = "hair_bob"
	uid = "acc_hair_tak_bob"

/decl/sprite_accessory/hair/tak/weave
	name = "Takivak Fingerweave"
	icon_state = "hair_fingerwave"
	uid = "acc_hair_tak_weave"

/decl/sprite_accessory/hair/tak/braid_alt
	name = "Takivak Braid Alt"
	icon_state = "hair_braid_alt"
	uid = "acc_hair_tak_braidalt"

/decl/sprite_accessory/hair/tak/swoop
	name = "Takivak Swoop"
	icon_state = "hair_swoop"
	uid = "acc_hair_tak_swoop"

/decl/sprite_accessory/hair/tak/swoop_alt
	name = "Takivak Swoop Alt"
	icon_state = "hair_swoop_alt"
	uid = "acc_hair_tak_swoop_alt"

/decl/sprite_accessory/hair/tak/longswoop
	name = "Takivak Long Swoop"
	icon_state = "hair_longswoop"
	uid = "acc_hair_tak_longswoop"

/decl/sprite_accessory/hair/tak/longswoop_alt
	name = "Takivak Long Swoop Alt"
	icon_state = "hair_longswoop_alt"
	uid = "acc_hair_tak_longswoop_alt"

/decl/sprite_accessory/hair/tak/swoop_bangs
	name = "Takivak Swoop Bangs"
	icon_state = "hair_swoop_bangs"
	uid = "acc_hair_tak_swoop_bangs"

/decl/sprite_accessory/hair/tak/cascading
	name = "Takivak Cascading"
	icon_state = "hair_cascading"
	uid = "acc_hair_tak_cascading"

/decl/sprite_accessory/hair/tak/victory
	name = "Takivak Victory"
	icon_state = "hair_victory"
	uid = "acc_hair_tak_victory"

/decl/sprite_accessory/hair/tak/curly
	name = "Takivak Curly"
	icon_state = "hair_curly"
	uid = "acc_hair_tak_curly"

/decl/sprite_accessory/hair/tak/curly_alt
	name = "Takivak Curly Alt"
	icon_state = "hair_curlyalt"
	uid = "acc_hair_tak_curlyalt"

/decl/sprite_accessory/hair/tak/gman
	name = "Takivak Government man"
	icon_state = "hair_gman"
	uid = "acc_hair_tak_gman"

/decl/sprite_accessory/hair/tak/overeye
	name = "Takivak Overeye"
	icon_state = "hair_overeye"
	uid = "acc_hair_tak_overeye"

/decl/sprite_accessory/hair/tak/tough
	name = "Takivak Tough"
	icon_state = "hair_tough"
	uid = "acc_hair_tak_tough"

/decl/sprite_accessory/hair/tak/cuttail
	name = "Takivak Cut Tail"
	icon_state = "hair_cuttail"
	uid = "acc_hair_tak_cuttail"

/decl/sprite_accessory/hair/tak/dreadlocks
	name = "Takivak Dreadlocks"
	icon_state = "hair_dreadlocks"
	uid = "acc_hair_tak_deadlocks"

/decl/sprite_accessory/facial_hair/tak
	name = "Takivak Sideburns"
	icon_state = "facial_sideburns"
	species_allowed = list(SPECIES_TAKIVAK)
	icon = 'mods/content/2020_the_cold_war/modules/takivak/icons/facial.dmi'
	color_blend = ICON_MULTIPLY
	uid = "acc_fhair_tak_sideburns"

/decl/sprite_accessory/facial_hair/tak/mutton
	name = "Takivak Mutton Chops"
	icon_state = "facial_mutton"
	uid = "acc_fhair_tak_mutton"

/decl/sprite_accessory/facial_hair/tak/pencilstache
	name = "Takivak Pencil Moustache"
	icon_state = "facial_pencilstache"
	uid = "acc_fhair_tak_pencilstache"

/decl/sprite_accessory/facial_hair/tak/moustache
	name = "Takivak Moustache"
	icon_state = "facial_moustache"
	uid = "acc_fhair_tak_moustache"

/decl/sprite_accessory/facial_hair/tak/goatee
	name = "Takivak Goatee"
	icon_state = "facial_goatee"
	uid = "acc_fhair_tak_goatee"

/decl/sprite_accessory/facial_hair/tak/smallstache
	name = "Takivak Small Moustache"
	icon_state = "facial_smallstache"
	uid = "acc_fhair_tak_smallstache"

//
/decl/sprite_accessory/marking/takivak
	name = "Takivak Nose"
	icon_state = "nose"
	icon = 'mods/content/2020_the_cold_war/modules/takivak/icons/markings.dmi'
	species_allowed = list(SPECIES_TAKIVAK)
	body_parts = list(BP_HEAD)
	color_blend = ICON_MULTIPLY
	uid = "acc_marking_taj_nose"

/decl/sprite_accessory/marking/takivak/ears
	name = "Takivak Wide Ears"
	icon_state = "ears_plain"
	mask_to_bodypart = FALSE
	uid = "acc_marking_taj_wideears"

/decl/sprite_accessory/marking/takivak/ears/wide_inner
	name = "Takivak Wide Ears Interior"
	icon_state = "ears_plain_inner"
	uid = "acc_marking_taj_wideears_inner"

/decl/sprite_accessory/marking/takivak/ears/wide_tuft
	name = "Takivak Wide Ears Tuft"
	icon_state = "ears_plain_tuft"
	uid = "acc_marking_taj_wideears_tuft"

/decl/sprite_accessory/marking/takivak/ears/narrow
	name = "Takivak Narrow Ears"
	icon_state = "ears_narrow"
	uid = "acc_marking_taj_narrowears"

/decl/sprite_accessory/marking/takivak/ears/narrow_inner
	name = "Takivak Narrow Ears Interior"
	icon_state = "ears_narrow_inner"
	uid = "acc_marking_taj_narrowears_inner"

/decl/sprite_accessory/marking/takivak/ears/narrow_tuft
	name = "Takivak Narrow Ears Tuft"
	icon_state = "ears_narrow_tuft"
	uid = "acc_marking_taj_narrowears_tuft"

/decl/sprite_accessory/marking/takivak/ears/earrings
	name = "Takivak Earrings"
	icon_state = "taj_earrings"
	uid = "acc_marking_taj_earrings"

/decl/sprite_accessory/marking/takivak/patches
	name = "Patches (Body)"
	icon_state = "patches"
	body_parts = list(BP_CHEST, BP_GROIN)
	accessory_flags = HAIR_LOSS_VULNERABLE
	uid = "acc_marking_taj_patches"

/decl/sprite_accessory/marking/takivak/patches/left_arm
	name = "Patches (Left Arm)"
	body_parts = list(BP_L_ARM, BP_L_HAND)
	uid = "acc_marking_taj_patches_leftarm"

/decl/sprite_accessory/marking/takivak/patches/right_arm
	name = "Patches (Right Arm)"
	body_parts = list(BP_R_ARM, BP_R_HAND)
	uid = "acc_marking_taj_patches_rightarm"

/decl/sprite_accessory/marking/takivak/patches/left_leg
	name = "Patches (Left Leg)"
	body_parts = list(BP_L_LEG, BP_L_FOOT)
	uid = "acc_marking_taj_patches_leftleg"

/decl/sprite_accessory/marking/takivak/patches/right_leg
	name = "Patches (Right Leg)"
	body_parts = list(BP_R_LEG, BP_R_FOOT)
	uid = "acc_marking_taj_patches_rightleg"

/decl/sprite_accessory/marking/takivak/tiger
	name = "Tiger Stripes (Head)"
	icon_state = "tiger"
	accessory_flags = HAIR_LOSS_VULNERABLE
	uid = "acc_marking_taj_tiger_head"

/decl/sprite_accessory/marking/takivak/tiger/body
	name = "Tiger Stripes (Body)"
	body_parts = list(BP_CHEST, BP_GROIN)
	uid = "acc_marking_taj_tiger_body"

/decl/sprite_accessory/marking/takivak/tiger/left_arm
	name = "Tiger Stripes (Left Arm)"
	body_parts = list(BP_L_ARM, BP_L_HAND)
	uid = "acc_marking_taj_tiger_leftarm"

/decl/sprite_accessory/marking/takivak/tiger/right_arm
	name = "Tiger Stripes (Right Arm)"
	body_parts = list(BP_R_ARM, BP_R_HAND)
	uid = "acc_marking_taj_tiger_rightarm"

/decl/sprite_accessory/marking/takivak/tiger/left_leg
	name = "Tiger Stripes (Left Leg)"
	body_parts = list(BP_L_LEG, BP_L_FOOT)
	uid = "acc_marking_taj_tiger_leftleg"

/decl/sprite_accessory/marking/takivak/tiger/right_leg
	name = "Tiger Stripes (Right Leg)"
	body_parts = list(BP_R_LEG, BP_R_FOOT)
	uid = "acc_marking_taj_tiger_rightleg"

/decl/sprite_accessory/marking/takivak/spots
	name = "Spots (Head)"
	icon_state = "spots"
	accessory_flags = HAIR_LOSS_VULNERABLE
	uid = "acc_marking_taj_spots_head"

/decl/sprite_accessory/marking/takivak/spots/body
	name = "Spots (Body)"
	body_parts = list(BP_CHEST, BP_GROIN)
	uid = "acc_marking_taj_spots_body"

/decl/sprite_accessory/marking/takivak/spots/left_arm
	name = "Spots (Left Arm)"
	body_parts = list(BP_L_ARM, BP_L_HAND)
	uid = "acc_marking_taj_spots_leftarm"

/decl/sprite_accessory/marking/takivak/spots/right_arm
	name = "Spots (Right Arm)"
	body_parts = list(BP_R_ARM, BP_R_HAND)
	uid = "acc_marking_taj_spots_rightarm"

/decl/sprite_accessory/marking/takivak/spots/left_leg
	name = "Spots (Left Leg)"
	body_parts = list(BP_L_LEG, BP_L_FOOT)
	uid = "acc_marking_taj_spots_leftleg"

/decl/sprite_accessory/marking/takivak/spots/right_leg
	name = "Spots (Right Leg)"
	body_parts = list(BP_R_LEG, BP_R_FOOT)
	uid = "acc_marking_taj_spots_rightleg"

/decl/sprite_accessory/marking/takivak/pawsocks
	name = "Pawsocks (Left Arm)"
	icon_state = "pawsocks"
	body_parts = list(BP_L_ARM, BP_L_HAND)
	accessory_flags = HAIR_LOSS_VULNERABLE
	uid = "acc_marking_taj_pawsocks_leftarm"

/decl/sprite_accessory/marking/takivak/pawsocks/right_arm
	name = "Pawsocks (Right Arm)"
	body_parts = list(BP_R_ARM, BP_R_HAND)
	uid = "acc_marking_taj_pawsocks_rightarm"

/decl/sprite_accessory/marking/takivak/pawsocks/left_leg
	name = "Pawsocks (Left Leg)"
	body_parts = list(BP_L_LEG, BP_L_FOOT)
	uid = "acc_marking_taj_pawsocks_leftleg"

/decl/sprite_accessory/marking/takivak/pawsocks/right_leg
	name = "Pawsocks (Right Leg)"
	body_parts = list(BP_R_LEG, BP_R_FOOT)
	uid = "acc_marking_taj_pawsocks_rightleg"

/decl/sprite_accessory/marking/takivak/belly
	name = "Belly"
	icon_state = "belly"
	body_parts = list(BP_CHEST, BP_GROIN)
	accessory_flags = HAIR_LOSS_VULNERABLE
	uid = "acc_marking_taj_belly"
*/