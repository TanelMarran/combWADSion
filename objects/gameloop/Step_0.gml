/// @description Insert description here
// You can write your code in this editor
if (room != rm_menu) {
	display_points_t += (display_points - display_points_t)*0.3;

	passive_difficulty += passive_difficulty_increase;

	var difficulity = min(1, (points + passive_difficulty)/max_difficulity_points);

	if (vibe == 1 && game_start_timer = -7 && !game_over) {
		rebind_timer--;
		if (rebind_timer == 0) {
			instance_create_layer(x, y, "Instances", obj_rebind_notif);
			rebind_timer = round(rebind_marks-rebind_time*difficulity+irandom_range(-60,60));
		}
	}

	var grannies = round(difficulity*max_grannies)+3;
	var baddies = round(difficulity*max_baddies)+3;

	if(game_start_timer > -6) {
		game_start_timer = max(-6, game_start_timer - 1 - (!music_on)*6);
	}

	if(!game_over && game.gametime mod 6 == 0 && game_start_timer <= 0) {
		spawn_to_cap(grannies, obj_granny);
		spawn_to_cap(baddies, obj_slime);
	}

	if (game_start_timer == -6) {
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_player);
		game_start_timer = -7;
	}
}

