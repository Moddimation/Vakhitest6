sizex=20;
sizey=180;
player.blockinput=true;
var textoff=33;
texttable(msgd);
mytext = instance_create_depth(sizex+textoff-30,camera_get_view_height(0)-sizey+textoff, 145, obj_textwriter, {
	textmessage : global.msg,
	textstatic : false,
	maxlineno : 2,
	timeoff : timechar,
	textsize : 2,
	txt_snd : self.txtsnd
});