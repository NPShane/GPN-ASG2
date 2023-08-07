/// @description Check pause and loss

if (room == rm_game) {
	// only allow pause/loss ingame
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
		// game has been lost
		room_goto(rm_lose);
	}
}

if(paused) {
	// hold timers if paused
	alarm[0]++;
	alarm[1]++;
}