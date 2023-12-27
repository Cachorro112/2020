 /**
  * StonedMC
  *
  * Designed to properly split up a given tick among subsystems
  * Note: if you read parts of this code and think "why is it doing it that way"
  * Odds are, there is a reason
  *
 **/

var/global/datum/controller/master/Master = new

//THIS IS THE INIT ORDER
//Master -> SSPreInit -> world -> config -> SSInit -> Failsafe
//GOT IT MEMORIZED?

/datum/controller/master
	name = "Master"

	// Are we processing (higher values increase the processing delay by n ticks)
	var/processing = TRUE
	// How many times have we ran
	var/iteration = 0

	// world.time of last fire, for tracking lag outside of the mc
	var/last_run

	// List of subsystems to process().
	var/list/subsystems

	// Vars for keeping track of tick drift.
	var/init_timeofday
	var/init_time
	var/tickdrift = 0

	var/sleep_delta = 1

	var/make_runtime = 0

	var/initializations_finished_with_no_players_logged_in	//I wonder what this could be?

	var/initializing = FALSE

	// The type of the last subsystem to be process()'d.
	var/last_type_processed

	var/datum/controller/subsystem/queue_head //Start of queue linked list
	var/datum/controller/subsystem/queue_tail //End of queue linked list (used for appending to the list)
	var/queue_priority_count = 0 //Running total so that we don't have to loop thru the queue each run to split up the tick
	var/queue_priority_count_bg = 0 //Same, but for background subsystems
	var/map_loading = FALSE	//Are we loading in a new map?

	var/list/total_run_times
	var/current_runlevel	//for scheduling different subsystems for different stages of the round

	var/static/restart_clear = 0
	var/static/restart_timeout = 0
	var/static/restart_count = 0

	//current tick limit, assigned before running a subsystem.
	//used by CHECK_TICK as well so that the procs subsystems call can obey that SS's tick limits
	var/static/current_ticklimit = TICK_LIMIT_RUNNING

/datum/controller/master/New()
	total_run_times = list()
	// Highlander-style: there can only be one! Kill off the old and replace it with the new.
	var/list/_subsystems = list()
	subsystems = _subsystems
	if (Master != src)
		if (istype(Master))
			Recover()
			qdel(Master)
		else
			var/list/subsytem_types = subtypesof(/datum/controller/subsystem)
			sortTim(subsytem_types, /proc/cmp_subsystem_init)
			for(var/I in subsytem_types)
				_subsystems += new I
		Master = src

/datum/controller/master/Destroy()
	..()
	// Tell qdel() to Del() this object.
	return QDEL_HINT_HARDDEL_NOW

/datum/controller/master/Shutdown()
	processing = FALSE
	sortTim(subsystems, /proc/cmp_subsystem_init)
	reverseRange(subsystems)
	for(var/datum/controller/subsystem/ss in subsystems)
		if (ss.flags & SS_NEEDS_SHUTDOWN)
			var/time = REALTIMEOFDAY
			report_progress("Shutting down [ss] subsystem...")
			ss.Shutdown()
			report_progress("[ss] shutdown in [(REALTIMEOFDAY - time)/10]s.")
	report_progress("Shutdown complete.")

// Returns 1 if we created a new mc, 0 if we couldn't due to a recent restart,
//	-1 if we encountered a runtime trying to recreate it
/proc/Recreate_MC()
	. = -1 //so if we runtime, things know we failed
	if (world.time < Master.restart_timeout)
		return 0
	if (world.time < Master.restart_clear)
		Master.restart_count *= 0.5

	var/delay = 50 * ++Master.restart_count
	Master.restart_timeout = world.time + delay
	Master.restart_clear = world.time + (delay * 2)
	Master.processing = FALSE //stop ticking this one
	try
		new/datum/controller/master()
	catch
		return -1
	return 1


