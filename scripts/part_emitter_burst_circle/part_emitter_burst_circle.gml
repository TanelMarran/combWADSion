
var ps = argument0;
var pe = argument1;
var pt = argument2;
var _x = argument3;
var _y = argument4;
var radius = argument5;

part_emitter_region(ps, pe, _x-radius, _x+radius, _y-radius, _y+radius, ps_shape_ellipse, ps_distr_linear);
part_emitter_burst(ps, pe, pt, 16);