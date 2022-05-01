/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case GAMESTATES.PLAYERTURN:
	{
		with(oPC)
		{
			if(actions == 0)
			{
				with(oNPC)
				{
					activate()
				}
				other.state = GAMESTATES.NPCTURN
			}
		}
		break;
	}
	case GAMESTATES.NPCTURN:
	{
		action_points = 0
		with(oNPC)
		{
			other.action_points += actions
		}
		if(action_points == 0) other.state = GAMESTATES.PLAYERTURN
		selected = noone
		break;
	}
}