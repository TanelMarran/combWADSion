var points_get = 0;

if(!is_defeated) {
	switch(object_index) {
		case obj_granny: 
			start_game_over();
			break;
		default:
			add_points(100);
			points_get += 100;
			break;
	}

	is_defeated = true;
}

return points_get;