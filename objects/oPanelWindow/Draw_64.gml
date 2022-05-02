/// @description Insert description here
// You can write your code in this editor
if(active)
{
	draw_set_color(c_black)
	draw_set_alpha(.5)
	draw_rectangle(x_pos, y_pos, x_pos + 170, y_pos + 10 + (ds_map_size(panels) * 60), false)
	draw_set_alpha(1)
	draw_rectangle(x_pos, y_pos, x_pos + 170, y_pos + 10 + (ds_map_size(panels) * 60), true)
	draw_set_color(c_white)
}