// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_game_globals() {
	// set trackers
	global.waves_cleared = 0;
	global.kills = 0;
	global.upgrade_tokens = 200;
	global.upgrade_level = 0;
	global.max_upgrade_level = 10;
	global.upgrade_cost = 2;
	
	// set tower stats
	global.attack = 60;
	global.range = 200;
	global.skill_duration = 10;
	global.recharge_duration = 10;
	global.fire_cooldown = game_get_speed(gamespeed_fps);
	global.projectile_speed = 5;
}

function set_run_globals() {
	// reset run trackers
	global.level = 1;
	
	// reset enemy stats
	global.hp = 100;
	global.spd = 1.5;
	global.def = 20;

	// reset player stats
	global.coins = 100;
	global.lives = 5;
	global.placing = false;
}

function wave_between(_from, _to, _duration, _offset) {
	average = (_to - _from) * .5;
	return _from + sin((((current_time * 0.001) + _duration * _offset) / _duration) * (pi * 2)) * average;
}