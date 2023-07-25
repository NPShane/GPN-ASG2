draw_self();
if(check_mouse_hover(x,y,sprite_width,sprite_height))
	draw_circle(x,y,range,true);

var _enemy = instance_nearest(x,y,obj_enemy);
if(_enemy != noone){
	if(point_distance(x,y,_enemy.x,_enemy.y) <= range + 15){
		
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
		}
		
		target = _enemy;
		if(check_mouse_hover(x,y,sprite_width,sprite_height))
			draw_line(x,y,_enemy.x,_enemy.y);
	}else{
		shooting = false;
		target = noone;
	}
}
