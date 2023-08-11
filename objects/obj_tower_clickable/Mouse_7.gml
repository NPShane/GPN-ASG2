/// @description Buy if can afford
if(global.coins >= cost and !global.placing) {
	instance_create_depth(mouse_x,mouse_y,-9,click_spawn);
	global.coins -= cost;
	global.placing = true;
	audio_play_sound(snd_pickup, 0, false);
}