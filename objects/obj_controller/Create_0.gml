/// @description Insert description here
// You can write your code in this editor

global.water_height = 208

casting = false;
did_cast = false;
ability_cast_power = false;
cast_power = 0;
max_cast_power = 50;
cast_power_sign = 1;

line_len = 1;

reel_str = 1;

application_surface_draw_enable(false);
_uniTime  = shader_get_uniform(sh_filmGrain, "u_time");
_uniRand = shader_get_uniform(sh_filmGrain, "u_rand");
_uniScroll = shader_get_uniform(sh_filmGrain, "u_scroll");
_uniVingette = shader_get_uniform(sh_filmGrain, "u_vingette");
_uniLines = shader_get_uniform(sh_filmGrain, "u_lines");
_uniGrain = shader_get_uniform(sh_filmGrain, "u_grain");
_time  = 0;