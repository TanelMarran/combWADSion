/// @description Insert description here
// You can write your code in this editor
if (debug_mode) {
	random_set_seed(1);
} else {
	randomize();
}

color_background = $471659;
screen_shake = 0;

gametime = 0;

next_room = noone;
tranisiton_delay = 0;

instance_create_layer(0, 0, "Instances", gameloop);
if (room != rm_menu) {
	instance_create_layer(0, 0, "Instances", obj_UI);
} else {
	var play_button = instance_create_layer(room_width/2, room_height/2, "Instances", obj_menubutton);
	play_button.is_visible = true;
	play_button.key = "P";
	play_button.action = action_restart;
	play_button.sprite_index = spr_play;
	
	instance_create_layer(room_width/2-48, room_height/2+64, "Instances", obj_sound_button);
	
	instance_create_layer(room_width/2, room_height/2+32, "Instances", obj_vibe_button);
	
	instance_create_layer(room_width/2+48, room_height/2+64, "Instances", obj_music_button);
	
	instance_create_layer(room_width/2, room_height/2-64, "Instances", obj_title);
	
	/*/ TOGGLE FOR HTML5
	var fullscreen_button = instance_create_layer(room_width/2, room_height/2+96, "Instances", obj_menubutton);
	fullscreen_button.is_visible = true;
	fullscreen_button.key = "F";
	fullscreen_button.action = action_fullscreen;
	fullscreen_button.sprite_index = spr_fullscreen;
	//*/
	
}

audio_listener_position(0,0,0);
audio_listener_orientation(0,0,1000,0,-1,0);
audio_falloff_set_model(audio_falloff_linear_distance);