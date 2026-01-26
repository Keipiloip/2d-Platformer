var draw_x = 10;
var draw_y = 8;


//draw coin gui
draw_set_font(ft_gui);

var _w = display_get_gui_width();

//draw coin sprite
draw_sprite(sGem, 2,  _w - draw_x, draw_y + + 4);


//draw coin text
draw_set_halign(fa_right);
draw_text(_w - draw_x*2, draw_y, gems);
draw_set_halign(fa_right);