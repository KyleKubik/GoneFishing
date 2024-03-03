/// @description Insert description here
// You can write your code in this editor

if(casting){
	with(obj_rod){
		image_speed = 2;	
	}
	var _inst_bobber = instance_create_layer(obj_rod.x, obj_rod.y,0,obj_bobber);
	with(_inst_bobber){
		xspd = other.cast_power/5;	
		yspd = -other.cast_power/5;	
	}
	var _inst_hook = instance_create_layer(obj_rod.x, obj_rod.y,0,obj_hook);
	with(_inst_hook){
		xspd = other.cast_power/5;	
		yspd = -other.cast_power/5;	
	}
	_inst_hook.inst_bobber = _inst_bobber;
}