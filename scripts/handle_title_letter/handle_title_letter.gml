

var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
var arry = argument0;
var _letter = arry[0];
var _y = arry[1];
var _gravity = arry[2];
var _power = 0.3;
var _bounce = 0.6;

if(keyboard_check_pressed(ord(_letter))) {
	_gravity = -3;
	_letter = string_char_at(alphabet, irandom_range(1,string_length(alphabet)));
	play_sound_effect(snd_points, 0.8, 1.2, 1);
}

_y = max(0, _y + _gravity);

if (_y == 0) {
	if (abs(_gravity) > 1) {
		_gravity *= -_bounce;
	} else {
		_gravity = 0;
	}
} else {
	_gravity = _gravity - _power;
}

return array(_letter, _y, _gravity, string_pos(_letter, alphabet)-1);