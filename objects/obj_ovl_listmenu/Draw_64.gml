//draw_rectangle_colour(sizex, window_get_height()-sizex, window_get_width()-sizex, window_get_height()-sizey, c_black, c_black, c_black, c_black, false);
draw_rectangle_colour(pleft-xoff, ptop-yoff, pright+xoff, pbottom+yoff, c_black, c_black, c_black, c_black, false);
draw_rectangle(pleft-xoff, ptop-yoff, pright+xoff, pbottom+yoff, true);
if(!ranit) {
	if(instance_exists(optxt[0])) for(_i=0; _i<array_length(optxt); _i++) instance_destroy(optxt[_i])
	opt_num=0;
	j=1;
		for(i=1; i>=0; i++){
		if(i>ynum) {
			j++;
			i=1;
		}
		if(j>xnum) {
			break;
		}
		if(opt_msgid==-1){
			if(opt_num=30) break;
			optxt[opt_num] = print_optinv(string(opt_num+1)+": "+global.items[opt_num].name, pleft+j*(xlen*2.5)-xlen*2, ptop+i*(ylen*3)-ylen*2, 1)
		} else optxt[opt_num] = print_opt(opt_msgid, pleft+j*(xlen*2.5)-xlen*2, ptop+i*(ylen*3)-ylen*2, 1, 1, 1, 1, true, opt_num);
		opt_num++;
	}
	ranit=true;
	j=1;
	i=1;
	opt_num=0;
}
draw_circle_color(pleft+j*(xlen*2.5)-xlen*2-15, ptop+i*(ylen*3)-ylen*2+3, 10, c_white, c_white, false);