/// @description Skill: range increase
var _range_increase = 50;

if (skill_ready) {
	// start skill only if charged
	skill_ready = false;
	skill_active = true;
	range += _range_increase;
	
	// wait for skill to end then start charging skill
	time_source_start(skill_timer);
}
