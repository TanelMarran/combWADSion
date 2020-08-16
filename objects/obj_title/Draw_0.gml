/// @description Insert description here
// You can write your code in this editor

var arry = array(letter1, letter2, letter3, letter4);

var left = sprite_get_width(spr_comb);
var right = sprite_get_width(spr_ion) + 4*16;
var x_offset = left - (left + right)/2;

draw_sprite(spr_comb, 0, x+x_offset, y);

var i = 0
for(; i < 4; i++) {
	var letter = arry[i];
	draw_sprite(spr_letters_purple, letter[3], x+i*16+x_offset, y-letter[1]);
}

draw_sprite(spr_ion, 0, x+i*16+x_offset, y);