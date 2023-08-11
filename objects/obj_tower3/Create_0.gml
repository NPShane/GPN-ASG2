/// @desc Modded for skill
event_inherited();
audio_play_sound(snd_place,0,false);
range += 100; // range lengthened to 300
fire_cooldown += 10; // cooldown increased to 30
projectile_speed += 20; // speed increased to 30 (prevent funny-looking tracking)
attack *= 3; // attack increased to 60
preferred_target = obj_enemy_tanky;

base_attack = attack;
recharge_skill = function()
{
	// set skill on cooldown
	attack = base_attack;
	skill_active = false;
	time_source_start(recharge_timer);
}
skill_timer = time_source_create(time_source_game, skill_duration, time_source_units_seconds, recharge_skill);