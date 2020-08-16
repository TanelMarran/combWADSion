/// @description Insert description here
// You can write your code in this editor

spawning = min(1,spawning+0.08);

var _game_over = false;
with(gameloop) {
	_game_over = game_over;
}

if(!is_defeated && !_game_over) {
	if (irandom(toggle_movement_chance) == 0) {
		if (irandom(2) == 0) {
			movement_speed = 0;
		} else {
			var adjustment = away_from_wall(x, y, 30);
			
			movement_dir = irandom(360);
			if (adjustment[0] != 0 || adjustment[1] != 0) {
				movement_dir = point_direction(0, 0, adjustment[0]+random_range(-15, 15), adjustment[1]+random_range(-15, 15));
			}
			movement_speed = max_movement_speed;
		}
	}

	v_target_speed[0] = lengthdir_x(movement_speed, movement_dir);
	v_target_speed[1] = lengthdir_y(movement_speed, movement_dir);
} else {
	v_target_speed[0] = 0;
	v_target_speed[1] = 0;
}

if (is_flying && y_height == 0) {
	if(object_index != obj_granny) {
		add_points(25);
	}
	instance_destroy();
}

is_collidable = !is_defeated;
// Inherit the parent event
event_inherited();

