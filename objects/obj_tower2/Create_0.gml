/// @desc Modded for skill
event_inherited();
range = 80;
fire_cooldown = game_get_speed(gamespeed_fps) / 6;
attack = 14;

base_range = range;
recharge_skill = function()
{
	// set skill on cooldown
	range = base_range;
	skill_active = false;
	time_source_start(recharge_timer);
}
// redeclare skill_timer with new recharge_skill
skill_timer = time_source_create(time_source_game, skill_duration, time_source_units_seconds, recharge_skill);