/datum/controller/master/Recover()
	var/msg = "## DEBUG: [time2text(world.timeofday)] MC restarted. Reports:\n"
	for (var/varname in Master.vars)
		switch (varname)
			if("name", "tag", "bestF", "type", "parent_type", "vars", "statclick") // Built-in junk.
				continue
			else
				var/varval = Master.vars[varname]
				if (istype(varval, /datum)) // Check if it has a type var.
					var/datum/D = varval
					msg += "\t [varname] = [D]([D.type])\n"
				else
					msg += "\t [varname] = [varval]\n"
	log_world(msg)

	var/datum/controller/subsystem/BadBoy = Master.last_type_processed
	var/FireHim = FALSE
	if(istype(BadBoy))
		msg = null
		LAZYINITLIST(BadBoy.failure_strikes)
		switch(++BadBoy.failure_strikes[BadBoy.type])
			if(2)
				msg = "The [BadBoy.name] subsystem was the last to fire for 2 controller restarts. It will be recovered now and disabled if it happens again."
				FireHim = TRUE
			if(3)
				msg = "The [BadBoy.name] subsystem seems to be destabilizing the MC and will be offlined."
				BadBoy.flags |= SS_NO_FIRE
		if(msg)
			to_chat(global.admins, "<span class='boldannounce'>[msg]</span>")
			log_world(msg)

	if (istype(Master.subsystems))
		if(FireHim)
			Master.subsystems += new BadBoy.type	//NEW_SS_GLOBAL will remove the old one
		subsystems = Master.subsystems
		current_runlevel = Master.current_runlevel
		total_run_times = Master.total_run_times
		StartProcessing(10)
	else
		to_chat(world, "<span class='boldannounce'>The Master Controller is having some issues, we will need to re-initialize EVERYTHING</span>")
		Initialize(20, TRUE)


// Please don't stuff random bullshit here,
// 	Make a subsystem, give it the SS_NO_FIRE flag, and do your work in it's Initialize()
/datum/controller/master/Initialize(delay, init_sss)
	set waitfor = 0

	if(delay)
		sleep(delay)

	if(init_sss)
		init_subtypes(/datum/controller/subsystem, subsystems)

	report_progress("Initializing subsystems...")

	initializing = TRUE

	// Sort subsystems by init_order, so they initialize in the correct order.
	sortTim(subsystems, /proc/cmp_subsystem_init)

	var/start_timeofday = REALTIMEOFDAY
	// Initialize subsystems.
	current_ticklimit = config.tick_limit_mc_init
	for (var/datum/controller/subsystem/SS in subsystems)
		if (SS.flags & SS_NO_INIT)
			continue
		SS.DoInitialize(REALTIMEOFDAY)
		CHECK_TICK
	current_ticklimit = TICK_LIMIT_RUNNING
	var/time = (REALTIMEOFDAY - start_timeofday) / 10

	var/msg = "Initializations complete within [time] second\s!"
	report_progress(msg)
	log_world(msg)

	initializing = FALSE

	if (!current_runlevel)
		SetRunLevel(RUNLEVEL_LOBBY)

	// Sort subsystems by display setting for easy access.
	sortTim(subsystems, /proc/cmp_subsystem_display)
	// Set world options.
#ifdef UNIT_TEST
	world.sleep_offline = FALSE
#else
	world.sleep_offline = TRUE
#endif
	if(world.fps != config.fps)
		world.fps = config.fps
		SStimer.reset_buckets()
	var/initialized_tod = REALTIMEOFDAY

	initializations_finished_with_no_players_logged_in = initialized_tod < REALTIMEOFDAY - 10
	// Loop.
	Master.StartProcessing(0)

/datum/controller/master/proc/SetRunLevel(new_runlevel)
	var/old_runlevel = current_runlevel
	if(isnull(old_runlevel))
		old_runlevel = "NULL"

	current_runlevel = log(2, new_runlevel) + 1
	report_progress("MC: Runlevel changed from [old_runlevel] to [current_runlevel]")
	if(current_runlevel < 1)
		CRASH("Attempted to set invalid runlevel: [new_runlevel]")

// Starts the mc, and sticks around to restart it if the loop ever ends.
/datum/controller/master/proc/StartProcessing(delay)
	set waitfor = 0
	if(delay)
		sleep(delay)
	report_progress("Master starting processing")
	SSwebhooks.send(WEBHOOK_ROUNDPREP, list("map" = station_name(), "url" = get_world_url()))
	var/rtn = Loop()
	if (rtn > 0 || processing < 0)
		return //this was suppose to happen.
	//loop ended, restart the mc
	log_game("MC crashed or runtimed, restarting")
	message_admins("MC crashed or runtimed, restarting")
	var/rtn2 = Recreate_MC()
	if (rtn2 <= 0)
		log_game("Failed to recreate MC (Error code: [rtn2]), it's up to the failsafe now")
		message_admins("Failed to recreate MC (Error code: [rtn2]), it's up to the failsafe now")
		Failsafe.defcon = 2

