if(instance_exists(player)){
	switch(typeass){
		case 0:
			if(!player.blockinput&&collision_rectangle(bbox_left-10, bbox_top-10, bbox_right+10, bbox_bottom+10, player, false, true)!=noone) 
			print_box(2, 1, 6);
		case 1:
			if(!player.blockinput&&collision_rectangle(bbox_left-10, bbox_top-10, bbox_right+10, bbox_bottom+10, player, false, true)!=noone) 
			instance_create_depth(x, y, -0.9, obj_ovl_listmenu, {
				opt_behav : 1,
				xnum : 2,
				ynum : 1,
				xlen : 50,
				ylen : 16,
				opt_msgid : 5
			});
	}
}