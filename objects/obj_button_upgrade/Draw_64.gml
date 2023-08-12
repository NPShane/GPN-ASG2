/// @description Draw button and description
event_inherited();

draw_set_valign(fa_middle);

draw_text(x + 160, y, $"Upgrade Tower: increase all tower stats\nCosts {cost} Upgrade Tokens\nLevel {level}/{max_level}");

draw_set_valign(fa_top);