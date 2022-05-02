/// @description Insert description here
// You can write your code in this editor
contents = ds_map_create()
inv_menu = instance_create_layer(x, y, layer, oPanelWindow)
equipment = instance_create_layer(x, y, layer, oEquipment)
equipment.eq_menu.x_pos = 230

function add_item(obj)
{
	ds_map_add(contents, obj.id, obj)
	var panel = instance_create_layer(x, y, layer, oClickablePanel)
	panel.text = obj.name
	panel.info_window = obj.info_window
	inv_menu.add_panel(panel, obj.id)
	if(object_is_ancestor(obj.object_index, oEquipmentParent))
	{
		panel.eq = equipment
		panel.obj2 = obj
		function tmp()
		{
			show_debug_message("FUCKOFF")
			eq.equip(obj2)
		}
		panel.action = tmp
	}
}

function remove_item(obj)
{
	inv_menu.remove_panel(obj.id)
	ds_map_delete(contents, obj.id)
}