/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case normal:
	if(abs(Player_Obj.y - y) < 1000)
	{
		if(dir > 0 and Player_Obj.x > x)
		{
			if(abs(Player_Obj.x-x) < 500 and Player_Obj.state != Player_Obj.hiding)
			state = charge;
		}
		else if (dir < 0 and Player_Obj.x < x and Player_Obj.state != Player_Obj.hiding)
		{
			if(abs(Player_Obj.x-x) < 500)
			state = charge;
		}
	}
		if(!check_collision(vel_x,0))
		{
			move_character();
		}
		else
		{
			vel_x = -vel_x;
		}
	break;
	case charge:
		if(Player_Obj.x < x)
		{
			dir = -1;
		}
		else
		{
			dir = 1;	
		}
		move_towards_point(Player_Obj.x, y, 50);
		if(abs(Player_Obj.x -x) < 50)
		{
			show_message("A monster got you");
			game_restart();
		}
	break;
}

if(vel_x > 0)
{
	dir = 1;	
}
if(vel_x < 0)
{
	dir = -1;	
}

image_xscale = dir;

if(state == down)
{
	state = normal;
	instance_change(EnemyDown, true);
}

var time = current_time/1000;
image_angle = sine_between(time, 10, -10, 10);
image_yscale = sine_between(time, 5, .95, 1.10);