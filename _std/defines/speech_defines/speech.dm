/// Returns all atoms that are capable of hearing the centre. As with `hearers`, this is computed on the assumption that opaque objects block sound.
#define atom_hearers(dist, centre) ((isturf(centre.loc) ? view(dist, get_turf(centre)) : centre.loc.contents + centre.loc) + centre.contents)


/*

WIP: replacement for `all_hearers`, but it considers all atoms, and edgecases have been removed.

/proc/atom_hearers(dist, atom/centre)
	. = list()

	if (isturf(centre.loc))
		var/turf/T = centre.loc
		. += view(dist, T)

		if (T.vistarget)
			. += atom_hearers(dist, T.vistarget)

	else
		. += centre.loc + centre.loc.contents


	for (var/atom/A as anything in .)
		if (A.open_to_sound || (A == centre))
			. += A.contents
		else if (ismob(A))
			var/mob/M = A
			. += M.observers
*/


/// Enables the new say() speech system for all applicable atoms. TODO: Remove.
#define NEWSPEECH 1


//------------- COOLDOWNS -------------//
/// The minimum time between voice sound effects for a single atom. Measured in tenths of a second.
#define VOICE_SOUND_COOLDOWN 8
/// The minimum time between playing the cluwne laugh for atoms affacted by it. Measured in tenths of a second.
#define CLUWNE_NOISE_COOLDOWN 50


//------------- MESSAGE RANGES -------------//
/// The maximum distance from which whispered messages may be clearly heard.
#define WHISPER_RANGE 1
/// The maximum distance from which LOOC messages may be heard.
#define LOOC_RANGE 8
