var add = argument0;

var nbofstars = add / 25;

for(var i = 0; i < nbofstars; i++) {
	with(instance_create_layer(x, y, "Instances", obj_points)) {
		var dir = irandom(360);
		var len = random_range(2, 5);
		v_speed = array(lengthdir_x(len, dir), lengthdir_y(len, dir));
		points = min(25, add);
		add = max(0, add - 25);
		gameloop.points += points;
	}
}