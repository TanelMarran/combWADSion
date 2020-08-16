var _x = argument0;
var _y = argument1;
var radius = argument2;

var collisions = ds_list_create();
var center_x = _x;
var center_y = _y;

collision_circle_list(_x, _y, radius, obj_solid, false, true, collisions, false);
var length = ds_list_size(collisions);

for (var i = 0; i < length; i++) {
	var wall = ds_list_find_value(collisions, i);
	center_x += wall.x;
	center_y += wall.y;
}

center_x /= length+1;
center_y /= length+1;

return array(_x - center_x, _y - center_y);