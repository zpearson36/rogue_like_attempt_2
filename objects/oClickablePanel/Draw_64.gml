/// @description Insert description here
// You can write your code in this editor
c_color = c_black
if(highlight) c_color = c_grey
if(active)
{
	draw_set_alpha(.5)
	draw_rectangle_color(x_pos, y_pos, x_pos + _width, y_pos + _height, c_color, c_color, c_color, c_color, false)
	draw_set_alpha(1)
	draw_rectangle_color(x_pos, y_pos, x_pos + _width, y_pos + _height, c_color, c_color, c_color, c_color, true)
	draw_text(x_pos + 10, y_pos + 10, text)
}