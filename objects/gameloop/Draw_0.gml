/// @description Insert description here
// You can write your code in this editor
var y_offset = -48;


if (game_over) {
	if (!get_score) {
		if (gameloop.points > top_points) {
			top_points = gameloop.points;
			ini_open("savedata.ini"); //opens the file we are using to store the info
			ini_write_real("save","top_score",top_points); //reads the value from the specified section. if no value is there, it assigns a default value of 1000. it then assigns this value to the variable 'top_points'
			ini_close(); //close the file since we're done with it
			gameloop.new_record = true;
		}
		get_score = true;
	}
	if (music_on) {
		sound_queues = -1;
	}
	game_over_timer += 1+(!music_on)*3;
	if(game_over_timer > game_over_buffer_end) {
		if(!let_the_music_play) {
			let_the_music_play = true
			if(music_on) {
				audio_play_sound(snd_gameover, 1, false);
			}
		}
		var simplified_time = game_over_timer - game_over_buffer_end;
		draw_sprite(spr_gameover,0,room_width/2,room_height/2-16+y_offset);
		if(sound_queues == 0) {
			play_sound_effect(snd_appear1, 0.9, 0.9, 3);
			sound_queues++;
		}
		
		if(simplified_time > 2.3*60) {
			draw_sprite(spr_gameover, 1,room_width/2, room_height/2+8+y_offset);
			if(sound_queues == 1) {
				play_sound_effect(snd_appear1, 1.0, 1.0, 3);
				sound_queues++;
			}
		}
		
		if(simplified_time > 3.5*60) {
			draw_points(room_width/2+1, room_height/2+16+12+y_offset, gameloop.points, spr_score, true, true);
			var _pos = draw_points(room_width/2+1, room_height/2+16+12*2+2+y_offset, top_points, spr_best, true, true);
			if (new_record) {
				draw_sprite(spr_new, 0, _pos[0] + 24, _pos[1]+dsin(game.gametime * 2));
			}
			if(sound_queues == 2) {
				play_sound_effect(snd_appear1, 1.1, 1.1, 3);
				sound_queues++;
			}
		}
		
		if (simplified_time > game_over_title_end+0.5*60) {
			retry_button.is_visible = true;
			title_button.is_visible = true;
			if(sound_queues == 3) {
				play_sound_effect(snd_appear1, 1.2, 1.2, 3);
				sound_queues++;
			}
		}
	}
}