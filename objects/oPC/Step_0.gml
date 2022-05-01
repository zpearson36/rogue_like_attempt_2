/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case CHARSTATES.ACTIVE:
	{
		if(global.move_down) { movement(0, 1);  end_turn(); break;}
		if(global.move_up)   { movement(0, -1); end_turn(); break;}
		if(global.move_left) { movement(-1, 0); end_turn(); break;}
		if(global.move_right){ movement(1, 0);  end_turn(); break;}
		break
	}
	case CHARSTATES.INACTIVE:
	{
		break
	}
}
