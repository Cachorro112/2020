/*
Space dust
Commonish random event that causes small clumps of "space dust" to hit the station at high speeds.
The "dust" will damage the hull of the station causin minor hull breaches.
*/

/datum/event/dust
	startWhen	= 10
	endWhen		= 30
	var/min_delay = 30
	var/last_wave

/datum/event/dust/announce()
	command_announcement.Announce("The [location_name()] is now passing through a belt of space dust.", "[location_name()] Sensor Array", zlevels = affecting_z)

/datum/event/dust/tick()
	if(world.time > last_wave + min_delay && prob(10) && length(affecting_z))
		dust_swarm(severity, affecting_z)

/datum/event/dust/end()
	command_announcement.Announce("The [location_name()] has now passed through the belt of space dust.", "[location_name()] Sensor Array", zlevels = affecting_z)

/proc/dust_swarm(var/strength = EVENT_LEVEL_MUNDANE, var/list/zlevels)

	if(!length(zlevels))
		return // Not sure how this happened, but saw it in a runtime on Pyrelight.

	var/numbers = rand(strength * 10, strength * 15)

	var/start_dir = pick(global.cardinal)
	var/turf/startloc
	var/turf/targloc
	var/randomz = pick(zlevels)
	var/randomx = rand(1+TRANSITIONEDGE*2, world.maxx-TRANSITIONEDGE*2)
	var/randomy = rand(1+TRANSITIONEDGE*2, world.maxx-TRANSITIONEDGE*2)
	switch(start_dir)
		if(NORTH)
			startloc = locate(randomx, world.maxy - TRANSITIONEDGE, randomz)
			targloc = locate(world.maxx - randomx,  1 + TRANSITIONEDGE, randomz)
		if(SOUTH)
			startloc = locate(randomx, 1 + TRANSITIONEDGE, randomz)
			targloc = locate(world.maxx - randomx, world.maxy - TRANSITIONEDGE, randomz)
		if(EAST)
			startloc = locate(world.maxx - TRANSITIONEDGE, randomy, randomz)
			targloc = locate(1 + TRANSITIONEDGE, world.maxy - randomy, randomz)
		if(WEST)
			startloc = locate(1 + TRANSITIONEDGE, randomy, randomz)
			targloc = locate(world.maxx - TRANSITIONEDGE, world.maxy - randomy, randomz)
	var/list/starters = getcirclesafe(startloc, 3)
	starters += startloc

	var/rocks_per_tile = round(numbers/starters.len)
	for(var/turf/T in starters)
		for(var/i = 1 to rocks_per_tile)
			var/obj/item/projectile/bullet/rock/R = new(T)
			R.launch(locate(targloc.x + (T.x - startloc.x), targloc.y + (T.y - startloc.y), targloc.z)) // offset the target to match start offset so we fire in straight lines; this is adapted legacy code