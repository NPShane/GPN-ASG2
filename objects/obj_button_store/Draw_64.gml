/// @description Draw button and token count (if any)
event_inherited();

draw_set_valign(fa_middle);

if (global.upgrade_tokens > 0)
	draw_text(x + 160, y, $"Upgrade Tokens: {global.upgrade_tokens}");

draw_set_valign(fa_top);