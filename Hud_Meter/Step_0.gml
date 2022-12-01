/// @description Insert description here
// You can write your code in this editor

if(danger)
{
	dangerLevel += dangerRate;	
}
else
{
	if(dangerLevel > 0)
	{
		dangerLevel += -dangerRate;	
	}
}

if(dangerLevel >= 1)
{
	dangerRate = 0;
	show_message("Your darkness disease has turned you into a monster");
	game_restart();
}