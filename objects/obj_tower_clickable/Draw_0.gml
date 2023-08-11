/// @description Draw menu
draw_self();

// permadraw cost
draw_text(x - 25, y - 45, $"{cost}");

if (check_mouse_hover(x, y, sprite_width, sprite_height)) {
	// draw name if hovering over
	draw_set_valign(fa_bottom);
	draw_text_ext(x - 25, y - 45, $"{name}\n{desc}", -1, 256); // limit length
	draw_set_valign(fa_top);
}