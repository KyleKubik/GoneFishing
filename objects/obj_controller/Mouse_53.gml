/// @description Insert description here
// You can write your code in this editor

if(did_cast){
	if(obj_rod._inst_hook.x<440 && obj_rod._inst_hook.y<280){
		if(obj_rod._inst_hook.has_fish){
			obj_rod.caught_fish = obj_rod._inst_hook.inst_fish;
			obj_rod.displaying_fish = true;
			obj_rod._inst_hook.inst_fish.displayed = true;
			obj_rod._inst_hook.inst_fish.destX = obj_rod.x+31;
			obj_rod._inst_hook.inst_fish.destY = obj_rod.y;
			
			//instance_destroy(obj_rod._inst_hook.inst_fish);
			obj_rod._inst_hook.has_fish = false;
		}
		did_cast = false;
		with(obj_rod){
			instance_destroy(_inst_hook);
			instance_destroy(_inst_bobber);
			_inst_bobber = pointer_null;
			_inst_hook = pointer_null;
		}
	}
}else if(obj_rod.displaying_fish){
	obj_rod.displaying_fish = false;
	var fish = obj_rod.caught_fish;
	instance_destroy(fish);
}else{
	with(obj_rod){
		image_index = 0;
		image_speed = 0;	
	}	
	casting = true;
	cast_power = 2;
}