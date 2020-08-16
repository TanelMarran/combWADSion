/// @description create flare that after fading has an effect
/// @param x
/// @param y
/// @param action

var _x = argument0;
var _y = argument1;
var _action = argument2;

var _id = instance_create_layer(_x, _y, "Instances", obj_flare);

with(_id) {
	action = _action;
	parent_id = other.id;
}

return _id;