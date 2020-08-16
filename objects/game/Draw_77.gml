/// @description Insert description here
// You can write your code in this editor
var screen_width = window_get_width();
var screen_height = window_get_height();

surface_resize(application_surface,room_width,room_height);

var w_maxfit = screen_width div room_width;
var h_maxfit = screen_height div room_height;

var scale = min(w_maxfit, h_maxfit)+(screen_shake*0.01);

if (scale == 0) {
	application_surface_draw_enable(true);
	
	draw_set_color(color_background);
	draw_rectangle(0, 0, screen_width, screen_height, false);
	draw_set_color(c_white);
} else {
	application_surface_draw_enable(false);
	var scaled_width = room_width * scale;
	var scaled_height = room_height * scale;

	var x_offset = (screen_width-scaled_width) / 2;
	var y_offset = (screen_height-scaled_height) / 2;

	draw_set_color(color_background);
	draw_rectangle(0, 0, screen_width, screen_height, false);
	draw_set_color(c_white);
	
	var shake_factor = max(1,screen_shake*0.4);
	var rot = sin(game.gametime*0.02*(1/scale)*shake_factor)*2*max(1, shake_factor*0.1)*(!gameloop.game_over);
	
	var x_from_center = -scaled_width/2; 
	var y_from_center = -scaled_height/2; 
	
	var rot_x = x_from_center * dcos(rot) - y_from_center * dsin(rot);
	var rot_y = x_from_center * dsin(rot) + y_from_center * dcos(rot);
	
	var _x = x_offset - x_from_center + rot_x;
	var _y = y_offset - y_from_center + rot_y;
	
	var x_shake = +random_range(-screen_shake, screen_shake);
	var y_shake = +random_range(-screen_shake, screen_shake);
	
	draw_surface_ext(application_surface, _x + x_shake, _y + y_shake, scale, scale, -rot, c_white, 1);
}

draw_set_alpha(transition_opacity);

if (transition_opacity == 1) {
	tranisiton_delay = max(0, tranisiton_delay - 1);
}

transition_opacity += (transition_target_opacity - transition_opacity) * transition_speed;


draw_set_color(c_white);

draw_rectangle(0, 0, window_get_width(), window_get_height(), false);

draw_set_alpha(1);