/// @description Insert description here
// You can write your code in this editor
if(active)
{
	var x_pos = device_mouse_x_to_gui(0) + 25
	var y_pos = device_mouse_y_to_gui(0)
	draw_set_color(c_black)
	draw_set_alpha(.8)
	draw_rectangle(x_pos, y_pos, x_pos + 350, y_pos + 150, false)
	draw_set_alpha(1)
	draw_rectangle(x_pos, y_pos, x_pos + 350, y_pos + 150, true)
	draw_set_color(c_white)
	draw_text(x_pos + 10,  y_pos + 10, name)
	draw_text(x_pos + 200, y_pos + 10, type)
	if(damage != "") draw_text(x_pos + 10,  y_pos + 30, "Damage: " + damage)
	if(protection != "") draw_text(x_pos + 10,  y_pos + 50, "Protection: " + protection)
	if(armour_value != "") draw_text(x_pos + 10,  y_pos + 50, "Armor Value: " + armour_value)
	draw_text(x_pos + 10,  y_pos + 90, description)
	
}