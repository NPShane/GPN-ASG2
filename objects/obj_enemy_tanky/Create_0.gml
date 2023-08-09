/// @description Customise initvars
event_inherited();
spd = global.spd * .75;
hp = global.hp * 1.5;
max_hp = hp;
defence = global.def + 20;
path_start(path, spd, path_action_stop, 1);