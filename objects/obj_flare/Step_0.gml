/// @description Insert description here
// You can write your code in this editor
if (count_buffer) {
	buffer--;
	if (buffer == 0) {
		script_execute(action);
		instance_destroy();
	}
}