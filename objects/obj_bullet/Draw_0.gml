/// @description Damage changes size
// var _damage_scale:number = 1 + abs(damage - global.attack) / global.attack;
var _damage_scale/*:number*/ = logn(global.attack, damage);
show_debug_message(_damage_scale);
draw_sprite_ext(sprite_index, image_index, x, y, _damage_scale, _damage_scale, 0, c_white, 1);