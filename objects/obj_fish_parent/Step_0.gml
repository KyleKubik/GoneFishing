/// @description Insert description here
// You can write your code in this editor

move_towards_point(destX,destY,spd);
if(x<destX){
	image_xscale = -1;	
}else{
	image_xscale = 1;
}

if(distance_to_point(destX,destY) < 1){
	destX = x + random_range(-20,20);
	destY = y + random_range(-20,20);
	while(position_meeting(destX,destY,obj_land_mask) || !position_meeting(destX,destY,obj_water_mask)){
		destX = x + random_range(-20,20);
		destY = y + random_range(-20,20);
	}
}

if(instance_exists(obj_hook)){
	if(distance_to_point(obj_hook.x,obj_hook.y) < 30){
		destX = obj_hook.x;
		destY = obj_hook.y;
	}
}