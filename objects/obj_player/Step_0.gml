//MOVEMENT
image_speed = walkspeed/7;
if(!blockinput){
	if(keyboard_check(vk_up)){
		walkup();
	}
	else if(keyboard_check(vk_down)){
		walkdown();
	}
	if(keyboard_check(vk_left)){
		walkleft();
	}
	else if(keyboard_check(vk_right)){
		walkright();
	}
	if(not keyboard_check(vk_down) and not keyboard_check(vk_up) and not keyboard_check(vk_left) and not keyboard_check(vk_right)){
		image_speed=0; image_index=0;
	} else {
		if(!keyboard_check(vk_up)) isdir[1]=false;
		if(!keyboard_check(vk_down)) isdir[2]=false;
		if(!keyboard_check(vk_left)) isdir[3]=false;
		if(!keyboard_check(vk_right)) isdir[4]=false;
	}
	switch(facing){
		case 1:
			sprite_index = anm_rumuwalkup;
			break;
		case 2:
			sprite_index = anm_rumuwalkdown;
			break;
		case 3:
			sprite_index = anm_rumuwalkleft;
			break;
		case 4:
			sprite_index = anm_rumuwalkright;
			break;
	}
			walkbackup();
			walkbackdown();
			walkbackleft();
			walkbackright();
} else if(!blockmoving){
	image_speed=0; image_index=0;	
}