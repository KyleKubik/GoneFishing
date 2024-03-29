/// @description Insert description here
// You can write your code in this editor

if(displayed){
	
	image_xscale = im_scale;
	image_angle = -90;
	if(distance_to_point(destX,destY) < 0.1){
		speed = 0;
	}else{
		move_towards_point(destX,destY,5);
	}
	
}else{

	if(y < global.water_height+10){
		y += yspd;
		yspd += grav;
	}else{
		yspd = 0;
	}

	if(hooked){
	move_towards_point(destX,destY,spd*hooked_spd_mod);
	}else{
	move_towards_point(destX,destY,spd);
	}
	if(x<destX){
		image_xscale = -im_scale;	
	}else{
		image_xscale = im_scale;
	}

	var xmin = hooked ? -1 : -20;
	var ymin = hooked ? -1 : -20;

	if(distance_to_point(destX,destY) < 1){
		destX = x + random_range(xmin,20);
		destY = y + random_range(ymin,20);
		while(position_meeting(destX,destY,obj_land_mask) || destY < global.water_height){
			destX = x + random_range(xmin,20);
			destY = y + random_range(ymin,20);
		}
	}

	if(instance_exists(obj_hook)&& ! hooked){
		if(distance_to_point(obj_hook.x,obj_hook.y) < 30 && !obj_hook.has_fish){
			destX = obj_hook.x;
			destY = obj_hook.y;
		}
		if(distance_to_point(obj_hook.x,obj_hook.y) < 1 && !obj_hook.has_fish){
			obj_hook.inst_fish = self;
			obj_hook.has_fish = true;
			hooked = true;
		}
	}

}