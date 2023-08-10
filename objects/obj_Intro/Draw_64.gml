draw_sprite_ext(spr_Pixel,0,0,0,1280,200,0,c_black,1);
draw_sprite_ext(spr_Pixel,0,0,520,1280,200,0,c_black,1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fPixel);
draw_text(640,600,print);

if (holdspace > 0)
{

	draw_text(640,660,"Hold space to skip");
	draw_set_alpha(1);
}









draw_sprite_ext(spr_Pixel,0,0,0,1280,720,0,c_black,a);