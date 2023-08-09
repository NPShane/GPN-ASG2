/// @description Draw health bar

draw_self();
var _offset = 30;
if(hp < max_hp)
	draw_healthbar(x - _offset + 10, y + _offset, x + _offset - 10, y + _offset + 2, hp / max_hp * 100, c_grey, c_red, c_orange, 0, true, false);