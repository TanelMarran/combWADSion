/// @description Insert description here
// You can write your code in this editor
gametime++;
screen_shake = max(0,screen_shake-0.3);

if(transition_opacity == 1 && next_room != noone && tranisiton_delay == 0) {
	room_goto(next_room);
	next_room = noone;
}

/*/ TOGGLE FOR HTML5
if(keyboard_check_pressed(vk_escape)) {
	game_end();
}
//*/

