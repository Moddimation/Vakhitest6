global.msg[0]="- MUSIC TEST -";
global.msg[1]="* L/R = change track";
global.msg[2]="  ENTER = play";
global.msg[3]="  BACKSPACE = stop%";
wowie=instance_create_depth(x, y, -10, obj_textwriter, {
	textmessage : global.msg,
	textstatic : true,
	textsize : 2.5
});
playsnd=0;
plysnd=0;
musplay=0;