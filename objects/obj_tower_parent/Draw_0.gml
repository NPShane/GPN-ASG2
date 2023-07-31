/// @description Select targets and draw range

// draw self and draw range if mouse hovering over
draw_self();
if(check_mouse_hover(x,y,sprite_width,sprite_height)) draw_circle(x,y,range,true);

// select a target, prioritising those in range
var _enemy = instance_nearest(x,y,obj_enemy);
var _enemy_preferred = instance_nearest(x,y,preferred_target);

// if potential target found
if(_enemy != noone && _enemy_preferred != noone){
	// potential targets found, check if in range
	if (point_distance(x,y,_enemy_preferred.x,_enemy_preferred.y) <= range + 15) {
		// preferred target is in range
		if(!shooting){
			// fire at target
			alarm[0] = 1;
			shooting = true;
		}
		target = _enemy_preferred;
		if(check_mouse_hover(x,y,sprite_width,sprite_height))
			draw_line(x,y,_enemy_preferred.x,_enemy_preferred.y);
	}
	else if (point_distance(x,y,_enemy.x,_enemy.y) <= range + 15) {
		// no preferred targets, but other target is in range
		if(!shooting){
			// fire at target
			alarm[0] = 1;
			shooting = true;
		}
		target = _enemy;
		if(check_mouse_hover(x,y,sprite_width,sprite_height))
			draw_line(x,y,_enemy.x,_enemy.y);
	}
	else {
		shooting = false;
		target = noone;
	}
}