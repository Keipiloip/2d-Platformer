if (place_meeting(x, y, oPlayer) && !collected) {
    oPlayer.gems++;
    image_index = 0;
    collected = true;
	
	 instance_destroy();
		
	audio_play_sound(sndCoin,1,false)  
}
