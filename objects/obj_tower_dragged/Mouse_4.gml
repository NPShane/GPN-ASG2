/// @description Place down
if(colour == c_white) {
	instance_destroy();
	instance_create_depth(x, y, -1, click_spawn);
	global.placing = false;
}