global.msg[0]="- TEXT VOCAL TEST -";
global.msg[1]="* Press the L/R Arrow Keys&  to navigate through sounds";
global.msg[2]="  Good Luck%";
wowie=instance_create_layer(x, y, "Instances", obj_textwriter, {
	textmessage : global.msg,
	textstatic : false,
	maxlineno : 3,
	maxlinepos : 420,
	timeoff : 1,
	textsize : 2,
	txt_snd : 1
});
playsnd=0;
plysnd=0;