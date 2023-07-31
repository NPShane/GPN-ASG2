/// @description Change stats for new wave

if(instance_number(obj_enemy) <= 0){
	spawn_count = 0;
	spawn_amount++;
	global.level++;
	global.hp += 10;
	global.spd += .2;
	spawn_rate -= 2.2;
	alarm[0] = spawn_rate;
}

alarm[1] = game_get_speed(gamespeed_fps) * 5;