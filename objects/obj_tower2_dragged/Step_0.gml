x = mouse_x;
y= mouse_y;

if(place_meeting(x,y,obj_region) or place_meeting(x,y,obj_tower_parent)) colour = c_red;
else colour = c_white;