/// @description Insert description here
// You can write your code in this editor

sprite_index = choose(spr_spike_1, spr_spike_2);
sprite = sprite_index;

wait = false;
time = 0;
image_alpha = 0;

direction = point_direction(x, y, global.aimTargetX, global.aimTargetY);
image_angle = direction;