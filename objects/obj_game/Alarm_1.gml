/// @description Change stats for new wave

if(instance_number(obj_enemy) <= 0){
	spawn_count = 0;
	spawn_amount += 3;
	wave++;
	global.hp += 30;
	global.spd += .5;
	spawn_cooldown -= 2.2;
	alarm[0] = spawn_cooldown;
}

alarm[1] = game_get_speed(gamespeed_fps) * 5;