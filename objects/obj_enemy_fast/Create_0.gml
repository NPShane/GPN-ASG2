/// @description Customise initvars
path = pth_enemy_long;
spd = global.spd * 1.5;
hp = global.hp / 2;
max_hp = hp;
path_start(path, spd, path_action_stop, 1);