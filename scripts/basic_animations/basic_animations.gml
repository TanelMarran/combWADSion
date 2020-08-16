var xscale = 1;
var shake = 0;

if (argument_count == 3) {
	xscale = argument[2];
}
if (argument_count == 4) {
	shake = argument[3];
}

if(argument[0]) {
	var t = argument[1];
	var squash_amount = 0.1;
	var rotate_amount = 10;
	var breath_factor = 1.05;
	draw_sprite_ext(sprite_index, image_index, x+random_range(-shake, shake), y-y_height, (1+dsin(t*breath_factor)*squash_amount)*facing*xscale, 1+dcos(t*breath_factor)*squash_amount, dsin(t)*rotate_amount, c_white, image_alpha);
}