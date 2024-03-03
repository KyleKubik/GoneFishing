/// @description Insert description here
// You can write your code in this editor


shader_set(sh_filmGrain);			
shader_set_uniform_f(_uniSpeed, _speed);
shader_set_uniform_f(_uniTime, _time);
draw_surface(application_surface,0,0);
shader_reset();