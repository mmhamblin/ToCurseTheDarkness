/// @description Define control options
// You can write your code in this editor
//Generate Inputs to control player
right = inputManager.create_input()
        .add_keyboard_key(vk_right)
        .add_keyboard_key(ord("D"))
        .add_gamepad_button(gp_padr)
        .add_gamepad_left_stick(INPUT_AXIS.right);
		
left =	inputManager.create_input()
		.add_keyboard_key(vk_left)
		.add_keyboard_key(ord("A"))
		.add_gamepad_button(gp_padl)
		.add_gamepad_left_stick(INPUT_AXIS.left);
		
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
