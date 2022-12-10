if(instance_exists(obj_player)){
	if(!obj_player.blockinput&&collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true)!=noone) 
	print_boxtext(_mesgtxt, 1, 6);
}