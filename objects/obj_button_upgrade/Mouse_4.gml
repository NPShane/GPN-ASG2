/// @description Increase tower stats when purchasing upgrades
event_inherited();

if (global.upgrade_tokens >= cost && level < max_level) {
	// upgrade towers
	global.upgrade_tokens -= cost;
	global.attack *= 1.1;
	global.range *= 1.1;
	global.fire_cooldown *= .9;
	cost *= 2;
	level++;
}