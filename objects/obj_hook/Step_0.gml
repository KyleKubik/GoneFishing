/// @description Insert description here
// You can write your code in this editor


x += xspd;
y += yspd;
yspd += grav;
if(place_meeting(x,y,obj_water_mask)){
	yspd -= bouancy;
	yspd = yspd*0.8;
	xspd = xspd*0.8;
}

if(inst_bobber != pointer_null){
	if(point_distance(x,y,inst_bobber.x,inst_bobber.y) > line_len){
		move_towards_point(inst_bobber.x,inst_bobber.y,1)
		yspd = 0;
	}
}