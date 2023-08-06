/// @description Skill: fire rate increase
var _fire_cooldown_decrease = 8;

if (skill_ready) {
	// start skill only if charged
	skill_ready = false;
	skill_active = true;
	fire_cooldown -= _fire_cooldown_decrease;
	show_debug_message($"orignal value is {base_fire_cooldown}\nnew fire cooldown is {fire_cooldown}");
	
	// wait for skill to end then start charging skill
	time_source_start(skill_timer);
}
