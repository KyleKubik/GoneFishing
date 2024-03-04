/// @description Insert description here
// You can write your code in this editor

casting = false;
did_cast = false;
cast_power = 0;
max_cast_power = 50;
cast_power_sign = 1;

line_len = 1;

application_surface_draw_enable(false);
_uniTime  = shader_get_uniform(sh_filmGrain, "u_time");
_uniSpeed = shader_get_uniform(sh_filmGrain, "u_speed");
_time  = 0;
_speed = 1.0;