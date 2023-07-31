/// @description Skill: attack increase

var _attack_increase = 50;
var _recharge_skill = function()
{
	// reset attack back to original value and set skill on cooldown
	attack = base_attack;
	skill_active = false;
	var _recharge_time = time_source_start(recharge_timer);
}

if (skill_ready) {
	// start skill only if charged
	skill_ready = false;
	skill_active = true;
	attack += _attack_increase;
	
	// wait for skill to end then start charging skill
	var _handle = call_later(skill_duration, time_source_units_seconds, _recharge_skill);
}
