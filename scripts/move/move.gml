/// @description Move the object the specified amount of pixels, account for collision
/// @param amount vec2 that defines how far to move

var amount = argument0;

var min_amount = calculate_moveable_space(amount, obj_solid);

x += min_amount[0];
y += min_amount[1];

return min_amount;