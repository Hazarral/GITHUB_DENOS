var _move_right = keyboard_check(ord("D"));
var _move_left = keyboard_check(ord("A"));
var _move_up = keyboard_check(ord("W"));
var _move_down = keyboard_check(ord("S"));
var _dash = keyboard_check_pressed(vk_shift);

var _x_input = (_move_right - _move_left);
var _y_input = (_move_down - _move_up);

if(_x_input * _y_input != 0){
	_x_input /= sqrt(2);
	_y_input /= sqrt(2);
}

direction_x = _x_input;
direction_y = _y_input;

if(!move_lock && _dash && can_dash && (_x_input != 0 || _y_input != 0)){
	can_dash = false;
	move_lock = true;
	invulnerable = true;
	image_blend = c_aqua;
	hspeed = _x_input * player_speed * 5;
	vspeed = _y_input * player_speed * 5;
	repeat(4){
		var _x_spawn = irandom_range(obj_player.x - 20, obj_player.x + 20);
		var _y_spawn = irandom_range(obj_player.y - 20, obj_player.y + 20);
		instance_create_layer(_x_spawn, _y_spawn, "EFFECTS", obj_base_dash);
	}
	alarm[0] = dash_duration;		//DURATION 0.2 sec
	alarm[1] = dash_cd;				//COOLDOWN 0.5 sec
}

if(!move_lock){
	x += _x_input * player_speed;
	y += _y_input * player_speed;
}

x = clamp(x, sprite_width/2, room_width -  sprite_width/2);
y = clamp(y, sprite_height/2, room_height -  sprite_height/2);

window_mouse_set(clamp(window_mouse_get_x(), 0, window_get_width()), clamp(window_mouse_get_y(), 0, window_get_height()));