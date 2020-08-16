/// @description Insert description here
// You can write your code in this editor

animation_counter = vibe == 0 ? 0 : animation_counter+5*vibe*vibe;

var _xscale = 1.1+dsin(animation_counter*1.1)*0.2;
var _yscale = 1.1+dsin(animation_counter*0.9)*0.2;
var _rot = dsin(animation_counter*2)*3;

var _sub = vibe;

draw_sprite_ext(spr_vibefaces, _sub, x + sprite_get_width(spr_vibe)/2 + 8, y, _xscale, _yscale, _rot, c_white, 1);