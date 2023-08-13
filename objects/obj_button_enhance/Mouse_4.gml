/// @description Increase tower stats when purchasing upgrades
event_inherited();

if (global.upgrade_tokens >= global.enhance_cost && global.enhance_level < global.max_enhance_level) {
	// debuff enemies
	global.upgrade_tokens -= global.enhance_cost;

	global.skill_duration *= 1.5;
	global.recharge_duration *= .75;

	global.enhance_cost *= 2;
	global.enhance_level++;
}