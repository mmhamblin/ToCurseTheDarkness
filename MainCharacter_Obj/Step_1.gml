/// @description Control state switching
// You can write your code in this editor

//run input manager
event_inherited();

switch(state)
{
	default:
		if(check_collision(0,1))
		{
			oldGround = grounded;
			grounded = true;
			if(oldGround == false)
			{
				audio_play_sound(StepSound, 10, false);
			}
		}
		else
		{
			grounded = false;
			oldGround = false;
		}
}