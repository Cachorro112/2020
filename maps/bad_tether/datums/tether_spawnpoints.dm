// Tram arrival point landmarks and datum
var/global/list/latejoin_tram   = list()

/obj/abstract/landmark/latejoin/tram/add_loc()
	global.latejoin_tram |= get_turf(src) // Register this turf as tram latejoin.
	..() // Also register this turf as fallback latejoin, since we won't have any arrivals shuttle landmarks.

/decl/spawnpoint/tram
	name = "Tram Station"
	msg = "has arrived on the tram"

/decl/spawnpoint/cryo/two/Initialize()
	. = ..()
	turfs = global.latejoin_tram