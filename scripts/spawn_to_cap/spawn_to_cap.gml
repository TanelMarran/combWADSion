
var count = argument0;
var object = argument1;

if(instance_number(object) < count) {
	var pad = gameloop.room_padding+8;
	
	var rand_x = irandom_range(pad,room_width-pad);
	var rand_y = irandom_range(pad,room_height-pad);
	
	var instance = instance_create_layer(rand_x, rand_y, "Instances", object);
	with(instance) {
		var condition = true;
		if (instance_exists(obj_player)) {
			condition = point_distance(x, y, obj_player.x, obj_player.y) > 30
		}
		
		while(place_meeting(x, y, obj_solid) && condition) {
				x = irandom_range(pad,room_width-pad);
				y = irandom_range(pad,room_height-pad);
		}
	}
}