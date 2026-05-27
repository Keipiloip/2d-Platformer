if (distance_to_point(mouse_x,mouse_y)) <= 0 {
	hover=true;
	if (mouse_check_button_pressed(mb_left)) {
		sprite_index = sButtonClick
		
		room_goto(where_to_go);
	}
}	else {
	hover=false
}

if (hover) {
	sprite_index = sButtonHover
}	else {
	sprite_index = sButton
}

