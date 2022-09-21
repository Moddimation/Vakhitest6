function print_text(_textid, _x, _y, _maxcharno, _maxlines, _chartime, _txtsound=0, _textsize=1, _textstatic=true){
	texttable(_textid);
	instance_create_layer(_x, _y, "Instances", obj_textwriter, {
		textmessage : global.msg,
		textstatic : _textstatic,
		maxlineno : _maxlines,
		maxlinepos : _maxcharno,
		timeoff : _chartime,
		textsize : _textsize,
		txt_snd : _txtsound,
		msgide : _textid
	});
}
function print_txt(_texttxt, _x, _y, _maxcharno, _maxlines, _chartime, _txtsound=0, _textsize=1, _textstatic=true){
	mesg[0] = _texttxt+"%";
	instance_create_layer(_x, _y, "Instances", obj_textwriter, {
		textmessage : mesg,
		textstatic : _textstatic,
		maxlineno : _maxlines,
		maxlinepos : _maxcharno,
		timeoff : _chartime,
		textsize : _textsize,
		txt_snd : _txtsound,
		textorigin : _texttxt
	});
}
function print_box(_msgid, _chartime, _txtsound=0){
	instance_create_depth(0, 0, -0.1, obj_textbox, {
		timechar : _chartime,
		msgd : _msgid,
		txtsnd : _txtsound
	});	
}