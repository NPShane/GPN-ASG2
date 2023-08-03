/// @description Modded for skill
// Inherit the parent event
event_inherited();

base_attack = attack;
recharge_skill = function()
{
	// set skill on cooldown
	attack = base_attack;
	show_debug_message("Skill ending");
	skill_active = false;
	time_source_start(recharge_timer);
}
skill_timer = time_source_create(time_source_game, skill_duration, time_source_units_seconds, recharge_skill);