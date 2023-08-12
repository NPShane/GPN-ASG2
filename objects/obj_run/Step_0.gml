if (room == rm_level1) {
	// only allow pause/loss during run
	if (keyboard_check_pressed(vk_space)) {
		// pause on esc
		paused = !paused;
		if (!paused) {
			// unpause if going out of pause
			instance_activate_all();
			surface_free(paused_surf);
			paused_surf = -1;
		}
	}
	if (global.lives <= 0) {
		// run is over
		room_goto(rm_lose);
	}
}