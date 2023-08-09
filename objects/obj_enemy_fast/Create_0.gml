/// @description Customise initvars
event_inherited();
spd = global.spd * 1.5;
hp = global.hp / 2;
max_hp = hp;
defence = global.def - 20;
path_start(path, spd, path_action_stop, 1);