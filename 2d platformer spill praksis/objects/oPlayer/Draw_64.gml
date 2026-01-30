var draw_x = 28;
var draw_y = 6;


//draw coin gui
draw_set_font(ft_gui);

var _w = display_get_gui_width();

//draw coin sprite
draw_sprite_ext(sGem, 1, _w - draw_x, draw_y + 2, 2, 2, 0, c_white, 1);


//draw coin text
draw_set_halign(fa_right);
draw_set_colour(c_fuchsia)
draw_text(_w - draw_x*1.3, draw_y-2, gems);
draw_set_halign(fa_right);