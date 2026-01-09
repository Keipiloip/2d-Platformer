function death_uptate(){
	/// scr_player_death_update()
hspeed = 0;
vspeed = 0;

var anim_done = (image_index >= image_number - 1);
var fade_done = scr_fadeout(0.05); // pass a fade speed


if (anim_done && fade_done) {
    room_restart();
}

}



