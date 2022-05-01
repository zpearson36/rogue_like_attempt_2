/// @description Insert description here
// You can write your code in this editor
controller = instance_create_layer(x, y, layer, oController)

enum GAMESTATES
{
	PLAYERTURN,
	NPCTURN
}

state = GAMESTATES.PLAYERTURN
selected = noone