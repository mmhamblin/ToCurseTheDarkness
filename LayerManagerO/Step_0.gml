/// @description move layers
// You can write your code in this editor
extra_move += .3;

var camx = camera_get_view_x(view_camera[0]);

layer_x("Backgrounds_1", camx*.95);
layer_x("Backgrounds_2", camx*.7);
layer_x("Backgrounds_3", camx*.4);
layer_x("Backgrounds_5", camx*.95+extra_move);