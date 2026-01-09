//lock to players vertical position

if (instance_exists(oPlayer)) {
	y = oPlayer.y;
	x_anchor = oPlayer.x;
}

//horizontal movement
hsp += spd;
x = x_anchor + (hsp*dir);



