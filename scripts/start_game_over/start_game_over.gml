gameloop.game_over = true;
with(obj_player) {
	if(other.x > x) {
		facing = 1;
	} else {
		facing = -1;
	}
}

audio_stop_sound(gameloop.background);