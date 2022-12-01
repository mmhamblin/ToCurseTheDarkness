/// @description Insert description here
// You can write your code in this editor

var time = current_time/1000;
lightFlame.light[| eLight.X] = x + sine_between(time, 1, -5, 5);
lightFlame.light[| eLight.Y] = y + sine_between(time, 2, -8, 8);
	
//control flame
image_angle = sine_between(time, 2, -3, 3);
image_xscale = xscale*sine_between(time, 3, .95, 1.05);
image_yscale = yscale*sine_between(time, 3, .95, 1.10);