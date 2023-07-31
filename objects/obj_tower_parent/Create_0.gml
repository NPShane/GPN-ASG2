/// @description Set dafault tower values

// not to be changed by children
shooting = false;
target = noone;

// can be changed by children
range = 200;
fire_rate = game_get_speed(gamespeed_fps) / 3;
attack = 20;

projectile = obj_bullet;
projectile_speed = 10;
preferred_target = obj_enemy;

skill_ready = true;
skill_active = false;
stop_recharge = function() {
	skill_ready = true;
}

// must override these values to set for skill
skill_duration = 10;
recharge_duration = 10;
recharge_timer = time_source_create(time_source_game, recharge_duration, time_source_units_seconds, stop_recharge);