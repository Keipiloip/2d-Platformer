function roomcode(){
	window_set_fullscreen(true)
	
//create player object
if (!instance_exists(oPlayer)) {
	instance_create_layer(global.target_x,global.target_y,"player",oPlayer);	
}

{	
fadein();

}
if (!audio_is_playing(sndMusic)){
	audio_play_sound(sndMusic,1,true)
}
}