if(!invulnerable && !knockback){
	image_alpha = 0.5;
	knockback = true;
	x -= direction_x * 6;
	y -= direction_y * 6;
	alarm[2] = 1;
}