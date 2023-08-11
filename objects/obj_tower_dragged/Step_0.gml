/// @description Follow cursor & color change
x = (mouse_x + 56 & ~63) - 32;
y= (mouse_y + 56 & ~63) - 32;

if(place_meeting(x, y, obj_region) or place_meeting(x, y, obj_tower) or place_meeting(x, y, obj_tower_clickable)) alpha = 0.5;
else alpha = 1;