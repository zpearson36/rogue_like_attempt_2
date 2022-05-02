/// @description Insert description here
// You can write your code in this editor
active = false
panels = ds_map_create()
x_pos = 50
y_pos = 50
function add_panel(panel, key)
{
	if(panel.object_index != oClickablePanel)
	{
		return -1
	}
	else
	{
		panel.x_pos = x_pos + 10
		panel.y_pos = y_pos + 10 + (ds_map_size(panels) * 60)
		ds_map_add(panels, key, panel)
	}
}

function remove_panel(key)
{
	ds_map_delete(panels, key)
}
layer = layer_get_id("Window")