function roomcode(){
	window_set_size(960*2,540*2);
	
//create player object
if (!instance_exists(oPlayer)) {
	instance_create_layer(global.target_x,global.target_y,"player",oPlayer);	
}

{	
fadein();

}
}