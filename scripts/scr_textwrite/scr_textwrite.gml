// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function print_text(_textid, _x, _y, _maxcharno, _maxlines, _chartime, _textsize, _textstatic=true){
	show_debug_message(global.msg[0]);
	instance_create_layer(_x, _y, "Instances", obj_textwriter, {
		textstatic : _textstatic,
		maxlineno : _maxlines,
		maxlinepos : _maxcharno,
		timeoff : _chartime,
		textsize : _textsize,
	});
	show_debug_message(global.msg[0]);
}
function print_box(_msgid, _chartime){
	instance_create_depth(0, 0, -0.1, obj_textbox, {
		timechar : _chartime,
		msgd : _msgid
	});	
}