// Main loop.
#define RUNLEVEL_MAX 16
/datum/controller/master/proc/Loop()
	. = -1
	//Prep the loop (most of this is because we want MC restarts to reset as much state as we can, and because
	//	local vars rock

	//all this shit is here so that flag edits can be refreshed by restarting the MC. (and for speed)
	var/list/tickersubsystems = list()
	var/list/runlevel_sorted_subsystems = list(list())	//ensure we always have at least one runlevel
	var/timer = world.time
	for (var/thing in subsystems)
		var/datum/controller/subsystem/SS = thing
		if (SS.flags & SS_NO_FIRE)
			continue
		SS.queued_time = 0
		SS.queue_next = null
		SS.queue_prev = null
		SS.state = SS_IDLE
		if (SS.flags & SS_TICKER)
			tickersubsystems += SS
			timer += world.tick_lag * rand(0,1)
			SS.next_fire = timer
			continue

		var/ss_runlevels = SS.runlevels
		var/added_to_any = FALSE
		for(var/i in 1 to RUNLEVEL_MAX)
			if(ss_runlevels & BITFLAG(i-1))
				while(runlevel_sorted_subsystems.len < i)
					runlevel_sorted_subsystems += list(list())
				runlevel_sorted_subsystems[i] += SS
				added_to_any = TRUE
		if(!added_to_any)
			WARNING("[SS.name] subsystem is not SS_NO_FIRE but also does not have any runlevels set!")

	queue_head = null
	queue_tail = null
	//these sort by lower priorities first to reduce the number of loops needed to add subsequent SS's to the queue
	//(higher subsystems will be sooner in the queue, adding them later in the loop means we don't have to loop thru them next queue add)
	sortTim(tickersubsystems, /proc/cmp_subsystem_priority)
	for(var/I in runlevel_sorted_subsystems)
		sortTim(I, /proc/cmp_subsystem_priority)
		I += tickersubsystems

	var/cached_runlevel = current_runlevel
	var/list/current_runlevel_subsystems = runlevel_sorted_subsystems[cached_runlevel]

	init_timeofday = REALTIMEOFDAY
	init_time = world.time

	iteration = 1
	var/error_level = 0
	var/sleep_delta = 1
	var/list/subsystems_to_check
	//the actual loop.

	while (1)
		tickdrift = max(0, MC_AVERAGE_FAST(tickdrift, (((REALTIMEOFDAY - init_timeofday) - (world.time - init_time)) / world.tick_lag)))
		var/starting_tick_usage = TICK_USAGE
		if (processing <= 0)
			current_ticklimit = TICK_LIMIT_RUNNING
			sleep(10)
			continue

		//Anti-tick-contention heuristics:
		//if there are mutiple sleeping procs running before us hogging the cpu, we have to run later.
		//	(because sleeps are processed in the order received, longer sleeps are more likely to run first)
		if (starting_tick_usage > TICK_LIMIT_MC) //if there isn't enough time to bother doing anything this tick, sleep a bit.
			sleep_delta *= 2
			current_ticklimit = TICK_LIMIT_RUNNING * 0.5
			sleep(world.tick_lag * (processing * sleep_delta))
			continue

		//Byond resumed us late. assume it might have to do the same next tick
		if (last_run + NONUNIT_CEILING(world.tick_lag * (processing * sleep_delta), world.tick_lag) < world.time)
			sleep_delta += 1

		sleep_delta = MC_AVERAGE_FAST(sleep_delta, 1) //decay sleep_delta

		if (starting_tick_usage > (TICK_LIMIT_MC*0.75)) //we ran 3/4 of the way into the tick
			sleep_delta += 1

		//debug
		if (make_runtime)
			var/datum/controller/subsystem/SS
			SS.can_fire = 0

		if (!Failsafe || (Failsafe.processing_interval > 0 && (Failsafe.lasttick+(Failsafe.processing_interval*5)) < world.time))
			new/datum/controller/failsafe() // (re)Start the failsafe.

		//now do the actual stuff
		if (!queue_head || !(iteration % 3))
			var/checking_runlevel = current_runlevel
			if(cached_runlevel != checking_runlevel)
				//resechedule subsystems
				var/list/old_subsystems = current_runlevel_subsystems
				cached_runlevel = checking_runlevel
				current_runlevel_subsystems = runlevel_sorted_subsystems[cached_runlevel]

				//now we'll go through all the subsystems we want to offset and give them a next_fire
				for(var/datum/controller/subsystem/SS as anything in current_runlevel_subsystems)
					//we only want to offset it if it's new and also behind
					if(SS.next_fire > world.time || (SS in old_subsystems))
						continue
					SS.next_fire = world.time + world.tick_lag * rand(0, DS2TICKS(min(SS.wait, 2 SECONDS)))

			subsystems_to_check = current_runlevel_subsystems
		else
			subsystems_to_check = tickersubsystems

		if (CheckQueue(subsystems_to_check) <= 0)
			if (!SoftReset(tickersubsystems, runlevel_sorted_subsystems))
				log_world("MC: SoftReset() failed, crashing")
				return
			if (!error_level)
				iteration++
			error_level++
			current_ticklimit = TICK_LIMIT_RUNNING
			sleep(10)
			continue

		if (queue_head)
			if (RunQueue() <= 0)
				if (!SoftReset(tickersubsystems, runlevel_sorted_subsystems))
					log_world("MC: SoftReset() failed, crashing")
					return
				if (!error_level)
					iteration++
				error_level++
				current_ticklimit = TICK_LIMIT_RUNNING
				sleep(10)
				continue
		error_level--
		if (!queue_head) //reset the counts if the queue is empty, in the off chance they get out of sync
			queue_priority_count = 0
			queue_priority_count_bg = 0

		iteration++
		last_run = world.time
		src.sleep_delta = MC_AVERAGE_FAST(src.sleep_delta, sleep_delta)
		current_ticklimit = TICK_LIMIT_RUNNING
		if (processing * sleep_delta <= world.tick_lag)
			current_ticklimit -= (TICK_LIMIT_RUNNING * 0.25) //reserve the tail 1/4 of the next tick for the mc if we plan on running next tick
		sleep(world.tick_lag * (processing * sleep_delta))
