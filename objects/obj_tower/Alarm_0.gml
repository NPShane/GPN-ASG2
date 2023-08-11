/// @description Fire when ready
if(instance_exists(target)) {
	var _sound_params = 
	{
		sound: fire_sound,
		priority: 0,
		pitch: random_range(.8, 1.2)
	};
	var _bullet = instance_create_depth(x, y, -9, projectile);
	_bullet.speed = projectile_speed;
	_bullet.direction = point_direction(x, y, target.x, target.y);
	_bullet.target = target;
	_bullet.damage = attack;
	audio_play_sound_ext(_sound_params);
	alarm[0] = fire_cooldown;
}
else{
	shooting = false;
}