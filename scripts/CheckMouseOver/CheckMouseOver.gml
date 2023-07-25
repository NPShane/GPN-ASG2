// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function  check_mouse_hover();
/// @param {real} _width_start The X position to start detecting at
/// @param {real} _height_start The Y position to start detecting at
/// @param {real} _width_end The X position to stop detecting at
/// @param {real} _height_end The Y position to stop detecting at
/// @desc This function checks if the cursor is hovering over the specified region.
/// @returns {bool} True if cursor is within the region, otherwise false

function check_mouse_hover(_width_start, _height_start, _width_end, _height_end){
	// Account for center origin
	_width_start = _width_start - _width_end / 2;
	_height_start = _height_start - _height_end / 2;
	
	if(mouse_x > _width_start && mouse_x < _width_start + _width_end){
		if(mouse_y > _height_start && mouse_y < _height_start + _height_end){
			return true;
		}
	}
	return false;
}