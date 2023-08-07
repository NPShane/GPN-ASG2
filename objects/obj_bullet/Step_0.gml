/// @description Track target
try
{
	direction = point_direction(x,y,target.x,target.y);
}
catch(_exception)
{
	instance_destroy(self);
}