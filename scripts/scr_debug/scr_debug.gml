
function printdbg(_string, _row=0){
	draw_text(0, _row*16, _string);
}

function debughitbox(_top, _bottom, _left, _right, _col){
	draw_line_color(_left, _top, _right, _top, _col, _col)
	draw_line_color(_left, _bottom, _right, _bottom, _col, _col)
	draw_line_color(_left, _top, _left, _bottom, _col, _col)
	draw_line_color(_right, _top, _right, _bottom, _col, _col)
}