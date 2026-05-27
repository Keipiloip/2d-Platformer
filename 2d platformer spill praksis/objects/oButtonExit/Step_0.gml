if (distance_to_point(mouse_x,mouse_y)) <= 0 {
	hover=true;
	if (mouse_check_button_pressed(mb_right)) {
		game_end()
	}
}	else {
	hover=false
}

if (hover) {
	sprite_index = sButtonHover
}	else {
	sprite_index = sButton
}