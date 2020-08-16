/// @description Event
countdown--;

if (countdown mod segment == 0) {
	play_sound_effect(snd_rebindnotif, 0.95+pitch*0.1, 1.05+pitch*0.1, 5);
	pitch = pitch < 2 ? pitch+1 : -2;
	with (obj_UI) {
		letter_size = 1+1.1*((abs(other.pitch)+0.3)/2);
	}
}

if (countdown == 0) {
	with (obj_player) {
		vibe = 2;
		key_right = rebind_randomly(key_right);
		key_down = rebind_randomly(key_down);
		key_left = rebind_randomly(key_left);
		key_up = rebind_randomly(key_up);
		vibe = 1;
	}
	
	instance_destroy();
}