sizex=20;
sizey=180;
player.blockinput=true;
var textoff=33;
texttable(msgd);
mytext = instance_create_depth(sizex+textoff-30,window_get_height()-sizey+textoff, -2, obj_textwriter, {
	textmessage : global.msg,
	textstatic : false,
	maxlineno : 2,
	timeoff : timechar,
	textsize : 2,
	txt_snd : self.txtsnd
});