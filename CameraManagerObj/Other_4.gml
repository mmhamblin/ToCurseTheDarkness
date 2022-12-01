/// @description Insert description here
// You can write your code in this editor

view_enabled = true;
view_visible[0] = true;

var multiplier = 1;
if(!fullSize)
{
	multiplier = .75;
}

if(room == MainMenu)
{
	cam_goal_w = room_width;
	cam_goal_h = room_height;
	window_set_size(window_width_max*multiplier, window_height_max*multiplier);
	alarm[0] = 1;
	surface_resize(application_surface, window_width_max*multiplier, window_height_max*multiplier);
}
else if(room != ClicheRoom)
{
	cam_goal_w = 2400;
	cam_goal_h = cam_goal_w*window_height_max/window_width_max;
	window_set_size(window_width_max*multiplier, window_height_max*multiplier);
	alarm[0] = 1;
	surface_resize(application_surface, window_width_max*multiplier, window_height_max*multiplier);
}