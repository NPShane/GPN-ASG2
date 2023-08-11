/// @description Draw stats
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (!view_stats) {
    draw_text_transformed(room_width / 2, room_height / 2, "YOU LOSE", 2, 2, 0);
    draw_text(room_width / 2, room_height / 3 * 2, "The Squares are defeated. The Circles reign supreme.\nThe Circular Empire shall have no end.");
    draw_text(room_width / 2, room_height / 5 * 4, "ANY KEY to see results");
}
else {
    draw_text(room_width / 2, room_height / 5, $"ENEMIES DEFEATED: {global.kills}\nUPGRADE TOKENS: +{upgrades_gained}");
    draw_text(room_width / 2, room_height / 5 * 4, "ANY KEY to return to main menu");
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);