/// @description Insert description here
// You can write your code in this editor
inputManager = new InputManager();
for (var i = 0; i < instance_number(MenuLighterObj); ++i;)
{
    lighters[i] = instance_find(MenuLighterObj,i);
}

alarm_set(0,2);

flame = menu_flame;

startState = 0;
settingState = 1;
quitState = 2;
waitState = 3;

state = waitState;
/// @description Define control options
// You can write your code in this editor
//Generate Inputs to control player
up = inputManager.create_input()
        .add_keyboard_key(vk_up)
        .add_keyboard_key(ord("W"))
        .add_gamepad_button(gp_padu)
        .add_gamepad_left_stick(INPUT_AXIS.up);
		
down =	inputManager.create_input()
		.add_keyboard_key(vk_down)
		.add_keyboard_key(ord("S"))
		.add_gamepad_button(gp_padd)
		.add_gamepad_left_stick(INPUT_AXIS.down);
		
ok_key =	inputManager.create_input()
			.add_keyboard_key(vk_space)
			.add_keyboard_key(vk_enter)
			.add_gamepad_button(gp_face1);
			
back_key =	inputManager.create_input()
			.add_keyboard_key(ord("F"))
			.add_gamepad_button(gp_face2);
		
escape_key =	inputManager.create_input()
				.add_keyboard_key(vk_escape)
				.add_gamepad_button(gp_start);
