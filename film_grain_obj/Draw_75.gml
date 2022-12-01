/// @description apply shader
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

shader_set(sh_noise);
var shader_seed = shader_get_uniform(sh_noise,"seed"); //get seed uniform id
shader_set_uniform_f(shader_seed,seed); //send seed to shader
draw_surface(application_surface,0,0); //redraw application surface with shader applied
shader_reset();