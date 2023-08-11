// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_game_globals() {
	// set trackers
	global.waves_cleared = 0;
	global.kills = 0;
	
	// set tower stats
	global.attack = 60;
	global.range = 200;
	global.skill_duration = 10;
	global.recharge_duration = 10;
	global.fire_cooldown = game_get_speed(gamespeed_fps);
	global.projectile_speed = 10;
}

function set_run_globals() {
	// reset enemy stats
	global.hp = 100;
	global.spd = 1.5;
	global.def = 20;

	// reset player stats
	global.coins = 100;
	global.lives = 5;
	global.placing = false;
}