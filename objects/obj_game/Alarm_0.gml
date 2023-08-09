/// @description Spawn enemy at set intervals
// You can write your code in this editor

if(spawn_count < spawn_amount){
	instance_create_depth(x, y, -1, choose(obj_enemy, obj_enemy_fast,obj_enemy_tanky)); // CHANGE
	spawn_count++;
	alarm[0] = spawn_cooldown;
}