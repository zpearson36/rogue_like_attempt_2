/// @description Insert description here
// You can write your code in this editor
x = cell_to_pixel_x(pixel_to_cell_x(x))
y = cell_to_pixel_y(pixel_to_cell_y(y))

inventory = instance_create_layer(x, y, layer, oInventory)
equipment = instance_create_layer(x, y, layer, oEquipment)
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
		col_obj._health -= equipment.get_dominant_hand().get_damage(false)
	}
	else
	{
		x += dX * CELLWIDTH
		y += dY * CELLHEIGHT
	}
}