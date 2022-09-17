
function printdbg(_string, _row=0){
	if(global.debug) draw_text(0, _row*16, _string);
}