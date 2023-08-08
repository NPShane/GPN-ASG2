// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_game_globals() {
	// set enemy stats
	global.hp = 100;
	global.spd = 2;

	// set player stats
	global.coins = 100;
	global.lives = 5;
	global.placing = false;
	
	// set tower stats
	global.attack = 20;
	global.range = 200;
	global.skill_duration = 10;
	global.recharge_duration = 10;
	global.fire_cooldown = game_get_speed(gamespeed_fps) / 3;
	global.projectile_speed = 10;
}