#undef RUNLEVEL_MAX



// This is what decides if something should run.
/datum/controller/master/proc/CheckQueue(list/subsystemstocheck)
	. = 0 //so the mc knows if we runtimed

	//we create our variables outside of the loops to save on overhead
	var/datum/controller/subsystem/SS
	var/SS_flags

	for (var/thing in subsystemstocheck)
		if (!thing)
			subsystemstocheck -= thing
		SS = thing
		if (SS.state != SS_IDLE)
			continue
		if (SS.can_fire <= 0)
			continue
		if (SS.next_fire > world.time)
			continue
		if(SS.suspended)
			continue
		SS_flags = SS.flags
		if (SS_flags & SS_NO_FIRE)
			subsystemstocheck -= SS
			continue
		if ((SS_flags & (SS_TICKER|SS_KEEP_TIMING)) == SS_KEEP_TIMING && SS.last_fire + (SS.wait * 0.75) > world.time)
			continue
		SS.enqueue()
	. = 1


// Run thru the queue of subsystems to run, running them while balancing out their allocated tick precentage
/datum/controller/master/proc/RunQueue()
	. = 0
	var/datum/controller/subsystem/queue_node
	var/queue_node_flags
	var/queue_node_priority
	var/queue_node_paused

	var/current_tick_budget
	var/tick_precentage
	var/tick_remaining
	var/ran = TRUE //this is right
	var/ran_non_ticker = FALSE
	var/bg_calc //have we swtiched current_tick_budget to background mode yet?
	var/tick_usage

	//keep running while we have stuff to run and we haven't gone over a tick
	//	this is so subsystems paused eariler can use tick time that later subsystems never used
	while (ran && queue_head && TICK_USAGE < TICK_LIMIT_MC)
		ran = FALSE
		bg_calc = FALSE
		current_tick_budget = queue_priority_count
		queue_node = queue_head
		while (queue_node)
			if (ran && TICK_USAGE > TICK_LIMIT_RUNNING)
				break

			queue_node_flags = queue_node.flags
			queue_node_priority = queue_node.queued_priority

			//super special case, subsystems where we can't make them pause mid way through
			//if we can't run them this tick (without going over a tick)
			//we bump up their priority and attempt to run them next tick
			//(unless we haven't even ran anything this tick, since its unlikely they will ever be able run
			//	in those cases, so we just let them run)
			if (queue_node_flags & SS_NO_TICK_CHECK)
				if (queue_node.tick_usage > TICK_LIMIT_RUNNING - TICK_USAGE && ran_non_ticker)
					queue_node.queued_priority += queue_priority_count * 0.1
					queue_priority_count -= queue_node_priority
					queue_priority_count += queue_node.queued_priority
					current_tick_budget -= queue_node_priority
					queue_node = queue_node.queue_next
					continue

			if ((queue_node_flags & SS_BACKGROUND) && !bg_calc)
				current_tick_budget = queue_priority_count_bg
				bg_calc = TRUE

			tick_remaining = TICK_LIMIT_RUNNING - TICK_USAGE

			if (current_tick_budget > 0 && queue_node_priority > 0)
				tick_precentage = tick_remaining / (current_tick_budget / queue_node_priority)
			else
				tick_precentage = tick_remaining

			tick_precentage = max(tick_precentage*0.5, tick_precentage-queue_node.tick_overrun)

			current_ticklimit = round(TICK_USAGE + tick_precentage)

			if (!(queue_node_flags & SS_TICKER))
				ran_non_ticker = TRUE
			ran = TRUE

			queue_node_paused = (queue_node.state == SS_PAUSED || queue_node.state == SS_PAUSING)
			last_type_processed = queue_node

			queue_node.state = SS_RUNNING

			tick_usage = TICK_USAGE
			var/state = queue_node.ignite(queue_node_paused)
			tick_usage = TICK_USAGE - tick_usage

			if (state == SS_RUNNING)
				state = SS_IDLE
			current_tick_budget -= queue_node_priority


			if (tick_usage < 0)
				tick_usage = 0
			queue_node.tick_overrun = max(0, MC_AVG_FAST_UP_SLOW_DOWN(queue_node.tick_overrun, tick_usage-tick_precentage))
			queue_node.state = state

			if (state == SS_PAUSED)
				queue_node.paused_ticks++
				queue_node.paused_tick_usage += tick_usage
				queue_node = queue_node.queue_next
				continue

			queue_node.ticks = MC_AVERAGE(queue_node.ticks, queue_node.paused_ticks)
			tick_usage += queue_node.paused_tick_usage

			queue_node.tick_usage = MC_AVERAGE_FAST(queue_node.tick_usage, tick_usage)
			total_run_times[queue_node.name] += ((tick_usage / 100) * world.tick_lag) / 10

			queue_node.cost = MC_AVERAGE_FAST(queue_node.cost, TICK_DELTA_TO_MS(tick_usage))
			queue_node.paused_ticks = 0
			queue_node.paused_tick_usage = 0

			if (queue_node_flags & SS_BACKGROUND) //update our running total
				queue_priority_count_bg -= queue_node_priority
			else
				queue_priority_count -= queue_node_priority

			queue_node.last_fire = world.time
			queue_node.times_fired++

			if (queue_node_flags & SS_TICKER)
				queue_node.next_fire = world.time + (world.tick_lag * queue_node.wait)
			else if (queue_node_flags & SS_POST_FIRE_TIMING)
				queue_node.next_fire = world.time + queue_node.wait + (world.tick_lag * (queue_node.tick_overrun/100))
			else if (queue_node_flags & SS_KEEP_TIMING)
				queue_node.next_fire += queue_node.wait
			else
				queue_node.next_fire = queue_node.queued_time + queue_node.wait + (world.tick_lag * (queue_node.tick_overrun/100))

			queue_node.queued_time = 0

			//remove from queue
			queue_node.dequeue()

			queue_node = queue_node.queue_next

	. = 1

