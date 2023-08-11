/// @description Damage player
global.lives--;
instance_destroy(self);
audio_play_sound(snd_TakeDamage,0,false);