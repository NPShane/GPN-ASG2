/// @desc Draw GUI depending on room
switch (room) {
	case rm_game:
		// draw game GUI
		draw_set_color(c_black);
		draw_text(10,10,"Coins: " + string(global.coins));
		draw_text(10,30,"Level: " + string(global.level));
		draw_text(room_width - 140, 10, "SPACE to Pause");
		draw_set_color(c_white);
		
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
				draw_set_alpha(0.5);
				draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
				draw_set_alpha(1);
				draw_set_halign(fa_center);
				draw_text_transformed_colour(room_width / 2, room_height / 2 - 20, "PAUSED", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
				draw_text_transformed_colour(room_width / 2, room_height / 2 + 20, "SPACE to Unpause", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				draw_set_halign(fa_left);
			}
		}
		break;
	default:
		// draw error if nothing
		draw_text(10, 10, "An error has occured in the GUI");
		break;
}