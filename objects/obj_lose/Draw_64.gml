/// @description Draw stats
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(room_width / 2, room_height / 2, "RUN ENDED", 2, 2, 0);
draw_text(room_width / 2, room_height / 3 * 2, "You have failed the Squares.\nThe Circles reign supreme.\nThe Circular Empire shall have no end.");
draw_text(room_width / 2, room_height / 5 * 4, $"ENEMIES DEFEATED: {global.kills}\nWAVES CLEARED: {global.waves_cleared}\nUPGRADE TOKENS: +{upgrades_gained}");
if (new_high) {
    draw_text(room_width / 2, room_height / 5 * 4 + 60, "NEW RECORD");
}
draw_text_color(room_width / 2, room_height - (150 * 1 / 3), "ANY KEY to return to main menu", c_white, c_white, c_white, c_white, wave_between(1, 0, 1.5, 0));

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite_ext(spr_box, 0, 0, 0, room_width, room_height, 0, c_black, fadeout_alpha);
fadeout_alpha = max(fadeout_alpha - .003, .2);