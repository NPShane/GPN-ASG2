/// @description Increase tower stats when purchasing upgrades
event_inherited();

if (global.upgrade_tokens >= global.upgrade_cost && global.upgrade_level < global.max_upgrade_level) {
	// upgrade towers
	global.upgrade_tokens -= global.upgrade_cost;
	global.attack *= 1.1;
	global.range *= 1.1;
	global.fire_cooldown *= .9;
	global.upgrade_cost *= 2;
	global.upgrade_level++;
}