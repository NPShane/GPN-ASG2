draw_self();
draw_text(x-15,y-45,string(cost));
if (check_mouse_hover(x,y,sprite_width,sprite_height)) {
	// draw name if hovering over
	draw_text(x-15,y-60,name);
}