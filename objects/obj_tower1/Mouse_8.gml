/// @description Skill: attack increase

var _attack_increase = 20;

if (skill_ready) {
	// start skill only if charged
	skill_ready = false;
	skill_active = true;
	attack += _attack_increase;
	
	// wait for skill to end then start charging skill
	time_source_start(skill_timer);
}
