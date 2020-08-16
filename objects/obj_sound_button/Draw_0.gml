/// @description Insert description here
// You can write your code in this editor

if(sound_on) {
	animation_counter += 10;
} else {
	animation_counter = 0;
}

var _xscale = 1+dsin(animation_counter*1.1)*0.2;
var _yscale = 1+dcos(animation_counter*0.9)*0.2;
var _rot = dsin(animation_counter*2)*3;

var _sub = 1;
if(!sound_on) {
	var _sub = 2;
}

draw_sprite_ext(spr_icons, _sub, x + sprite_get_width(spr_sound)/2 + 8, y, _xscale, _yscale, _rot, c_white, 1);