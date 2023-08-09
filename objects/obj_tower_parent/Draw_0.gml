/// @description Select targets and draw range

// draw self and draw range if mouse hovering over
draw_self();
if(check_mouse_hover(x,y,sprite_width,sprite_height)) draw_circle(x,y,range,true);

// select closest enemies in range
var _enemy_preferred = instace_nearest_range(x, y, preferred_target, range + 15);
var _enemy = instace_nearest_range(x, y, obj_enemy_parent, range + 15);
var _shoot = function(_target) {
	if(!shooting){
		// fire at target
		alarm[0] = 1;
		shooting = true;
	}
	target = _target;
	if(check_mouse_hover(x,y,sprite_width,sprite_height))
		draw_line(x, y, _target.x, _target.y);
};

if (_enemy_preferred != noone) {
	// preferred enemy in range, so shoot
	_shoot(_enemy_preferred);
}
else {
	if (_enemy != noone) {
		// no preferred enemy, but other enemy in range, so shoot
		_shoot(_enemy);
	}
	else {
		// no enemies in range
		shooting = false;
		target = noone;
	}
}
