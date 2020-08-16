/// @description Insert description here
// You can write your code in this editor
var vibe_button = instance_create_layer(x, y, "Instances", obj_menubutton);
vibe_button.is_visible = true;
vibe_button.key = "V";
vibe_button.action = action_vibe;
vibe_button.sprite_index = spr_vibe;
vibe_button.hop_timer = 30;
vibe_button.hop_interval = 80;
depth = -room_height;

animation_counter = 0;