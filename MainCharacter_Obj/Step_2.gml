/// @description sprite control
// You can write your code in this editor

//Turn image left or right
if(vel_x > 0)
{
	dir = dir_r;
}
if(vel_x < 0)
{
	dir = dir_l;
}
image_xscale = dir;

if(grounded == true)
{
	image_speed = .25;
}
else if(state == normal)
{
	image_speed = 0;
}

switch(state)
{
	case climbing:
		if(sprite_index != PlayerClimb_s)
		{
			sprite_index = PlayerClimb_s;
		}
		if(vel_y == 0)
		{
			image_speed = 0;
		}
		else if(vel_y < 0)
		{
			image_speed = 1;
		}
		else if(vel_y > 0)
		{
			image_speed = -1;	
		}
	break;
	case hiding:
		if(sprite_index != Player_hideDark)
		{
			sprite_index = Player_hideDark;
		}
	break;
	default:
		switch(sprite_index)
		{
			case PlayerWalk_spr:
				if(vel_x == 0 and grounded == true)
				{
					sprite_index = Player_spr;
				}
			break;
			case Player_spr:
				if(vel_x != 0 and grounded == true)
				{
					sprite_index = PlayerWalk_spr;
				}
			break;
			default:
				sprite_index = Player_spr;
		}
}

//Play stepping sounds
if(sprite_index == PlayerWalk_spr)
{
	if(image_index == 1 and grounded == true)
	{
		audio_play_sound(StepSound, 10, false);	
	}
}

//Control lighter position
if(lighterOn == true)
{
	var diffx = 132;
	if(vel_x != 0)
	{
		diffx = 136;
	}
	var time = current_time/1000;
	//lighterLight.image_xscale = dir*sine_between(time, 3, .95, 1.05);
	//ighterLight.image_yscale = sine_between(time, 3, .95, 1.05);
	lighterLight.light[| eLight.X] = x + dir*diffx+ sine_between(time, 1, -3, 3);
	lighterLight.light[| eLight.Y] = y -170 + sine_between(time, 2, -4, 4);
	
	//control flame
	lighterFlame.x = x+dir*diffx + sine_between(time, 1, -1, 1);
	lighterFlame.y = y-170;
	lighterFlame.image_angle = sine_between(time, 2, -3, 3);
	lighterFlame.image_xscale = sine_between(time, 3, .95, 1.05);
	lighterFlame.image_yscale = sine_between(time, 3, .95, 1.10);
	
}
else //control weak light around player
{
	//lighterLight.image_xscale = dir*sine_between(time, 3, .95, 1.05);
	//ighterLight.image_yscale = sine_between(time, 3, .95, 1.05);
	weakLight.light[| eLight.X] = x;
	weakLight.light[| eLight.Y] = y;
}

if(state == hiding)
{
	depth = startDepth + 50;	
}
else
{
	depth = startDepth;	
}