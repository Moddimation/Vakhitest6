sizex=20;
sizey=180;
player.blockinput=true;
var textoff=13;
mytext = instance_create_depth(sizex+textoff-10,window_get_height()-sizey+textoff, -1, obj_textwriter, {
	msgide : msgd,
	textstatic : false,
	maxlineno : 2,
	timeoff : timechar,
	textsize : 2
});