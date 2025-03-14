// Map object.
/obj/abstract/turbolift_spawner
	name = "turbolift map placeholder"
	icon = 'icons/obj/turbolift_preview_3x3.dmi'
	dir = SOUTH         // Direction of the holder determines the placement of the lift control panel and doors.
	var/depth = 1       // Number of floors to generate, including the initial floor.
	var/lift_size_x = 2 // Number of turfs on each axis to generate in addition to the first
	var/lift_size_y = 2 // ie. a 3x3 lift would have a value of 2 in each of these variables.

	// Various turf and door types used when generating the turbolift floors.
	var/wall_type =     /turf/wall/elevator
	var/floor_type =    /turf/floor/tiled/dark
	var/door_type =     /obj/machinery/door/airlock/lift
	var/firedoor_type = /obj/machinery/door/firedoor
	var/button_type =   /obj/structure/lift/button
	var/panel_type =    /obj/structure/lift/panel
	var/light_type =    /obj/machinery/light

	var/list/areas_to_use = list()

	var/floor_departure_sound
	var/floor_arrival_sound

	var/turf_id

INITIALIZE_IMMEDIATE(/obj/abstract/turbolift_spawner)
/obj/abstract/turbolift_spawner/Initialize()
	. = ..()
	if(!turf_id)
		turf_id = sequential_id(type)
	if(SSmapping.initialized)
		build_turbolift()
	else
		SSmapping.turbolifts_to_initialize += src

/obj/abstract/turbolift_spawner/Destroy()
	SSmapping.turbolifts_to_initialize -= src
	return ..()

