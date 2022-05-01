/// @description Insert description here
// You can write your code in this editor
contents = ds_map_create()

function add_item(obj)
{
	ds_map_add(contents, obj.id, obj)
}

function remove_item(obj)
{
	ds_map_delete(contents, obj.id)
}