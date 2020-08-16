/// @description Insert description here
// You can write your code in this editor
var sound_button = instance_create_layer(room_width/2-48, room_height/2+64, "Instances", obj_menubutton);
sound_button.is_visible = true;
sound_button.key = "S";
sound_button.action = action_sound;
sound_button.sprite_index = spr_sound;
sound_button.hop_timer = 30;
sound_button.hop_interval = 80;
depth = -room_height;

animation_counter = 0;