
if (vibe == 2 || argument_count == 0) {
	var allowed = argument0;

	var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var len = string_length(alphabet);
	with(obj_player) {
		var _left = key_left;
		var _right = key_right;
		var _up = key_up;
		var _down = key_down;
	}
	do {
		var newkey = string_char_at(alphabet, irandom_range(1,len));
	} until ((newkey == allowed) || (newkey != _left && newkey != _right && newkey != _down && newkey != _up))

	return newkey;
}
return argument0;