/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (is_defeated) {
	shader_set(shd_fill);
	shader_set_uniform_f(u_vFillColor, 89 / 255, 22 / 255, 71 / 255);
}

depth = -y;
if(y_height == 0 || !is_defeated) {
	var counter = walking_counter;
	
	var _game_over = false;
	with(gameloop) {
		_game_over = game_over;
	}

	
	if(_game_over) {
		if(obj_player.x > x) {
			facing = 1;
		} else {
			facing = -1;
		}
		counter *= 0.2;
	}
	
	if (is_defeated) {
		counter = 0;
	}
	
	basic_animations(true, counter, spawning);
} else {
	flying_angle += 3;
	
	var center_x = x;
	var center_y = y-sprite_height/2-y_height;
	
	var _x = center_x + dsin(flying_angle) * sprite_height/2;
	var _y = center_y + dcos(flying_angle) * sprite_height/2;
	
	draw_sprite_ext(sprite_index,image_index, _x, _y, facing, 1, flying_angle, c_white, 1);
}

if (is_defeated) {
	shader_reset();
}
