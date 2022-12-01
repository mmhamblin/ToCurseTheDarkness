/// @description Insert description here
// You can write your code in this editor

xpos = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - 400;
ypos = camera_get_view_y(view_camera[0]) + 100;

draw_sprite_ext(White_Meter,1,xpos,ypos,scale,scale,0,c_white,1);
draw_sprite_ext(Green_Meter,1,xpos,ypos,dangerLevel,scale,0,c_white,1);
draw_sprite_ext(Meter_Front,1,xpos,ypos,scale,scale,0,c_white,1);