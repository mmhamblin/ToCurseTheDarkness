/// @description Insert description here
// You can write your code in this editor

if(fade)
{
	image_alpha -= fadeRate;
}

if (image_alpha <= 0)
{
	instance_destroy(self);	
}