switch(scene_id){
	case 1:
		switch(scene_part){
			case 0:
				scene_share0 = print_box(8, 1, 2);
				scene_part++;
			case 1:
				if(!exist_obj(scene_share0)){
					scene_share0 = print_box(6, 1, 8);
					scene_part++;
				}
			case 2:
				if(!exist_obj(scene_share0)){
					scene_share0 = print_box(6, 1, 8);
					scene_part++;
				}
		}
}