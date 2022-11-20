if(global.debug){
	if(room==menu_debugmain) room_goto(global.menum);
	else instance_create_depth(x, y, 100, obj_ovl_listmenu, {
				opt_behav : 2,
				opt_msgid : 7,
				xnum : 1,
				ynum : 5,
				xlen : 80,
				ylen : 8,
				xoff : 10,
				yoff : 20
			});;
}