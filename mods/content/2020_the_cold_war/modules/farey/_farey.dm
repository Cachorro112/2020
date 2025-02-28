#define SPECIES_FAREY  "Farey"
#define SPECIES_FAREYS  "Fareys"
#define LANGUAGE_FAREY_WEST "Kalyecis"
#define LANGUAGE_FAREY_CENTRAL "Abidys"
#define LANGUAGE_FAREY_EAST "Cyrel"

/mob/living/human/farey/Initialize(mapload, species_name, datum/mob_snapshot/supplied_appearance)
	. = ..(species_name = SPECIES_FAREY)
