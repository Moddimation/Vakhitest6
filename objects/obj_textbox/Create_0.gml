sizex=20;
sizey=180;
	var textoff=13;
mytext = instance_create_depth(sizex+textoff-2,window_get_height()-sizey+textoff, -1, obj_textwriter, {
	msgide : msgd,
	maxlineno : 2,
	maxlinepos : 40,
	textcurrent : "",
	timeoff : timechar,
	textsize : 2,
	textpos : 1,
	lineno : 0,
	linepos : 0
});