/// @description Insert description here
// You can write your code in this editor

var _highest = timer_bounds[1]*60;
var progress = (1 - (load_timer + 1) / _highest);

if (is_loading) {
	anim_counter += power(progress, 1.8)*15;
} else {
	anim_counter = 0;
}

if (is_visible) {
	var _xscale = 1+dcos(anim_counter*1.2)*0.05;
	var _yscale = 1+dsin(anim_counter)*0.2;
	var _rot = dsin(anim_counter*2)*2;
	
	draw_sprite_ext(sprite_index, 0, x, y - y_height, _xscale, _yscale, _rot, c_white, 1);
	draw_sprite_ext(sprite_index, 1, x, y, _xscale, _yscale, _rot, c_white, 1);
}