/// @description Insert description here
// You can write your code in this editor

if(!wait && image_alpha < 1){
	mask_index = -1;	//no hitbox when appearing
	wait = true;
	image_alpha = clamp(image_alpha + 0.2, 0, 1);	//APPEAR OVER 0.5 SEC
	alarm[0] = 6;
}

if(image_alpha >= 1){
	mask_index = sprite;
	speed = 40;
	if(place_meeting(x, y, obj_temp)){
		speed = 0;
		image_blend = c_red;
		if(instance_number(obj_spike) >= 10){
			image_blend = c_fuchsia;
		}
	}else{
		time++;
		if(time >= 180)
			instance_destroy();
	}
}