//resets the queue, and all subsystems, while filtering out the subsystem lists
//	called if any mc's queue procs runtime or exit improperly.
/datum/controller/master/proc/SoftReset(list/ticker_SS, list/runlevel_SS)
	. = 0
	log_world("MC: SoftReset called, resetting MC queue state.")
	if (!istype(subsystems) || !istype(ticker_SS) || !istype(runlevel_SS))
		log_world("MC: SoftReset: Bad list contents: '[subsystems]' '[ticker_SS]' '[runlevel_SS]'")
		return
	var/subsystemstocheck = subsystems + ticker_SS
	for(var/I in runlevel_SS)
		subsystemstocheck |= I

	for (var/thing in subsystemstocheck)
		var/datum/controller/subsystem/SS = thing
		if (!SS || !istype(SS))
			//list(SS) is so if a list makes it in the subsystem list, we remove the list, not the contents
			subsystems -= list(SS)
			ticker_SS -= list(SS)
			for(var/I in runlevel_SS)
				I -= list(SS)
			log_world("MC: SoftReset: Found bad entry in subsystem list, '[SS]'")
			continue
		if (SS.queue_next && !istype(SS.queue_next))
			log_world("MC: SoftReset: Found bad data in subsystem queue, queue_next = '[SS.queue_next]'")
		SS.queue_next = null
		if (SS.queue_prev && !istype(SS.queue_prev))
			log_world("MC: SoftReset: Found bad data in subsystem queue, queue_prev = '[SS.queue_prev]'")
		SS.queue_prev = null
		SS.queued_priority = 0
		SS.queued_time = 0
		SS.state = SS_IDLE
	if (queue_head && !istype(queue_head))
		log_world("MC: SoftReset: Found bad data in subsystem queue, queue_head = '[queue_head]'")
	queue_head = null
	if (queue_tail && !istype(queue_tail))
		log_world("MC: SoftReset: Found bad data in subsystem queue, queue_tail = '[queue_tail]'")
	queue_tail = null
	queue_priority_count = 0
	queue_priority_count_bg = 0
	log_world("MC: SoftReset: Finished.")
	. = 1



