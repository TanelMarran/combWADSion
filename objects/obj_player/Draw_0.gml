/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if(flare_id != noone) {
	flare_id.x = x;
	flare_id.y = y-4;
	flare_id.depth = -flare_id.y-48;
}

if (!gameloop.game_over && is_exploding == 0) {
	image_index = 0;
	depth = -y;
	basic_animations(true, walking_counter+explosion_counter, spawning);
} else if (is_exploding != 0) {
	image_index = 1;
	depth = -room_height-3;
	draw_sprite_ext(sprite_index, image_index, x+random_range(-3, 3), y+random_range(-3, 3), facing, 1, 0, c_white, 1);
} else if (gameloop.game_over) {
	image_index = 2;
	depth = -y;
	basic_animations(true, walking_counter+explosion_counter, 1, 1);
}
