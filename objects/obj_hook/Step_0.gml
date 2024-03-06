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

if(inst_bobber != pointer_null){
	if(has_fish){
		x = inst_fish.x;
		y = inst_fish.y;
		with(inst_bobber){
			if(point_distance(x,y,other.x,other.y) > other.line_len){
				move_towards_point(other.x,other.y,2)
			}else{
				speed = 0;
			}
		}
	}else{
		if(point_distance(x,y,inst_bobber.x,inst_bobber.y) > line_len){
			move_towards_point(inst_bobber.x,inst_bobber.y,2)
		}else{
			speed = 0;
		}
	}
}