/// @description Init gamevars
// You can write your code in this editor

spawn_amount = 5;
spawn_count = 0;
spawn_rate = game_get_speed(gamespeed_fps) * 1;
alarm[0] = 1;
alarm[1] = 3 * game_get_speed(gamespeed_fps) * 5;

global.hp = 100;
global.spd = 1;
global.level = 1;

global.coins = 100;

paused = false;
paused_surf = -1;