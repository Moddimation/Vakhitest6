switch(scene_id){
	case 1:
		switch(scene_part){
			case 0:
				scene_share0 = print_box(8, 1, 2);
				scene_part++;
				break;
			case 1:
				if(!instance_exists(scene_share0)) if(keyboard_check_released(vk_up)||keyboard_check_released(vk_down)||keyboard_check_released(vk_left)||keyboard_check_released(vk_right)){
					print_box(10, 1, 2);
					scene_part++;
				}
		}
}