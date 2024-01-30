if(!instance_exists(obj_xp))
	return;

var _level = obj_player.level;
var _current_xp = obj_player.current_xp;



if(_level <= 5){
	current_threshold = threshold[0];
	var _mod = _current_xp mod current_threshold;
	var _div = _current_xp div current_threshold;
	if(_div > 0){
		with(obj_player){
			level += _div;
			current_xp = _mod;
		}
	}
}else if(_level <= 10){
	current_threshold = threshold[1];
	var _mod = _current_xp mod current_threshold;
	var _div = _current_xp div current_threshold;
	if(_div > 0){
		with(obj_player){
			level += _div;
			current_xp = _mod;
		}
	}
}