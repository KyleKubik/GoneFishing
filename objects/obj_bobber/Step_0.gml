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