/// @description Track target 
try
{
	direction = point_direction(x,y,target.x,target.y);
}
catch(_exception)
{}
finally
{
	speed *= 1.05;
}