/// @description Modded for skill
// Inherit the parent event
event_inherited();

preferred_target = obj_enemy_normal;

base_fire_cooldown = fire_cooldown;
recharge_skill = function()
{
	// set skill on cooldown
	fire_cooldown = base_fire_cooldown;
	skill_active = false;
	time_source_start(recharge_timer);
}
// redeclare skill_timer with new recharge_skill
skill_timer = time_source_create(time_source_game, skill_duration, time_source_units_seconds, recharge_skill);