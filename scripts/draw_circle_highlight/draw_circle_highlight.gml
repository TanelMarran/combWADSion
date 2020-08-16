/// @description fun visual for the buttons that are being pressed
/// @param x circle center x
/// @param y circle center y
/// @param radius circle radius
/// @param offset
/// @param start
/// @param stop
/// @param percision
/// @param width

var _x = argument0;
var _y = argument1;
var radius = argument2;
var offset = argument3;
var start = argument4;
var stop = argument5;
var percision = argument6;
var width = argument7;

var angle = 360 / percision;

for(var i = 0; i < percision; i++) {	
	if(i/percision > start && i/percision < stop) {
		var x_pos = dsin(i*angle+offset)*radius;
		var y_pos = dcos(i*angle+offset)*radius;
		var nx_pos = dsin((i+1)*angle+offset)*radius;
		var ny_pos = dcos((i+1)*angle+offset)*radius;
		
		draw_line_width(_x+x_pos, _y+y_pos, _x+nx_pos, _y+ny_pos, width);
	}
}
