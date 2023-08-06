/// @desc Modded for skill
event_inherited();
range = 300;
fire_cooldown = game_get_speed(gamespeed_fps) / 2;
projectile_speed += 20;
attack = 60;

base_attack = attack;
recharge_skill = function()
{
	// set skill on cooldown
	attack = base_attack;
	skill_active = false;
	time_source_start(recharge_timer);
}
skill_timer = time_source_create(time_source_game, skill_duration, time_source_units_seconds, recharge_skill);