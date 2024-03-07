/// @description Insert description here
// You can write your code in this editor


shader_set(sh_filmGrain);			

shader_set_uniform_f(_uniRand, random(1));
shader_set_uniform_f(_uniScroll, 0.5);
shader_set_uniform_f(_uniVingette,0.5); 
shader_set_uniform_f(_uniLines, 0.5); 
shader_set_uniform_f(_uniGrain, 0.5); 
shader_set_uniform_f(_uniTime, _time);

draw_surface(application_surface,0,0);
shader_reset();