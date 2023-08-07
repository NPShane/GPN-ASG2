/// @description Draw health bar

draw_self();
var _offset = 30;
if(hp < global.hp)
	draw_healthbar(x-_offset+10,y+_offset,x+_offset-10,y+_offset+2,hp/global.hp*100,c_grey,c_red,c_orange,0,true,false);