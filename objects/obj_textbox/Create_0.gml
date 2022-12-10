sizex=20;
sizey=180;
if(instance_exists(obj_player)) obj_player.blockinput=true;
var textoff=33;
if(msgd != -1) texttable(msgd);
mytext = instance_create_depth(sizex+textoff-30,camera_get_view_height(0)-sizey+textoff, 145, obj_textwriter, {
	textmessage : global.msg,
	textstatic : false,
	maxlineno : 2,
	maxlinepos : 29,
	timeoff : timechar,
	textsize : 2,
	txt_snd : self.txtsnd,
	msg_end_bhv : 0,
});