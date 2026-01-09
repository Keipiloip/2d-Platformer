if (place_meeting(x,y,oPlayer) && !collected) {
	oPlayer.gems++;
	image_index = 0
	collected = true;
}

if (collected) {
	instance_destroy();
	}

