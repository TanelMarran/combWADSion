play_sound_effect(snd_explosion1, 0.8, 1.2, 1);

with(parent_id) {
	is_loading = false;
}

vibe = (vibe+1) mod 3;
ini_open("savedata.ini"); //opens the file we are using to store the info
ini_write_real("save","vibe", vibe); //reads the value from the specified section. if no value is there, it assigns a default value of 1000. it then assigns this value to the variable 'top_points'
ini_close(); //close the file since we're done with it