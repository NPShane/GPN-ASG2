if(instance_exists(target)){
	var _bullet = instance_create_depth(x,y,-9,obj_bullet);
	_bullet.speed = 10;
	_bullet.direction = point_direction(x,y,target.x,target.y);
	alarm[0] = fire_rate;
}
else{
	shooting = false;
}

