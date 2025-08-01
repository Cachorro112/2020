//Mostly used for memetic anomalies, which are one of the main thing of 2020.
/decl/anomaly
	///Meta Flags for the Anomaly
	var/metaFlags
	///Datum Parent
	var/atom/parent

	///Proc called as an effect from memetic anomaly
	var/memetic_proc
	///Flags that determine how a memetic anomaly is detected
	var/memeticFlags
	///Sounds that are considered memetic
	var/list/memetic_sounds

/datum/scp/New(atom/creation, vMetaFlags)

	metaFlags = vMetaFlags

	parent = creation

	RegisterSignal(parent, COMSIG_ATOM_EXAMINED, PROC_REF(OnExamine))
	onGain()

/datum/scp/Destroy()
	. = ..()
	UnregisterSignal(parent, COMSIG_ATOM_EXAMINED)
	parent = null

/decl/anomaly/proc/compInit() //if more comps are added for SCPs, they can be put here
	if(metaFlags & ANO_MEMETIC)
		meme_comp = parent.AddComponent(/datum/component/memetic, memeticFlags, memetic_proc, memetic_sounds)

/datum/scp/proc/onGain()

/datum/scp/proc/onLose()