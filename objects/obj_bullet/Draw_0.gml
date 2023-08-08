/// @description Damage changes size
var _damage_scale = 1 + .02 * (damage - global.attack);
draw_sprite_ext(sprite_index, image_index, x, y, _damage_scale, _damage_scale, 0, c_white, 1);