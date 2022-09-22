pleft = window_get_width()/2-(xlen*xnum)-(xlen*xnum/3);
pright = window_get_width()/2+(xlen*xnum)+(xlen*xnum/3);
ptop = window_get_height()/2-(ylen*ynum)-(ylen*ynum/2);
pbottom = window_get_height()/2+(ylen*ynum)+(ylen*ynum/2);
pwidth = ((xlen*xnum)+(xlen*xnum/3))*2;
pheight = ((ylen*ynum)+(ylen*ynum/2))*2;
show_debug_message(string(pheight))
ranit=false;
optxt[0] = "s";
opt_num=0;
player.blockinput=true