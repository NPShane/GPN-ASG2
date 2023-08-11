/// @description Set inital variables
if (obj_level.wave >= 5) path = choose(pth_enemy_long, pth_enemy_short);
else path = pth_enemy_long;
spd = global.spd;
hp = global.hp;
defence = global.def;
max_hp = hp;
path_start(path, spd, path_action_stop, 1);
