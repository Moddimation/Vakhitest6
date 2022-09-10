// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function print_anm(_textstring, _x, _y, _maxcharno, _maxlines){
	instance_create_layer(_x, _y, "Instances", obj_textwriter, {
		textorigin : _textstring,
		maxlineno : _maxlines,
		maxlinepos : _maxcharno,
		textcurrent : "",
		textpos : 1,
		lineno : 0,
		linepos : 0
	});
}