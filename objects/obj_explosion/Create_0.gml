/// @description Insert description here
// You can write your code in this editor
var radius = 30;

ps_explosion = part_system_create();
part_system_depth(ps_explosion,-room_height);

pe_explosion = part_emitter_create(ps_explosion);

pt_bomb_l = part_type_create();
part_type_direction(pt_bomb_l, 0, 360, 0.1, 2);
part_type_speed(pt_bomb_l, 0.5, 0.6, -0.1, 0.1);
part_type_life(pt_bomb_l, 10, 30);
part_type_sprite(pt_bomb_l, spr_explosion, true, true, true);

part_emitter_burst_circle(ps_explosion, pe_explosion, pt_bomb_l, x, y-8, 15);


var collisions = ds_list_create();
collision_circle_list(x, y, radius, obj_Pnpc, false, true, collisions, false);

var points_get = 0;
for(var i = 0; i < ds_list_size(collisions); i++) {
	with(ds_list_find_value(collisions, i)) {
		points_get += has_defeated();
	}
}
if (gameloop.game_over) {
	gameloop.points -= points_get;
	with(obj_points) {
		instance_destroy();
	}
}