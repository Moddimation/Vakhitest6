pleft = (camera_get_view_width(0)+camera_get_view_x(view_camera[0]))/2-(xlen*xnum)-(xlen*xnum/3);
pright = (camera_get_view_width(0)+camera_get_view_x(view_camera[0]))/2+(xlen*xnum)+(xlen*xnum/3);
ptop = (camera_get_view_height(0)+camera_get_view_y(view_camera[0]))/2-(ylen*ynum)-(ylen*ynum/2);
pbottom = (camera_get_view_height(0)+camera_get_view_y(view_camera[0]))/2+(ylen*ynum)+(ylen*ynum/2);
pwidth = ((xlen*xnum)+(xlen*xnum/3))*2;
pheight = ((ylen*ynum)+(ylen*ynum/2))*2;
ranit=false;
optxt[0] = "s";
opt_num=0;
obj_player.blockinput=true;