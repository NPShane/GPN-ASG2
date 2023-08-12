/// @description Modded for skill
event_inherited();

range += 100; // range lengthened to 300
fire_cooldown *= 1.5; // cooldown increased 
// projectile_speed += 20; // speed increased (prevent funny-looking tracking)
attack *= 2; // attack increased
preferred_target = obj_enemy_tanky;
fire_sound = snd_fire2;

base_attack = attack;
recharge_skill = function()
{
	// set skill on cooldown
	attack = base_attack;
	skill_active = false;
	time_source_start(recharge_timer);
}
skill_timer = time_source_create(time_source_game, skill_duration, time_source_units_seconds, recharge_skill);