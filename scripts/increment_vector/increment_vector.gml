/// @description increments one vector to another
/// @param vec1 the vector to increment
/// @param vec2 the target vector to increment towards
/// @param amount the amount to increment towards the target

var vec1 = argument0;
var vec2 = argument1;
var amount = argument2;

var dir = point_direction(vec1[0], vec1[1], vec2[0], vec2[1]);
var dist = min(amount, point_distance(vec1[0], vec1[1], vec2[0], vec2[1]));

var new_x = vec1[0]+lengthdir_x(dist, dir);
var new_y = vec1[1]+lengthdir_y(dist, dir);

return array(new_x, new_y);