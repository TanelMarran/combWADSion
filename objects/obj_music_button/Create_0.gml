/// @description Insert description here
// You can write your code in this editor
var music_button = instance_create_layer(x, y, "Instances", obj_menubutton);
music_button.is_visible = true;
music_button.key = "M";
music_button.action = action_music;
music_button.sprite_index = spr_music;
music_button.hop_timer = 60;
music_button.hop_interval = 80;
depth = -room_height;

animation_counter = 0;