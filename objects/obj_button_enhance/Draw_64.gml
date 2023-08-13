/// @description Draw button and description
event_inherited();

draw_set_valign(fa_middle);

draw_text(x + 160, y, $"Enhance skills: increase skill uptime\nLevel {global.enhance_level}/{global.max_enhance_level}");
if (global.enhance_level < global.max_enhance_level) {
	draw_text(x + 160, y + 30, $"Costs {global.enhance_cost} Upgrade Tokens");
}

draw_set_valign(fa_top);