/// @description Insert description here
// You can write your code in this editor

//Resizing
if (cam_w != cam_goal_w || cam_h != cam_goal_h) {
if (cam_resize_type == CAM_TYPE.linear) {
    var _ratio = (cam_goal_h / cam_goal_w);
    cam_w = approach(cam_w, cam_goal_w, cam_resize_speed);
    cam_h = approach(cam_h, cam_goal_h, cam_resize_speed * _ratio);
} else if (cam_resize_type == CAM_TYPE.smooth) {
    cam_w = lerp(cam_w, cam_goal_w, cam_resize_speed);
    cam_h = lerp(cam_h, cam_goal_h, cam_resize_speed);
}
}
//Update Size
camera_set_view_size(cam, cam_w, cam_h);
//Rotating
if (cam_angle != cam_goal_angle) {
if (cam_rotate_type == CAM_TYPE.linear) {
    cam_angle -= clamp(angle_difference(cam_angle, cam_goal_angle), -cam_rotate_speed, cam_rotate_speed);
} else if (cam_rotate_type == CAM_TYPE.smooth) {
    cam_angle -= (angle_difference(cam_angle, cam_goal_angle) * cam_rotate_speed);
}
}
//Update Angle
camera_set_view_angle(cam, cam_angle);
//Movement
if (cam_x != cam_goal_x || cam_y != cam_goal_y) {
if (cam_move_type == CAM_TYPE.linear) {
    cam_x = approach(cam_x, cam_goal_x, cam_move_speed);
    cam_y = approach(cam_y, cam_goal_y, cam_move_speed);
} else if (cam_move_type == CAM_TYPE.smooth) {
    cam_x = lerp(cam_x, cam_goal_x, cam_move_speed);
    cam_y = lerp(cam_y, cam_goal_y, cam_move_speed);
}
}
//Offset
if (cam_offset_x != cam_goal_offset_x || cam_offset_y != cam_goal_offset_y) {
if (cam_offset_type == CAM_TYPE.linear) {
    cam_offset_x = approach(cam_offset_x, cam_goal_offset_x, cam_offset_speed);
    cam_offset_y = approach(cam_offset_y, cam_goal_offset_y, cam_offset_speed);
} else if (cam_offset_type == CAM_TYPE.smooth) {
    cam_offset_x = lerp(cam_offset_x, cam_goal_offset_x, cam_offset_speed);
    cam_offset_y = lerp(cam_offset_y, cam_goal_offset_y, cam_offset_speed);
}
}
//Final Calculations
var _off_x = cam_offset_x;
var _off_y = cam_offset_y;
if (cam_offset_uses_rotation) {
var _len = point_distance(0, 0, _off_x, _off_y);
var _dir = point_direction(0, 0, _off_x, _off_y);
_off_x = lengthdir_x(_len, _dir - cam_angle);
_off_y = lengthdir_y(_len, _dir - cam_angle);
}
var _final_x = cam_x - (cam_w / 2) + _off_x;
var _final_y = cam_y - (cam_h / 2) + _off_y;
_final_x = clamp(_final_x, cam_min_x, cam_max_x - cam_w);
_final_y = clamp(_final_y, cam_min_y, cam_max_y - cam_h);
//Camera Shake
if (cam_shake_range) {
_final_x += irandom_range(-cam_shake_x, cam_shake_x);
_final_y += irandom_range(-cam_shake_y, cam_shake_y);
} else {
_final_x += choose(-cam_shake_x, cam_shake_x);
_final_y += choose(-cam_shake_y, cam_shake_y);
}
if (!cam_shake_ignore_limits) {
_final_x = clamp(_final_x, cam_min_x, cam_max_x - cam_w);
_final_y = clamp(_final_y, cam_min_y, cam_max_y - cam_h);
}
if (cam_shake_x != 0 || cam_shake_y != 0) {
if (cam_stabilize_type == CAM_TYPE.linear) {
    cam_shake_x = approach(cam_shake_x, 0, cam_stabilize_speed);
    cam_shake_y = approach(cam_shake_y, 0, cam_stabilize_speed);
} else if (cam_stabilize_type == CAM_TYPE.smooth) {
    cam_shake_x = lerp(cam_shake_x, 0, cam_stabilize_speed);
    cam_shake_y = lerp(cam_shake_y, 0, cam_stabilize_speed);
}
}
//Update Position
if (cam_round_position) {
_final_x = round(_final_x);
_final_y = round(_final_y);
}
camera_set_view_pos(cam, _final_x, _final_y);