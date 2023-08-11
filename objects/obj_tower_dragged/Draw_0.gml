/// @description Change color if invalid placement
draw_sprite_ext(sprite_index, image_index, x, y & ~16, 1, 1, 0, colour, 1);
draw_circle(x, y, range, true);