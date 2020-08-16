/// @description write the score with the font and add animations
/// @param points the score to display

var _x = argument[0];
var _y = argument[1];
var points = string(round(argument[2]));
var numbers = "0123456789";
var _sprite = spr_numbers;
var x_offset = 0;

if (argument_count >= 6) {
	var left_side = (sprite_get_width(argument[3])+2);
	var right_side = sprite_get_width(_sprite) * (string_length(points)+1) + 2;
	var total = left_side + right_side;
	x_offset = left_side - (total/2);
}

if (argument_count >= 4) {
	draw_sprite(argument[3], 0, _x-2+x_offset, _y);
}

if (argument_count >= 5) {
	_sprite = spr_numbers_outline;
}

var i = 0

for(; i < string_length(points); i++) {
	var subimage = string_pos(string_char_at(points, i+1), numbers)-1;
	draw_sprite(_sprite,subimage, _x+i*8+x_offset, _y);
}

draw_sprite(_sprite, 10, _x+i*8+2+x_offset, _y);

return array(_x+i*8+2, _y);