/// @description Insert description here
// You can write your code in this editor

is_exploding = max(0, is_exploding-1);

spawning = min(1,spawning+0.08);

if(!gameloop.game_over && is_exploding == 0) {
	var x_key = keyboard_check(ord(key_right))-keyboard_check(ord(key_left));
	var y_key = keyboard_check(ord(key_down))-keyboard_check(ord(key_up));

	if (keyboard_check_released(ord(key_right))) {
		key_right = rebind_randomly(key_right);
	}
	if (keyboard_check_released(ord(key_down))) {
		key_down = rebind_randomly(key_down);
	}
	if (keyboard_check_released(ord(key_left))) {
		key_left = rebind_randomly(key_left);
	}
	if (keyboard_check_released(ord(key_up))) {
		key_up = rebind_randomly(key_up);
	}

	var dir = point_direction(0, 0, x_key, y_key);
	var len = (x_key != 0 or y_key != 0) * max_movement_speed;

	v_target_speed = array(lengthdir_x(len, dir), lengthdir_y(len, dir));

	effect_handler();

	// Kick ash
	if(collision_circle(x,y,10,obj_Pnpc,false,true) && (v_speed[0] != 0 || v_speed[1] != 0)) {
		with(collision_circle(x,y,10,obj_Pnpc,false,true)) {
			if(y_height == 0 && is_defeated && !is_flying) {
				psvm("fired");
				y_gravity = -3.5;
				acceleration = 0.01;
				var dir = point_direction(other.x, other.y, x, y);
				v_speed = array(lengthdir_x(2, dir), lengthdir_y(2, dir));
				is_flying = true;
				y_height = 0.1;
				play_sound_effect(snd_punt, 0.8, 1.2, 4);
				game.screen_shake = 2;
			}
		}
	}
} else {
	v_speed = array(0,0);
	v_target_speed = array(0,0);
}

// Move
event_inherited();
