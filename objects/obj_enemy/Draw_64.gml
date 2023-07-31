/// @description Draw health bar

draw_self();
var _healthbar_offset = 20;
if(hp < global.hp)
	draw_healthbar(x-10,y+_healthbar_offset,x+10,y+_healthbar_offset+2,hp/global.hp*100,c_grey,c_red,c_orange,0,true,false);