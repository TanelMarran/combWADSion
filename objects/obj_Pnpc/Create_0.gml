/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

movement_dir = irandom(360);
movement_speed = choose(0, max_movement_speed);

toggle_movement_chance = 100;
is_defeated = false;

u_vFillColor = shader_get_uniform(shd_fill, "u_vFillColor");

is_flying = false;
flying_angle = 0;

if (room != rm_menu) {
	spawning = 0;
	y_gravity = -2;
	instance_create_layer(x, y, "Instances", obj_part_appear);
	play_sound_effect(snd_appear1, 0.8, 1.2, 3);
} else {
	spawning = 1;
	y_gravity = 0;
}