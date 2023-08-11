/// @description Init level vars
// set local vars for current level
spawn_amount = 5;
spawn_count = 0;
spawn_cooldown = game_get_speed(gamespeed_fps) * 1;
wave = 1;
alarm[0] = 1;
alarm[1] = game_get_speed(gamespeed_fps) * 3;

audio_play_sound(snd_music1, 0, true);
set_run_globals();

paused = false;
paused_surf = -1;