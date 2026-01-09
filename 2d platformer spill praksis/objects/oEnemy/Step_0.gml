//calculate horizontal movement
hsp = current_dir

//calculate vertical movement
vsp += grav;
vsp = clamp(vsp,-vsp_max,vsp_max);

//horizontal collision
if (place_meeting(x+hsp,y,oBlock)) {
	var _pixel = sign(hsp);
	while (!place_meeting(x+_pixel,y,oBlock)) x +=_pixel
	hsp = 0;
	current_dir *= -1; //change direction
}
//horizontal collision
if (place_meeting(x+hsp,y,oBad)) {
	var _pixel = sign(hsp);
	while (!place_meeting(x+_pixel,y,oBad)) x +=_pixel
	hsp = 0;
	current_dir *= -1; //change direction
}


//vertical collison
if (place_meeting(x,y+vsp,oBlock)) {
	 var _pixel = sign (vsp);
	 while (!place_meeting(x,y+_pixel,oBlock)) { y += _pixel; }
	 vsp=0
 }
 
 //commit to movemeny
 x += hsp;
 y += vsp;
 
 //react to weapon
 if (place_meeting(x,y,oWeapon)) {
	instance_destroy(); 
 }