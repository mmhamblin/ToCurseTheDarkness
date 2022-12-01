// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_character(){
	var xstep = sign(vel_x);
	var xnum = abs(vel_x);
	var ystep = sign(vel_y);
	var ynum = abs(vel_y);
		
		//horizontal movement
	repeat(xnum)
	{
		if(!check_collision(xstep, 0))
		{
			x += xstep;
		}
		else
		{
			vel_x = 0;
			break;
		}
	}
	//vertical movement
	repeat(ynum)
	{
		if(!check_collision(0, ystep))
		{
			y += ystep;
		}
		else
		{
			vel_y = 0;
		}
	}
}