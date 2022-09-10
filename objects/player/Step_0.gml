/// @description Insert description here
// You can write your code in this editor

//MOVEMENT
image_speed = walkspeed/16;
if(instance_exists(obj_door)){
	if(!obj_door.roomchange){
		if(keyboard_check(vk_up)){
			if(place_free(x, y-collspeed)) y-=walkspeed;
			sprite_index = anm_plwalkup;
		}
		else if(keyboard_check(vk_down)){
			if(place_free(x, y+collspeed)) y+=walkspeed;
			sprite_index = anm_plwalkdown;
		}
		if(keyboard_check(vk_left)){
			if(place_free(x-collspeed, y)) x-=walkspeed;
			sprite_index = anm_plwalkleft;
		}
		else if(keyboard_check(vk_right)){
			if(place_free(x+collspeed, y)) x+=walkspeed;
			sprite_index = anm_plwalkright ;
		}
		if(not keyboard_check(vk_down) and not keyboard_check(vk_up) and not keyboard_check(vk_left) and not keyboard_check(vk_right)){
			image_speed=0; image_index=0;	
		}
	}
} else {
	if(keyboard_check(vk_up)){
		if(place_free(x, y-collspeed)) y-=walkspeed;
		sprite_index = anm_plwalkup;
	}
	else if(keyboard_check(vk_down)){
		if(place_free(x, y+collspeed)) y+=walkspeed;
		sprite_index = anm_plwalkdown;
	}
	if(keyboard_check(vk_left)){
		if(place_free(x-collspeed, y)) x-=walkspeed;
		sprite_index = anm_plwalkleft;
	}
	else if(keyboard_check(vk_right)){
		if(place_free(x+collspeed, y)) x+=walkspeed;
		sprite_index = anm_plwalkright ;
	}
	if(not keyboard_check(vk_down) and not keyboard_check(vk_up) and not keyboard_check(vk_left) and not keyboard_check(vk_right)){
		image_speed=0; image_index=0;	
	}
}