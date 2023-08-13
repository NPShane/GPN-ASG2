/// @description Draw button and description
event_inherited();

draw_set_valign(fa_middle);

draw_text(x + 160, y, $"Upgrade Tower: increase all tower stats\nLevel {global.upgrade_level}/{global.max_upgrade_level}");
if (global.upgrade_level < global.max_upgrade_level) {
	draw_text(x + 160, y + 30, $"Costs {global.upgrade_cost} Upgrade Tokens");
}

draw_set_valign(fa_top);