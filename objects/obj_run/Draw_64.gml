if (paused) {
	// if paused draw pause GUI instead
	if (!surface_exists(paused_surf)) {
		// if pause surface doesn't exist then create it
		if (paused_surf == -1) instance_deactivate_all(true); // pause everything 
		paused_surf = surface_create(room_width, room_height);
		surface_set_target(paused_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}
	else {
		// fill up the pause GUI if its surface is created
		draw_surface(paused_surf, 0, 0);
		draw_sprite_ext(spr_box, 0, 0, 0, room_width, room_height, 0, c_black, 0.4);
		draw_set_halign(fa_center);
		draw_text_transformed(room_width / 2, room_height / 2 - 20, "PAUSED", 2, 2, 0);
		draw_text_color(room_width / 2, room_height / 2 + 20, "SPACE to Unpause", c_white, c_white, c_white, c_white, wave_between(1, 0, 1.5, 0));
		draw_set_halign(fa_left);
	}
}