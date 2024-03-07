/// @description Insert description here
// You can write your code in this editor

if(casting){
	if(ability_cast_power){
		cast_power += cast_power_sign;
		if(cast_power == max_cast_power){
			cast_power_sign = -1;
		}else if(cast_power == 0){
			cast_power_sign = 1;
		}
	}
}
if(did_cast){
	var _bobber =  obj_rod._inst_bobber;
	var _hook	= obj_rod._inst_hook;
	var _fish	=  obj_rod._inst_hook.inst_fish;
	
	var _bobber_dir = point_direction(_bobber.x,_bobber.y,obj_rod.x+32,obj_rod.y-32);
	_bobber.x += reel_str*dcos(_bobber_dir);
	_bobber.y -= reel_str*dsin(_bobber_dir);
	_bobber.xspd = 0;
	_bobber.yspd = 0;
	
	var _hook_dir = point_direction(_hook.x,_hook.y,_bobber.x,_bobber.y);
	_hook.x += reel_str*dcos(_hook_dir);
	_hook.y -= reel_str*dsin(_hook_dir);
	
	if(_hook.has_fish){
	    _fish_dir = point_direction(_fish.x,_fish.y,_bobber.x,_bobber.y);
		with(_fish){
			if( !place_meeting(x + other.reel_str*dcos(other._fish_dir), y, obj_land_mask) ){
				x += other.reel_str*dcos(other._fish_dir);
			}
			if( not place_meeting(x, y - other.reel_str*dcos(other._fish_dir), obj_land_mask) ){
				y -= other.reel_str*dsin(other._fish_dir);
			}
		}
	}
	
	if(_hook.x < 420 && _hook.y<220){
		if(obj_rod._inst_hook.has_fish){
			
			obj_rod.caught_fish = obj_rod._inst_hook.inst_fish;
			obj_rod.displaying_fish = true;
			obj_rod._inst_hook.inst_fish.displayed = true;
			obj_rod._inst_hook.inst_fish.destX = obj_rod.x+32;
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
}
