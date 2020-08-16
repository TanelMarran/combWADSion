/// @description Insert description here
// You can write your code in this editor


collect_delay = max(0, collect_delay - 1);

if (collect_delay == 1) {
	target = obj_UI.collection_pos;
}

if (collect_delay == 0) {
	v_target_speed = array(target[0] - x, target[1] - y);
	if (point_distance(0, 0, v_speed[0], v_speed[1]) > point_distance(0, 0, v_target_speed[0], v_target_speed[1])) {
		gameloop.display_points += points;
		play_sound_effect(snd_points, 0.95, 1.35, 5);
		instance_destroy();
	}
}

v_speed = increment_vector(v_speed, v_target_speed, acceleration);

x += v_speed[0];
y += v_speed[1];