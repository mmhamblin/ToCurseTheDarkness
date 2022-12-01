/// @description Insert description here
// You can write your code in this editor
if(state != waitState)
{
	flame.x = lighters[state].x;
	flame.y = lighters[state].y;
}
//Check for ok button
if(ok_key.check_pressed(true))
{
	ok_key.fully_press();
	switch(state)
	{
		case startState:
			alarm_set(1,30);
			state = waitState;
			audio_play_sound(StartGameSound, 10, false);
		break;
		case settingState:
			instance_create_layer(x, y, "PauseLayer", StartMenu);
		break;
		case quitState:
			game_end();
		break;
	}
}

if(up.check_pressed(true))
{
	up.fully_press();
	switch(state)
	{
		case startState:
			state = quitState;
			audio_play_sound(SparkSound, 10, false);	
		break;
		case settingState:
			state = startState;
			audio_play_sound(SparkSound, 10, false);
		break;
		case quitState:
			state = settingState;
			audio_play_sound(SparkSound, 10, false);
		break;
	}
}

if(down.check_pressed(true))
{
	down.fully_press();
	if(state != waitState)
	{
		audio_play_sound(SparkSound, 10, false);
	}
	switch(state)
	{
		case startState:
			state = settingState;
		break;
		case settingState:
			state = quitState;;
		break;
		case quitState:
			state = startState;
		break;
	}
}