if (fade_out) {  //fade out from clear to black
	if (a < 1) { //if not completly black
		a += fadeoutrate //make more black    
	} else {
		a = 1; //set to 100% black
		 room_goto(target_room);
	}
} else { //fade in from black to clear
	if ( a > 0) { //if not completly clear
		a -= fadeinrate; //make more clear
	} else {
		a = 0; //set to 0% black
		instance_destroy();
	}
}