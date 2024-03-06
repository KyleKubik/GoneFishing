/// @description Insert description here
// You can write your code in this editor

x += xspd;
y += yspd;
yspd += grav;
if(y > global.water_height){
	yspd -= bouancy;
	yspd = yspd*0.8;
	xspd = xspd*0.8;
}