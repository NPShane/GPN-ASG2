/// @description Play game
// Inherit the parent event
event_inherited();

instance_create_depth(x, y, -10, obj_run);
room_goto(rm_intro);