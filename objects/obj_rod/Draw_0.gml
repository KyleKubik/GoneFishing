/// @description Insert description here
// You can write your code in this editor

draw_self()

if(_inst_bobber != pointer_null){
	draw_set_color(c_black);
	draw_line(x+31,y-31,_inst_bobber.x,_inst_bobber.y);	
	if(_inst_hook != pointer_null){
		draw_line(_inst_bobber.x,_inst_bobber.y,_inst_hook.x,_inst_hook.y-2);	
	}
}

if(displaying_fish){
	if(caught_fish != pointer_null){
		draw_line(x+31,y-31,caught_fish.x,caught_fish.y);	
	}
}