/datum/controller/master/stat_entry()
	if(!statclick)
		statclick = new/obj/effect/statclick/debug(null, "Initializing...", src)

	stat("Byond:", "(FPS:[world.fps]) (TickCount:[world.time/world.tick_lag]) (TickDrift:[round(Master.tickdrift,1)]([round((Master.tickdrift/(world.time/world.tick_lag))*100,0.1)]%)) (Internal Tick Usage: [round(MAPTICK_LAST_INTERNAL_TICK_USAGE,0.1)]%)")
	stat("Master Controller:", statclick.update("(TickRate:[Master.processing]) (Iteration:[Master.iteration])"))

/// Colors cpu number before output.
/datum/controller/master/proc/format_color_cpu()
	switch(world.cpu)
		// 0-80 = green
		if(0 to 80)
			. = "<font color='#32a852'>[world.cpu]</font>"
		// 80-90 = orange
		if(80 to 90)
			. = "<font color='#fcba03'>[world.cpu]</font>"
		// 90-100 = red
		if(90 to 100)
			. = "<font color='#eb4034'>[world.cpu]</font>"
		// >100 = bold red
		if(100 to INFINITY)
			. = "<font color='#eb4034'><b>[world.cpu]</b></font>"

/// Colors map cpu number before output.
/// Same as before, but specially for map cpu.
/// It uses same colors, but need different number range.
/datum/controller/master/proc/format_color_cpu_map()
	var/current_map_cpu = MAPTICK_LAST_INTERNAL_TICK_USAGE
	switch(current_map_cpu)
		// 0-30 = green
		if(0 to 30)
			. = "<font color='#32a852'>[current_map_cpu]</font>"
		// 30-60 = orange
		if(30 to 60)
			. = "<font color='#fcba03'>[current_map_cpu]</font>"
		// 60-80 = red
		if(60 to 80)
			. = "<font color='#eb4034'>[current_map_cpu]</font>"
		// >100 = bold red
		if(80 to INFINITY)
			. = "<font color='#eb4034'><b>[current_map_cpu]</b></font>"

/datum/controller/master/StartLoadingMap()
	//disallow more than one map to load at once, multithreading it will just cause race conditions
	while(map_loading)
		stoplag()
	for(var/S in subsystems)
		var/datum/controller/subsystem/SS = S
		SS.StartLoadingMap()
	map_loading = TRUE

/datum/controller/master/StopLoadingMap(bounds = null)
	map_loading = FALSE
	for(var/S in subsystems)
		var/datum/controller/subsystem/SS = S
		SS.StopLoadingMap()
