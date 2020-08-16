/// @description play effect with pitch
/// @param id
/// @param lower
/// @param uper
/// @param priority
var sound = noone;

if (sound_on) {
	sound = audio_play_sound(argument0, argument3, 0);
	audio_sound_pitch(sound, random_range(argument1, argument2));
}

return sound;