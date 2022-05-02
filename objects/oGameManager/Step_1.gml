/// @description Insert description here
// You can write your code in this editor
if(gui.is_empty()) gui.add_display(button)
switch(state)
{
	case GAMESTATES.PLAYERTURN:
	{
		with(oPC)
		{
			activate()
		}
		break;
	}
	case GAMESTATES.NPCTURN:
	{
		with(oNPC)
		{
			if(actions > 0){other.selected = self; break}
		}
		if(selected != noone) selected.activate()
		break;
	}
}