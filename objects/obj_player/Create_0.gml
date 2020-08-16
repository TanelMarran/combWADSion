/// @description Insert description here
// You can write your code in this editor

key_right = "D";
key_left = "A";
key_up = "W";
key_down = "S";

// Inherit the parent event
event_inherited();

effect_timer_range = array(2,5);
effect_timer = 0;
set_effect_timer();

explosion_counter = 0;

image_speed = 0;

is_exploding = 0;
flash_time = 0;
y_gravity = -3;

flare_id = noone;

spawning = 0;
y_gravity = -2;
var sound = audio_play_sound(snd_appear1, 3, false);
audio_sound_pitch(sound, random_range(0.8, 1.2))
instance_create_layer(x, y, "Instances", obj_part_appear);