/// @description move character
// You can write your code in this editor
//Inherit button checking from parent
event_inherited();

switch(state)
{
	default:
		move_character();
		if(grounded == false and state = normal)
		{
			vel_y += grav;
		}
}

if(state == climbing)
{
	ladder = instance_find(Ladder,0);
	x = ladder.x;
}