//draw_rectangle_colour(sizex, window_get_height()-sizex, window_get_width()-sizex, window_get_height()-sizey, c_black, c_black, c_black, c_black, false);
draw_rectangle_colour(pleft, ptop, pright, pbottom, c_black, c_black, c_black, c_black, false);
draw_rectangle(pleft, ptop, pright, pbottom, true);
if(!ranit) {
	opt_num=0;
	j=1;
	for(i=1; i>=0; i++){
		if(i>xnum) {
			j++;
			i=1;
		}
		if(j>ynum) {
			break;
		}
		optxt[opt_num] = print_opt(opt_msgid, pleft+i*(xlen*2.5)-xlen*2, ptop+j*(ylen*3)-ylen*2, 1, 1, 1, 1, true, opt_num);
		opt_num++;
		ranit=true;
	}
	j=1;
	opt_num=0;
}
draw_circle_color(pleft+i*(xlen*2.5)-xlen*2, ptop+j*(ylen*3)-ylen*2, 10, c_white, c_white, false);