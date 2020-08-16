/// @description returns a vec that is minimesed to avoid collisions with defined object

var amount = argument0;
var collider = argument1;

var min_x = 0;
var min_y = 0;

// X movement

for(var i = 0; i <= abs(amount[0]); i++) {
	var add = i*sign(amount[0]);
	if (!place_meeting(x+add, y, collider)) {
		min_x = add;
	} else {
		break;
	}
}


var frac_x = frac(amount[0]);
if (abs(frac_x) == 1) {
	frac_x = 0;
}
if (!place_meeting(x+min_x+frac_x, y, collider)) {
	min_x += frac_x;
}

// Y movement

for(var i = 0; i <= abs(amount[1]); i++) {
	var add = i*sign(amount[1]);
	if (!place_meeting(x+min_x, y+add, collider)) {
		min_y = add;
	} else {
		break;
	}
}

var frac_y = frac(amount[1]);
if (abs(frac_y) == 1) {
	frac_y = 0;
}
if (!place_meeting(x+min_x, y+min_y+frac_y, collider)) {
	min_y += frac_y;
}

return array(min_x, min_y);