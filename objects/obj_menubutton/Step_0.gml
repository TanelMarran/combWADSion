/// @description Insert description here
// You can write your code in this editor
y_height = max(0, y_height-y_gravity);

if (y_height == 0) {
	if(abs(y_gravity) > 1) {
		y_gravity *= -y_bounce;
	} else {
		y_gravity = 0;
	}
} else {
	y_gravity += y_gravity_speed;
}

if (is_loading) {
	if (load_timer == 0) {
		load_timer = -1;
		flare_id = create_flare(x-sprite_width/2+3, y-sprite_height/2-y_height+3, action);
		flare_id.depth = -room_height-5;
	} else {
		load_timer--;
	}
} else {
	var collision = collision_point(mouse_x, mouse_y, object_index, false, false);
	if (is_visible && (keyboard_check_pressed(ord(key)) || (mouse_check_button_pressed(mb_left) && collision == id))) {
		is_loading = true
		load_timer = round(random_range(timer_bounds[0], timer_bounds[1])*60);
		y_gravity = -3;
		y_height = 0;
		play_sound_effect(snd_points, 0.8, 1.2, 1);
	}
	hop_timer--;
	
	if(hop_timer == 0) {
		y_gravity = -1.5;
		hop_timer = hop_interval;
	}
}

if	(instance_exists(flare_id)) {
	flare_id.x = x-sprite_width/4; 
	flare_id.y = y-sprite_height/3-y_height+3;
}