/// @description Insert description here
// You can write your code in this editor


with(obj_rod){
	image_index = 0;
	image_speed = 0;	
}
if(did_cast){
	did_cast = false;
	with(obj_rod){
		instance_destroy(_inst_hook);
		instance_destroy(_inst_bobber);
		_inst_bobber = pointer_null;
		_inst_hook = pointer_null;
	}
}else{
	casting = true;
	cast_power = 0;
}