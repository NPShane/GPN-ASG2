/// @description Place down
if(alpha == 1) {
	instance_destroy();
	audio_play_sound(snd_place, 0, false);
	instance_create_depth(x, y, -1, click_spawn);
	global.placing = false;
}