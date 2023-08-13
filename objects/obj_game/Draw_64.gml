/// @description Draw start screen
if (room == rm_start) {
    draw_set_font(fnt_title);
    draw_text(98, 128, "SQUARE OFF");
    draw_set_font(-1);
    if (global.max_kills > 0 || global.max_waves_cleared > 0) {
        draw_text(98, room_height - 128, $"Highest wave: {global.max_waves_cleared}\nMost circles massacred: {global.max_kills}");
    }
}