/// @description Set dafault tower values

// not to be changed by children
shooting = false;
target = noone;
skill_ready = true;
skill_active = false;

// can be changed by children
range = global.range;
fire_cooldown = global.fire_cooldown;
attack = global.attack;

projectile = obj_bullet;
projectile_speed = global.projectile_speed;
preferred_target = obj_enemy;

// must override these values to set for skill
skill_duration = global.skill_duration;
recharge_duration = global.recharge_duration;
stop_recharge = function()
{
	// set skill to ready
	skill_ready = true;
}
recharge_skill = function()
{
	// set skill on cooldown
	skill_active = false;
	time_source_start(recharge_timer);
}
recharge_timer = time_source_create(time_source_game, recharge_duration, time_source_units_seconds, stop_recharge);
skill_timer = time_source_create(time_source_game, skill_duration, time_source_units_seconds, recharge_skill);