/// @description Insert description here
// You can write your code in this editor

image_index = -1;
image_speed = 0;

if(casting){
	_inst_bobber = instance_create_layer(obj_rod.x+32, obj_rod.y-32,0,obj_bobber);
	with(_inst_bobber){
		xspd = other.cast_power/5;	
		yspd = -other.cast_power/5;	
	}
	_inst_hook = instance_create_layer(obj_rod.x+32, obj_rod.y-32,0,obj_hook);
	with(_inst_hook){
		xspd = other.cast_power/5;	
		yspd = -other.cast_power/5;	
	}
	_inst_hook.inst_bobber = _inst_bobber;
	casting = false;
}