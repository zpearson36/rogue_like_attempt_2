/// @description Insert description here
// You can write your code in this editor

display = []

function add_display(display_obj)
{
	array_push(display, display_obj)
}

function clear_display()
{
	display = []
}

function is_empty()
{
	return array_length(display) == 0
}