/obj/abstract/turbolift_spawner/proc/build_turbolift()
	// Create our system controller.
	var/datum/turbolift/lift = new()
	if(floor_departure_sound)
		lift.floor_departure_sound = floor_departure_sound
	if(floor_arrival_sound)
		lift.floor_arrival_sound = floor_arrival_sound

	// Holder values since we're moving this object to null ASAP.
	var/ux = x
	var/uy = y
	var/uz = z
	var/udir = dir
	forceMove(null)

	// These modifiers are used in relation to the origin
	// to place the system control panels and doors.
	var/make_walls = isnull(wall_type) ? FALSE : TRUE
	var/wall_offset = make_walls ? 1 : 0 // The thickness of the walls in tiles. Currently just 1 or 0.
	var/int_panel_x
	var/int_panel_y
	var/ext_panel_x
	var/ext_panel_y
	var/door_x1
	var/door_y1
	var/door_x2
	var/door_y2
	var/light_x1
	var/light_x2
	var/light_y1
	var/light_y2

	var/az = 1
	var/ex = (ux+lift_size_x)
	var/ey = (uy+lift_size_y)
	var/ez = (uz+(depth-1))

	switch(dir)

		if(NORTH)

			int_panel_x = ux + floor(lift_size_x/2)
			int_panel_y = uy + wall_offset
			ext_panel_x = ux
			ext_panel_y = ey + 2

			door_x1 = ux + 1
			door_y1 = ey + 1 - wall_offset
			door_x2 = ex - 1
			door_y2 = ey + 1

			light_x1 = ux + wall_offset
			light_y1 = uy + wall_offset
			light_x2 = ux + lift_size_x - wall_offset
			light_y2 = uy + wall_offset

		if(SOUTH)

			int_panel_x = ux + floor(lift_size_x/2)
			int_panel_y = ey - wall_offset
			ext_panel_x = ex
			ext_panel_y = uy - 2

			door_x1 = ux + 1
			door_y1 = uy - 1
			door_x2 = ex - 1
			door_y2 = uy + 1 - wall_offset

			light_x1 = ux + wall_offset
			light_y1 = uy + 1 + wall_offset
			light_x2 = ux + lift_size_x - wall_offset
			light_y2 = uy + lift_size_y - wall_offset

		if(EAST)

			int_panel_x = ux+wall_offset
			int_panel_y = uy + floor(lift_size_y/2)
			ext_panel_x = ex+2
			ext_panel_y = ey

			door_x1 = ex + 1 - wall_offset
			door_y1 = uy + 1
			door_x2 = ex + 1
			door_y2 = ey - 1

			light_x1 = ux + wall_offset
			light_y1 = uy + wall_offset
			light_x2 = ux + wall_offset
			light_y2 = uy + lift_size_x - wall_offset

		if(WEST)

			int_panel_x = ex-wall_offset
			int_panel_y = uy + floor(lift_size_y/2)
			ext_panel_x = ux-2
			ext_panel_y = uy

			door_x1 = ux - 1
			door_y1 = uy + 1
			door_x2 = ux + 1 - wall_offset
			door_y2 = ey - 1

			light_x1 = ux + lift_size_x - wall_offset
			light_y1 = uy + wall_offset
			light_x2 = ux + lift_size_x - wall_offset
			light_y2 = uy + lift_size_y - wall_offset

	// Generate each floor and store it in the controller datum.
	for(var/cz = uz;cz<=ez;cz++)

		var/datum/turbolift_floor/cfloor = new()
		lift.floors += cfloor

		var/list/floor_turfs = list()
		// Update the appropriate turfs.
		for(var/tx = ux to ex)
			for(var/ty = uy to ey)

				var/turf/checking = locate(tx,ty,cz)

				if(!istype(checking))
					log_debug("[name] cannot find a component turf at [tx],[ty] on floor [cz]. Aborting.")
					qdel(src)
					return

				// Update path appropriately if needed.
				var/swap_to = /turf/space // this will be resolved to the appropriate open turf type by ChangeTurf().
				if(cz == uz)                                                                       // Elevator.
					if(wall_type && (tx == ux || ty == uy || tx == ex || ty == ey) && !(tx >= door_x1 && tx <= door_x2 && ty >= door_y1 && ty <= door_y2))
						swap_to = wall_type
					else
						swap_to = floor_type

				if(checking.type != swap_to)
					var/turf/wall/wall = checking.ChangeTurf(swap_to, keep_air = TRUE, update_open_turfs_above = FALSE)
					if(istype(wall) && turf_id)
						wall.unique_merge_identifier = turf_id
						wall.queue_icon_update()
					// Let's make absolutely sure that we have the right turf.
					checking = locate(tx,ty,cz)

				// Clear out contents.
				for(var/atom/movable/thing in checking.contents)
					if(thing.simulated)
						qdel(thing)

				if(tx >= ux && tx <= ex && ty >= uy && ty <= ey)
					floor_turfs += checking

		var/area_path = areas_to_use[az]
		var/area/A = locate(area_path) || new area_path()
		for(var/T in floor_turfs)
			ChangeArea(T, A)
		cfloor.set_area_ref("\ref[A]")

		// Place exterior doors.
		if(door_type || firedoor_type)
			for(var/tx = door_x1 to door_x2)
				for(var/ty = door_y1 to door_y2)
					var/turf/checking = locate(tx,ty,cz)
					var/internal = 1
					if(!(checking in floor_turfs))
						internal = 0
						if(checking.type != floor_type)
							checking.ChangeTurf(floor_type, keep_air = TRUE, update_open_turfs_above = FALSE)
							checking = locate(tx,ty,cz)
						for(var/atom/movable/thing in checking.contents)
							if(thing.simulated)
								qdel(thing)
					if(checking.type == floor_type) // Don't build over empty space on lower levels.
						var/obj/machinery/door/airlock/lift/newdoor
						if(door_type)
							newdoor = new door_type(checking)
							if(internal)
								lift.doors += newdoor
								newdoor.lift = lift
							else
								cfloor.doors += newdoor
								newdoor.floor = cfloor
								if(firedoor_type)
									var/obj/machinery/door/firedoor/newfiredoor = new firedoor_type(checking)
									cfloor.doors += newfiredoor

		// Place exterior control panel.
		var/turf/placing = locate(ext_panel_x, ext_panel_y, cz)
		var/obj/structure/lift/button/panel_ext = new button_type(placing, lift)
		panel_ext.floor = cfloor
		panel_ext.set_dir(udir)
		cfloor.ext_panel = panel_ext

		// Update area.
		if(az > areas_to_use.len)
			log_debug("Insufficient defined areas in turbolift datum, aborting.")
			qdel(src)
			return
		az++

	// Place lift panel.
	var/turf/T = locate(int_panel_x, int_panel_y, uz)
	lift.control_panel_interior = new panel_type(T, lift)
	lift.control_panel_interior.set_dir(udir)
	lift.current_floor = lift.floors[1]

	// Place interior lights
	if(light_type)
		var/turf/placing1 = locate(light_x1, light_y1, uz)
		var/turf/placing2 = locate(light_x2, light_y2, uz)
		var/obj/machinery/light/light1 = new light_type(placing1, light)
		var/obj/machinery/light/light2 = new light_type(placing2, light)
		if(udir == NORTH || udir == SOUTH)
			light1.set_dir(WEST)
			light2.set_dir(EAST)
		else
			light1.set_dir(SOUTH)
			light2.set_dir(NORTH)

	if(SSmisc_late.initialized)
		lift.open_doors()
	else
		SSmisc_late.turbolifts_to_open += lift

	qdel(src) // We're done.
