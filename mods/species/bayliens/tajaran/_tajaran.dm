#define LANGUAGE_TAJARA "Siik'maas"
#define BODYTYPE_FELINE "feline body"
#define BODY_EQUIP_FLAG_FELINE BITFLAG(7)

/obj/item
	var/_feline_icon

/obj/item/setup_sprite_sheets()
	. = ..()
	if(_feline_icon && !(BODYTYPE_FELINE in sprite_sheets))
		LAZYSET(sprite_sheets, BODYTYPE_FELINE, _feline_icon)

/obj/item/clothing/setup_equip_flags()
	. = ..()
	if(bodytype_equip_flags & BODY_EQUIP_FLAG_EXCLUDE)
		bodytype_equip_flags |= BODY_EQUIP_FLAG_FELINE

/mob/living/human/tajaran/Initialize(mapload, species_name, datum/mob_snapshot/supplied_appearance)
	. = ..(species_name = SPECIES_TAJARA)
