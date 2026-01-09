spd = 6; //set speed
hsp = 0; //horizontal movement variable

if (instance_exists(oPlayer)) {
	image_xscale = oPlayer.image_xscale //set orientation
	x_anchor = oPlayer.x;
}

if (image_xscale ==1) {
	dir =1; //set direction
} else {
	dir = -1;
}