/// @description Skill: fire rate increase
var _fire_cooldown_decrease = 1.75;

if (skill_ready) {
	// start skill only if charged
	audio_play_sound(snd_activate_skill, 10, false);
	skill_ready = false;
	skill_active = true;
	fire_cooldown /= _fire_cooldown_decrease;
	
	// wait for skill to end then start charging skill
	time_source_start(skill_timer);
}
