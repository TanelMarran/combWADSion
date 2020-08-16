effect_timer--;

var max_time = floor(effect_timer_range[1]*60);
var _x = min(0.92, 1-(effect_timer/max_time));
explosion_counter += power(_x,1.8)*_x*45;

if (flash_time == 0) {
	_x = (effect_timer/max_time);
	flash_time = power(_x,1.8)*_x
}

if (effect_timer == 1) {
	flare_id = create_flare(x, y, action_player_explode);
}