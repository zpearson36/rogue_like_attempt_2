/// @description Insert description here
// You can write your code in this editor
var panel_list = []
ds_map_keys_to_array(panels, panel_list)
for(var i = 0; i < ds_map_size(panels); i++)
{
	panels[? panel_list[i]].x_pos = x_pos + 10
	panels[? panel_list[i]].y_pos = y_pos + 10 + (i * 60)
	panels[? panel_list[i]].active = active
}