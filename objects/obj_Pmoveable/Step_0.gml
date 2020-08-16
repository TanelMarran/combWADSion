/// @description Movement
// You can write your code in this editor
y_height = max(0, y_height-y_gravity);

if (y_height == 0) {
	y_gravity = 0;
} else {
	y_gravity += 0.2;
}

v_speed = increment_vector(v_speed, v_target_speed, acceleration);

var min_amount = move(v_speed);
var dist = point_distance(0, 0 ,min_amount[0], min_amount[1]);
walking_counter += (abs(dist)*7+4)*-facing;

if(v_target_speed[0] > 0) {
	facing = 1;
}

if(v_target_speed[0] < 0) {
	facing = -1;
}

//psvm(v_speed, min_amount);
if(min_amount[0] != v_speed[0]) {
	v_speed[0] = 0;
}

if(min_amount[1] != v_speed[1]) {
	v_speed[1] = 0;
}

if (is_collidable) {
	push_out();
}