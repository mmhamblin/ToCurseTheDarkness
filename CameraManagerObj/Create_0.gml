/// @description Insert description here
// You can write your code in this editor

enum CAM_TYPE {
linear,
smooth,
}
cam = view_camera[0];
cam_min_x = 0;
cam_min_y = 0;
cam_max_x = room_width;
cam_max_y = room_height;
cam_x = 0;
cam_y = 0;
cam_goal_x = 0;
cam_goal_y = 0;
cam_move_speed = .1;
cam_move_type = CAM_TYPE.smooth;
cam_offset_x = 0;
cam_offset_y = 0;
cam_goal_offset_x = 0;
cam_goal_offset_y = 0;
cam_offset_speed = .5;
cam_offset_type = CAM_TYPE.smooth;
cam_offset_uses_rotation = true;
cam_w = room_width;
cam_h = room_height;
cam_goal_w = room_width;
cam_goal_h = room_height;
cam_resize_speed = .1;
cam_resize_type = CAM_TYPE.smooth;
cam_angle = 0;
cam_goal_angle = 0;
cam_rotate_speed = .1;
cam_rotate_type = CAM_TYPE.smooth;
cam_shake_x = 0;
cam_shake_y = 0;
cam_shake_range = false;
cam_shake_ignore_limits = true;
cam_stabilize_speed = 0.1;
cam_stabilize_type = CAM_TYPE.smooth;
cam_round_position = true;

window_width_max = display_get_width();
window_height_max = display_get_height();
fullSize = true;

windowed = 0;
fullscreen = 1;

state = windowed;

var _window_scale = 2;
window_set_size(cam_w * _window_scale, cam_h * _window_scale);
alarm[0] = 1;
surface_resize(application_surface, cam_w * _window_scale, cam_h * _window_scale);