/// @description draw boxes 
// draw boxes on top and bottom
var _width_shrink = 150;
draw_sprite_ext(spr_box, 0, 0, 0, room_width, _width_shrink, 0, c_black, 1);
draw_sprite_ext(spr_box, 0, 0, room_height - _width_shrink, room_width, _width_shrink, 0, c_black, 1);
// draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, room_height - (_width_shrink * 2 / 3), current_drawn_text);
if (key_hold_duration > 0) {
    draw_text_color(room_width / 2, room_height - (_width_shrink * 1 / 3), "Hold SPACE to skip", c_white, c_white, c_white, c_white, wave_between(1, 0, 1.5, 0));
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
// darken or brighten screen
draw_sprite_ext(spr_box, 0, 0, 0, room_width, room_height, 0, c_black, fadeout_alpha);