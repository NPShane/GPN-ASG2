/// @description Hits any target
var _sound_params = 
{
	sound: snd_hit,
	priority: 0,
	pitch: random_range(.8, 1.2)
}
audio_play_sound_ext(_sound_params);