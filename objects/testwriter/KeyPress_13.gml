if(instance_exists(player)){
	if(!player.blockinput&&collision_rectangle(bbox_left-10, bbox_top-10, bbox_right+10, bbox_bottom+10, player, false, true)!=noone) 
	print_box(2, 1);
}