/// @description Insert description here
// You can write your code in this editor
ps_explosion = part_system_create();
part_system_depth(ps_explosion,0);

pe_explosion = part_emitter_create(ps_explosion);

pt_bomb_l = part_type_create();
part_type_direction(pt_bomb_l, 0, 360, 0.1, 2);
part_type_speed(pt_bomb_l, 1, 3, -0.1, 0.1);
part_type_size(pt_bomb_l, 0.5, 1, -0.04, 0);
part_type_life(pt_bomb_l, 10, 30);
part_type_sprite(pt_bomb_l, spr_ash, true, true, true);

part_emitter_burst_circle(ps_explosion, pe_explosion, pt_bomb_l, x, y, 3);