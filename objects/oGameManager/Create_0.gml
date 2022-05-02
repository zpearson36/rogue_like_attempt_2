/// @description Insert description here
// You can write your code in this editor
controller = instance_create_layer(x, y, layer, oController)
gui        = instance_create_layer(x, y, layer, oGui)

button = instance_create_layer(x, y, layer, oClickablePanel)
button.text = "Inventory"
button.x_pos = 50
button.y_pos = 50
button.gui = self

function display_player_inventory()
{
	oGameManager.gui.clear_display()
	oGameManager.gui.add_display(oPC.inventory.inv_menu)
	oGameManager.gui.add_display(oPC.inventory.equipment.eq_menu)
}

button.action = display_player_inventory

enum GAMESTATES
{
	PLAYERTURN,
	NPCTURN
}

state = GAMESTATES.PLAYERTURN
selected = noone