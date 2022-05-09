/// @description Insert description here
// You can write your code in this editor
x = cell_to_pixel_x(pixel_to_cell_x(x))
y = cell_to_pixel_y(pixel_to_cell_y(y))

inventory = instance_create_layer(x, y, layer, oInventory)
_health = 3

enum CHARSTATES
{
	ACTIVE,
	INACTIVE
}

state = CHARSTATES.INACTIVE

actions = 1
function activate()
{
	
	actions = 1
	state = CHARSTATES.ACTIVE
}

function end_turn()
{
	actions = 0
	state = CHARSTATES.INACTIVE
}

function movement(dX, dY)
//dX and dY are entered as number of cells, not pixels
{
	var col_obj = collision_rectangle(bbox_left   + (dX * CELLWIDTH)  + 1,
								      bbox_top    + (dY * CELLHEIGHT) + 1,
									  bbox_right  + (dX * CELLWIDTH)  - 1,
									  bbox_bottom + (dY * CELLHEIGHT) - 1,
									  oCharParent, false, true)
	if(col_obj != noone)
	{
		if(irandom(99) + 1 > 50 + col_obj.get_armour_level())
		{
			show_debug_message("Hit")
			col_obj._health -= inventory.equipment.get_dominant_hand().get_damage(false)
		}
		else show_debug_message("Miss")
	}
	else
	{
		x += dX * CELLWIDTH
		y += dY * CELLHEIGHT
	}
}

function get_armour_level()
{
	return inventory.equipment.get_armour()
}