

#region Current status

//get current status
var _onground = place_meeting(x,y+groundbuffer,oBlock);


#endregion

#region inputs

//get inputs

 var _key_left = keyboard_check(ord("A"))
 var _key_right = keyboard_check(ord("D"))
 var _key_jump = keyboard_check(vk_space);
 var _key_jump_held = keyboard_check(vk_space);
 var _key_attack = mouse_check_button(mb_left)
 
if (instance_exists(oFade)) { 
_key_left = 0;
_key_right = 0;
_key_jump = 0;
_key_jump_held = 0; 
_key_attack = 0;
 }

#endregion 

#region Horizontal Movement

	//calculate horizontal movement
 
 
 //get move direction (-1 is left, 1 is right, 0 is nothing)
 var _dir = _key_right - _key_left;
 
 //get horizontal speed (negative left, positive means right)
 hsp += _dir*accel;
 
 //slow down characther if no direction key is being presseed
 if (_dir ==0) {
	 if (hsp < 0) { //going left
		 hsp = min(hsp + decel, 0);
	 } else { //going right 
		 hsp = max(hsp - decel, 0);
	 }
 }
 
 hsp = clamp(hsp,-max_hsp,max_hsp); //set the max speed
 
 #endregion
 
#region Vertical Movement
 
	//calculate vertical movement
//add gravity
vsp += grav;

//ground jump
if (jumpbuffer > 0) { //chek if the jump buffer is greater than 0
	jumpbuffer--;
	if (_key_jump) && (vsp > 0) { //jump key pressed, and player NOT going up
		jumpbuffer = 0; //set jumbuffer to 0 (cant jump again
		vsp = jumpheight;			//jump up
	}
}

if (_onground) { jumpbuffer = jumpbuffer_max; }

//variable jump height
if (vsp < 0) && (!_key_jump_held) { //if going up, and NOT holding jump key
	vsp = max(vsp,jumpheight_min); //set jump height to be smaller 
} 

vsp = clamp(vsp,jumpheight,grav_max); //cap how fast we can fall or rise

#endregion

#region collisions

  
 //horizontal collision
if (place_meeting(x+hsp,y,oBlock)) {
	var _pixel = sign(hsp);
	while (!place_meeting(x+_pixel,y,oBlock)) { x += _pixel; }
	hsp = 0;
}

 //comit to movment
 x += hsp;
 if (hsp ==0) { x = round(x); }
 
 //vertical collision
 if (place_meeting(x,y+vsp,oBlock)) {
	 var _pixel = sign (vsp);
	 while (!place_meeting(x,y+_pixel,oBlock)) { y += _pixel; }
	 vsp=0
 }
 
 //commit to movement
 y += vsp;
 if (vsp == 0) { y = round(y); }
 
 #endregion

#region sprites 

image_speed =1; //100% of animation speed

//if moving, orient sprite according to direction of movement
if (hsp != 0) image_xscale = sign(hsp);


if (!_onground) { //if in the air
	sprite_index = sPlayerAir
	image_speed= 0; 
	image_index = (vsp > 0); //falling= 1, evreything else = 0
} else { //if on the ground
	if (hsp !=0)  { //if moving left or right
		sprite_index =sPlayerRun
		image_speed = (hsp/max_hsp)*sign(hsp); 
	} else { //standing still
		sprite_index = splayer; 
	}
}
#endregion

#region attack

if (attack_cooldown > 0) { //if attack cooldown isnt at 0, reduce it to 0
    attack_cooldown  =max(0,attack_cooldown-1);
} else { //if it is 0, then player can attack again
	if (_key_attack) {
		attack_cooldown = attack_max; //set the cooldown timer
		instance_create_layer(x,y,"weapon",oWeapon);
		
	}
		
}
#endregion

#region enemies
if place_meeting(x,y,oBad) {
game_restart()



}


#endregion
 

if (keyboard_check_pressed(vk_enter)) {
	game_restart()
}
  

 

 

