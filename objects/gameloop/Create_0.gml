/// @description Insert description here
// You can write your code in this editor
room_padding = 46;

max_grannies = 10;
max_baddies = 15;

max_difficulity_points = 3500;
display_points = 0;
display_points_t = 0;
points = 0;
new_record = false;

game_over = false;
let_the_music_play = false;
game_over_buffer_end = 2*60;
game_over_title_end = 4*60;
game_over_timer = 0;
game_start_timer = 5.5*60;
if (room != rm_menu) {
	background = audio_play_sound(snd_background, 4, true);
	if(!music_on) {
		audio_stop_sound(background);
	}
}
sound_queues = 0;

get_score = false;

passive_difficulty = 0;
passive_difficulty_increase = 0.2;

retry_button = instance_create_layer(room_width/2-56, room_height/2+16+12*2+32, "Instances", obj_menubutton);
retry_button.is_visible = false;
retry_button.action = action_restart;
retry_button.key = "R";

title_button = instance_create_layer(room_width/2+56, room_height/2+16+12*2+32, "Instances", obj_menubutton);
title_button.is_visible = false;
title_button.action = action_title;
title_button.sprite_index = spr_title;
title_button.key = "T";
title_button.hop_timer = 30;
title_button.hop_interval = 44;

rebind_marks = 60*20;
rebind_time = 60*10;
rebind_timer = rebind_time;

depth = -room_height-10;