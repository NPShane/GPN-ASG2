/// @description On death grant rewards
if (path_position != 1) {
	// if killed before reaching the end
	global.coins += 20;
	global.kills++;
	effect_create_above(ef_ring, x, y, .6, c_maroon);
}