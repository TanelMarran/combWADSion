with(parent_id) {
	is_loading = false;
}

sound_on = !sound_on;
ini_open("savedata.ini"); //opens the file we are using to store the info
ini_write_real("save","sound_on", sound_on); //reads the value from the specified section. if no value is there, it assigns a default value of 1000. it then assigns this value to the variable 'top_points'
ini_close(); //close the file since we're done with it

play_sound_effect(snd_explosion1, 0.8, 1.2, 1);