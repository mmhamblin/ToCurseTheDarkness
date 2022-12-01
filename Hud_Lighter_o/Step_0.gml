/// @description Insert description here
// You can write your code in this editor

if(instance_number(small_flame_o) > 0)
{
	if(instance_number(Hud_Flame_o) == 0)
	{
		instance_create_layer(x,y,"Hud_Instances", hudFire);
	}
}
else
{
	if(instance_number(Hud_Flame_o) >0)
	{
		instance_destroy(hudFire);
	}
}

x = camera_get_view_x(view_camera[0]) + 150;
y = camera_get_view_y(view_camera[0]) + 150;

if(instance_number(Hud_Flame_o) > 0)
{
	hudFire.x = x;
	hudFire.y = y;
}
