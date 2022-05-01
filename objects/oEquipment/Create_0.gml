/// @description Insert description here
// You can write your code in this editor
equipment = ds_map_create()
no_helmut = instance_create_layer(x, y, layer, oHeadParent)
shirtless = instance_create_layer(x, y, layer, oTorsoParent)
pantsless = instance_create_layer(x, y, layer, oLegsParent)
barefoot  = instance_create_layer(x, y, layer, oFootParent)
no_gloves = instance_create_layer(x, y, layer, oGloveParent)
unarmed   = instance_create_layer(x, y, layer, oWeaponParent)

equipment[? EQUIPMENTPOSITIONS.HEAD]         = no_helmut
equipment[? EQUIPMENTPOSITIONS.TORSO]        = shirtless
equipment[? EQUIPMENTPOSITIONS.LEGS]         = pantsless
equipment[? EQUIPMENTPOSITIONS.FEET]         = barefoot
equipment[? EQUIPMENTPOSITIONS.GLOVES]       = no_gloves
equipment[? EQUIPMENTPOSITIONS.DOMINANTHAND] = unarmed
equipment[? EQUIPMENTPOSITIONS.OFFHAND]      = unarmed

function equip(obj)
{
	if(obj.type == EQUIPMENTPOSITIONS.NOTEQUIPABLE)
	{
		
	}
	else
	{
		if(equipment[? obj.type] != noone)
		{
			equipment[? obj.type].equiped = false
		}
		equipment[? obj.type] = obj
		obj.equiped = true
	}
}

function get_armour()
{
	var armour_value = 0
	armour_value += equipment[? EQUIPMENTPOSITIONS.HEAD].armour_value
	armour_value += equipment[? EQUIPMENTPOSITIONS.TORSO].armour_value
	armour_value += equipment[? EQUIPMENTPOSITIONS.LEGS].armour_value
	armour_value += equipment[? EQUIPMENTPOSITIONS.FEET].armour_value
	armour_value += equipment[? EQUIPMENTPOSITIONS.GLOVES].armour_value
	
	return armour_value
}

function get_dominant_hand()
{
	return equipment[? EQUIPMENTPOSITIONS.DOMINANTHAND]
}

function get_off_hand()
{
	return equipment[? EQUIPMENTPOSITIONS.OFFHAND]
}