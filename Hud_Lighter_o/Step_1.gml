/// @description Insert description here
// You can write your code in this editor

x = camera_get_view_x(view_camera[0]) + 150;
y = camera_get_view_y(view_camera[0]) + 150;

if(instance_number(Hud_Flame_o) > 0)
{
	hudFire.x = x;
	hudFire.y = y;
}