/// @function	fadeout (target_room)
/// @param	{index}		_targetroom
/// @param	{intger}	_target_x	target x location for player object 
/// @param	{intger}	_target_y	target y location for player object 


function fadeout(_targetroom,_target_x,_target_y){
	
global.target_x = _target_x;
global.target_y = _target_y;   
	
	 if (!instance_exists(oFade)) {
		 var _fade =  instance_create_layer(0,0,"player",oFade);
		  with (_fade) {
			  a = 0;
			  fade_out = true;
			  target_room = _targetroom;
} 
}
}
