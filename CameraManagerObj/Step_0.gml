/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case windowed:
	if(fullSize == true)
	{
		window_set_size(window_width_max, window_height_max);
		alarm[0] = 1;
		surface_resize(application_surface, window_width_max, window_height_max);
		state = fullscreen;
	}
	break;
	case fullscreen:
	if(fullSize == false)
	{
		window_set_size(window_width_max*.75, window_height_max*.75);
		alarm[0] = 1;
		surface_resize(application_surface, window_width_max*.75, window_height_max*.75);
		state = windowed;
	}
	break;
}