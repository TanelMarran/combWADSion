/// @description Insert description here
// You can write your code in this editor
globalvar top_points; //setup globalvars for use by other objects

globalvar sound_on, music_on, fullscreen_on, vibe;

globalvar transition_opacity, transition_target_opacity;
transition_opacity = 0;
transition_target_opacity = 0;

ini_open("savedata.ini"); //opens the file we are using to store the info

sound_on = ini_read_real("save","sound_on",true); //reads the value from the specified section. if no value is there, it assigns a default value of 1000. it then assigns this value to the variable 'top_points'
music_on = ini_read_real("save","music_on",true); //reads the value from the specified section. if no value is there, it assigns a default value of 1000. it then assigns this value to the variable 'top_points'
top_points = ini_read_real("save","top_score",0); //reads the value from the specified section. if no value is there, it assigns a default value of 1000. it then assigns this value to the variable 'top_points'
vibe = ini_read_real("save","vibe",0); //reads the value from the specified section. if no value is there, it assigns a default value of 1000. it then assigns this value to the variable 'top_points'
fullscreen_on = ini_read_real("save","fullscreen_on",false);

ini_close(); //close the file since we're done with it
room_goto_next();//go to the main menu room now that everything has been loaded

window_set_fullscreen(fullscreen_on);