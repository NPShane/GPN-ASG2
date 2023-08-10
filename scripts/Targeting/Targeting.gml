// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function instace_nearest_range(_x, _y, _obj, _radius){
	inst = noone;
	num = instance_number(_obj);
	// make list of all instances of type _obj
	for (var _i = 0; _i < num; _i++ )
		list[_i] = instance_find(_obj, _i);
	
	// deactivate everything outside _radius
	for (var _i = 0; _i < num; _i++ ) {
		if (point_distance(list[_i].x, list[_i].y, _x, _y) > _radius)
			instance_deactivate_object(list[_i]);
	}
	
	// find nearest instance still active
	inst = instance_nearest(_x, _y, _obj);
	
	// cleanup
	instance_activate_object(_obj);
	return inst;
}