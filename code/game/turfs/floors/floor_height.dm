/turf/floor
	var/height = 0

/turf/floor/get_physical_height()
	return density ? 0 : height

/turf/floor/set_physical_height(new_height)
	if(height != new_height)
		height = new_height
		for(var/turf/neighbor as anything in RANGE_TURFS(src, 1))
			neighbor.update_icon()
		fluid_update()
		for(var/atom/movable/thing in contents)
			thing.on_turf_height_change(new_height)
		return TRUE
	return FALSE
