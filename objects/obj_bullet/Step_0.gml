/// @description Track target
try
{
	direction = point_direction(x,y,target.x,target.y);
	speed *= 1.1;
}
catch(_exception)
{
	instance_destroy(self);
}