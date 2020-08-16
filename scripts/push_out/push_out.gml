if(place_meeting(x, y, obj_Pmoveable)) {
	with(instance_place(x, y, obj_Pmoveable)) {
		if (is_collidable) {
			var len = point_distance(x, y, other.x, other.y)*0.1;
			var dir = point_direction(other.x, other.y, x, y);
		
			var push_amount = array(lengthdir_x(len, dir), lengthdir_y(len, dir));
			var min_amount = calculate_moveable_space(push_amount, obj_solid);
			x += min_amount[0];
			y += min_amount[1];
		}
	}
}