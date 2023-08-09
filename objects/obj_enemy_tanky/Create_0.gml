/// @description Customise initvars
path = pth_enemy_long;
spd = global.spd * .75;
hp = global.hp * 1.5;
max_hp = hp;
path_start(path, spd, path_action_stop, 1);