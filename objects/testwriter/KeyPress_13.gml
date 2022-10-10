if(instance_exists(obj_player)){
	switch(self.typeass){
		case 0:
			if(!obj_player.blockinput&&collision_rectangle(bbox_left-10, bbox_top-10, bbox_right+10, bbox_bottom+10, obj_player, false, true)!=noone) 
			print_box(2, 1, 6);
		case 1:
			if(!obj_player.blockinput&&collision_rectangle(bbox_left-10, bbox_top-10, bbox_right+10, bbox_bottom+10, obj_player, false, true)!=noone) 
			instance_create_depth(x, y, 100, obj_ovl_listmenu, {
				opt_behav : 2,
				opt_msgid : 7,
				xnum : 1,
				ynum : 5,
				xlen : 80,
				ylen : 8,
				xoff : 10,
				yoff : 20
			});
		case 2:
			if(!obj_player.blockinput&&collision_rectangle(bbox_left-10, bbox_top-10, bbox_right+10, bbox_bottom+10, obj_player, false, true)!=noone) 
			print_box(6, 1, 8);
	}
}