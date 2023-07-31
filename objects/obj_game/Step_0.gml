/// @description Pause if key pressed

if(room == rm_game) {
	// only allow pause ingame
	if(keyboard_check_pressed(vk_escape)) {
		// pause on esc
		paused = !paused;
		if(!paused) {
			// unpause if going out of pause
			instance_activate_all();
			surface_free(paused_surf);
			paused_surf = -1;
		}
	}
}

if(paused) {
	// hold timers if paused
	alarm[0]++;
	alarm[1]++;
}