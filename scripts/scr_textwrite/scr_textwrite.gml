// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function print_text(_textstring, _x, _y, _maxcharno, _maxlines, _chartime, _textsize){
	instance_create_layer(_x, _y, "Instances", obj_textwriter, {
		maxlineno : _maxlines,
		maxlinepos : _maxcharno,
		textcurrent : "",
		timeoff : _chartime,
		textsize : _textsize,
		textpos : 1,
		lineno : 0,
		linepos : 0
	});
}
function print_box(_msgid, _chartime){
	texttable(_msgid);
	instance_create_depth(0, 0, -9, obj_textbox, {
		timechar : _chartime
	});	
}