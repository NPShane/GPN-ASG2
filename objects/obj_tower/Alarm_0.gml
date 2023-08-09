/// @description Fire when ready
if(instance_exists(target)){
	var _bullet = instance_create_depth(x,y,-9,projectile);
	_bullet.speed = projectile_speed;
	_bullet.direction = point_direction(x,y,target.x,target.y);
	_bullet.target = target;
	_bullet.damage = attack;
	alarm[0] = fire_cooldown;
}
else{
	shooting = false;
}