/// @desc Modded for skill
event_inherited();
audio_play_sound(snd_place,0,false);
range -= 120; // range shortened to 80
fire_cooldown /= 2; // cooldown reduced to 10
attack -= 6; // attack reduced to 14
preferred_target = obj_enemy_fast;

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