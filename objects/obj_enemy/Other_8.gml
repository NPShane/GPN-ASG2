/// @description Damage player
global.lives--;
instance_destroy(self);
audio_play_sound(snd_take_damage,0,false);