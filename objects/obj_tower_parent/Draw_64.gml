/// @description Draw skillbar
var _offset = 34;
var _fill;
var _color;

if (skill_active) {
	// change color to orange while active
	_fill = time_source_get_time_remaining(skill_timer) / skill_duration * 100;
	_color = c_orange;
}
else if (skill_ready) {
	// show full aqua if readu but not active
	_fill = 100;
	_color = c_aqua;
}
else if (!skill_ready) {
	// show partial aqua if not ready
	_fill = (recharge_duration - time_source_get_time_remaining(recharge_timer)) / recharge_duration * 100
	_color = c_aqua;
}

draw_healthbar(x-_offset, y+_offset, x+_offset, y+_offset+2, _fill, c_grey, _color, _color, 0, true, false);