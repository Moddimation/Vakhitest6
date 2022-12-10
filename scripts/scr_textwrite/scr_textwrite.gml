function print_text(_textid, _x, _y, _maxcharno, _maxlines, _chartime, _txtsound=0, _textsize=1, _textstatic=true, _textgui=true, _msgendbhv=1){
	texttable(_textid);
	return instance_create_depth(_x, _y, 150, obj_textwriter, {
		textmessage : global.msg,
		textstatic : _textstatic,
		maxlineno : _maxlines,
		maxlinepos : _maxcharno,
		timeoff : _chartime,
		textsize : _textsize,
		txt_snd : _txtsound,
		msgide : _textid,
		textgui : _textgui,
		msg_end_bhv : _msgendbhv,
	});
}
function print_txt(_texttxt, _x, _y, _maxcharno, _maxlines, _chartime, _txtsound=0, _textsize=1, _textstatic=true, _textgui=true, _msgendbhv=1){
	mesg[0] = _texttxt+"%";
	return instance_create_depth(_x, _y, 150, obj_textwriter, {
		textmessage : mesg,
		textstatic : _textstatic,
		maxlineno : _maxlines,
		maxlinepos : _maxcharno,
		timeoff : _chartime,
		textsize : _textsize,
		txt_snd : _txtsound,
		textgui : _textgui,
		msg_end_bhv : _msgendbhv,
	});
}
function print_opt(_textid, _x, _y,  _maxlines, _chartime, _txtsound=0, _textsize=1, _textstatic=true, _optnum=0){
	texttable(_textid);
	return instance_create_depth(_x, _y, 90, obj_textwriter, {
		textmessage : global.msg[_optnum],
		textstatic : _textstatic,
		maxlineno : _maxlines,
		maxlinepos : -1,
		timeoff : _chartime,
		textsize : _textsize,
		txt_snd : _txtsound,
	});
}
function print_optinv(_texttxt, _x, _y, _textsize=1){
	return instance_create_depth(_x, _y, 90, obj_textwriter, {
		textmessage : _texttxt+"%",
		textstatic : true,
		textsize : _textsize,
	});
}
function print_box(_msgid, _chartime, _txtsound=0){
	return instance_create_depth(0, 0, 150, obj_textbox, {
		timechar : _chartime,
		msgd : _msgid,
		txtsnd : _txtsound
	});	
}
function print_boxtext(_texttxt, _chartime, _txtsound=0){
	global.msg[0] = " "+string(_texttxt)+"%"
	return instance_create_depth(0, 0, 150, obj_textbox, {
		timechar : _chartime,
		msgd : -1,
		txtsnd : _txtsound
	});	
}