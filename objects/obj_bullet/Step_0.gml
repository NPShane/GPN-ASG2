/// @description Track target 
try
{
	direction = point_direction(x,y,target.x,target.y);
	speed *= 1.05;
}
catch(_exception)
{
	instance_destroy(self);
}