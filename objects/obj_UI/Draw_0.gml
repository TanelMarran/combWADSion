/// @description Insert description here
// You can write your code in this editor
var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
var _key_left = "";
var _key_right = "";
var _key_down = "";
var _key_up = "";
var padding = 24;
var offset = 1;

if(object_exists(obj_player)) {
	var _key_left = "A";
	var _key_right = "D";
	var _key_down = "S";
	var _key_up = "W";
	
	with(obj_player) {
		_key_left = key_left;
		_key_right = key_right;
		_key_down = key_down;
		_key_up = key_up;
	}
	
	letter_size = max(1, letter_size - 0.2);
	
	var circle_empty = 0.1;
	draw_set_color(color_UI);
	if (!gameloop.game_over) {
		draw_sprite_ext(spr_letters, string_pos(_key_left,alphabet)-1, 0+padding, room_height/2, letter_size, letter_size, 0, c_white, 1);
		if(keyboard_check(ord(_key_left))) {
			left_circle[0] += (circle_empty-left_circle[0])*0.3;
			left_circle[1] += (1-circle_empty-left_circle[1])*0.3;
		} else {
			left_circle[0] += (0.6-left_circle[0])*0.3;
			left_circle[1] += (0.4-left_circle[1])*0.3;
		}
		draw_circle_highlight(0+padding-offset, room_height/2-offset, 16-(left_circle[0]*8), game.gametime*3, left_circle[0], left_circle[1], 360, 2);
	
		draw_sprite_ext(spr_letters, string_pos(_key_right,alphabet)-1, room_width-padding, room_height/2, letter_size, letter_size, 0, c_white, 1);
		if(keyboard_check(ord(_key_right))) {
			right_circle[0] += (circle_empty-right_circle[0])*0.3;
			right_circle[1] += (1-circle_empty-right_circle[1])*0.3;
		} else {
			right_circle[0] += (0.6-right_circle[0])*0.3;
			right_circle[1] += (0.4-right_circle[1])*0.3;
		}
		draw_circle_highlight(room_width-padding-offset, room_height/2-offset, 16-(right_circle[0]*8), game.gametime*3, right_circle[0], right_circle[1], 360, 2);

	
		draw_sprite_ext(spr_letters, string_pos(_key_up,alphabet)-1, room_width/2, 0+padding, letter_size, letter_size, 0, c_white, 1);
		if(keyboard_check(ord(_key_up))) {
			up_circle[0] += (circle_empty-up_circle[0])*0.3;
			up_circle[1] += (1-circle_empty-up_circle[1])*0.3;
		} else {
			up_circle[0] += (0.6-up_circle[0])*0.3;
			up_circle[1] += (0.4-up_circle[1])*0.3;
		}
		draw_circle_highlight(room_width/2-offset, padding-offset, 16-(up_circle[0]*8), game.gametime*3, up_circle[0], up_circle[1], 360, 2);

	
		draw_sprite_ext(spr_letters, string_pos(_key_down,alphabet)-1, room_width/2, room_height-padding, letter_size, letter_size, 0, c_white, 1);
		if(keyboard_check(ord(_key_down))) {
			down_circle[0] += (circle_empty-down_circle[0])*0.3;
			down_circle[1] += (1-circle_empty-down_circle[1])*0.3;
		} else {
			down_circle[0] += (0.6-down_circle[0])*0.3;
			down_circle[1] += (0.4-down_circle[1])*0.3;
		}
		draw_circle_highlight(room_width/2-offset, room_height-padding-offset, 16-(down_circle[0]*8), game.gametime*3, down_circle[0], down_circle[1], 360, 2);
		
		collection_pos = draw_points(gameloop.room_padding, gameloop.room_padding-6, gameloop.display_points_t);

	}
		
	draw_set_color(c_white);
}