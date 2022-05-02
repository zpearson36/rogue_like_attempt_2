/// @description Insert description here
// You can write your code in this editor
equipment = ds_map_create()
no_helmut = instance_create_layer(x, y, layer, oHeadParent)
shirtless = instance_create_layer(x, y, layer, oTorsoParent)
pantsless = instance_create_layer(x, y, layer, oLegsParent)
barefoot  = instance_create_layer(x, y, layer, oFootParent)
no_gloves = instance_create_layer(x, y, layer, oGloveParent)
unarmed   = instance_create_layer(x, y, layer, oWeaponParent)
unarmed2   = instance_create_layer(x, y, layer, oWeaponParent)
unarmed2.type = EQUIPMENTPOSITIONS.OFFHAND

eq_menu = instance_create_layer(x, y, layer, oPanelWindow)

equipment[? EQUIPMENTPOSITIONS.HEAD]         = no_helmut
equipment[? EQUIPMENTPOSITIONS.TORSO]        = shirtless
equipment[? EQUIPMENTPOSITIONS.LEGS]         = pantsless
equipment[? EQUIPMENTPOSITIONS.FEET]         = barefoot
equipment[? EQUIPMENTPOSITIONS.GLOVES]       = no_gloves
equipment[? EQUIPMENTPOSITIONS.DOMINANTHAND] = unarmed
equipment[? EQUIPMENTPOSITIONS.OFFHAND]      = unarmed2

head_panel = instance_create_layer(x, y, layer, oClickablePanel)
head_panel.text = "Head: " + equipment[? EQUIPMENTPOSITIONS.HEAD].name
head_panel.info_window = equipment[? EQUIPMENTPOSITIONS.HEAD].info_window
eq_menu.add_panel(head_panel, EQUIPMENTPOSITIONS.HEAD)
torso_panel = instance_create_layer(x, y, layer, oClickablePanel)
torso_panel.text = "Torso: " + equipment[? EQUIPMENTPOSITIONS.TORSO].name
torso_panel.info_window = equipment[? EQUIPMENTPOSITIONS.TORSO].info_window
eq_menu.add_panel(torso_panel, EQUIPMENTPOSITIONS.TORSO)
legs_panel = instance_create_layer(x, y, layer, oClickablePanel)
legs_panel.text = "Legs: " + equipment[? EQUIPMENTPOSITIONS.LEGS].name
legs_panel.info_window = equipment[? EQUIPMENTPOSITIONS.LEGS].info_window
eq_menu.add_panel(legs_panel, EQUIPMENTPOSITIONS.LEGS)
feet_panel = instance_create_layer(x, y, layer, oClickablePanel)
feet_panel.text = "Feet: " + equipment[? EQUIPMENTPOSITIONS.FEET].name
feet_panel.info_window = equipment[? EQUIPMENTPOSITIONS.FEET].info_window
eq_menu.add_panel(feet_panel, EQUIPMENTPOSITIONS.FEET)
gloves_panel = instance_create_layer(x, y, layer, oClickablePanel)
gloves_panel.text = "Gloves: " + equipment[? EQUIPMENTPOSITIONS.GLOVES].name
gloves_panel.info_window = equipment[? EQUIPMENTPOSITIONS.GLOVES].info_window
eq_menu.add_panel(gloves_panel, EQUIPMENTPOSITIONS.GLOVES)
hand1_panel = instance_create_layer(x, y, layer, oClickablePanel)
hand1_panel.text = "Dominant Hand: " + equipment[? EQUIPMENTPOSITIONS.DOMINANTHAND].name
hand1_panel.info_window = equipment[? EQUIPMENTPOSITIONS.DOMINANTHAND].info_window
eq_menu.add_panel(hand1_panel, EQUIPMENTPOSITIONS.DOMINANTHAND)
hand2_panel = instance_create_layer(x, y, layer, oClickablePanel)
hand2_panel.text = "Off Hand: " + equipment[? EQUIPMENTPOSITIONS.OFFHAND].name
hand2_panel.info_window = equipment[? EQUIPMENTPOSITIONS.OFFHAND].info_window
eq_menu.add_panel(hand2_panel, EQUIPMENTPOSITIONS.OFFHAND)

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
			eq_menu.remove_panel(obj.type)
		}
		var panel = instance_create_layer(x, y, layer, oClickablePanel)
		var text = ""
		switch(obj.type)
		{
			case EQUIPMENTPOSITIONS.HEAD:
			{
				panel.unequip = no_helmut
				text += "Head: "
				break
			}
			case EQUIPMENTPOSITIONS.TORSO:
			{
				panel.unequip = shirtless
				text += "Torso: "
				break
			}
			case EQUIPMENTPOSITIONS.LEGS:
			{
				panel.unequip = pantsless
				text += "Legs: "
				break
			}
			case EQUIPMENTPOSITIONS.FEET:
			{
				panel.unequip = no_gloves
				text += "Feet: "
				break
			}
			case EQUIPMENTPOSITIONS.GLOVES:
			{
				panel.unequip = barefoot
				text += "Gloves: "
				break
			}
			case EQUIPMENTPOSITIONS.DOMINANTHAND:
			{
				panel.unequip = unarmed
				text += "Dominant Hand: "
				break
			}
			case EQUIPMENTPOSITIONS.OFFHAND:
			{
				panel.unequip = unarmed2
				text += "Off Hand: "
				break
			}
		}
		panel.text = text + obj.name
		eq_menu.add_panel(panel, obj.type)
		equipment[? obj.type] = obj
		obj.equiped = true
		panel.eq = self
		function tmp_func()
		{
			eq.equip(unequip)
		}
		panel.action = tmp_func
		
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