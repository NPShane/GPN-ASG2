/// @description Draw button text
event_inherited();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (global.upgrade_tokens > 0)
    draw_text(x + 220, y, $"Upgrade Tokens: {global.upgrade_tokens}");

draw_set_halign(fa_left);
draw_set_valign(fa_top);