if(!instance_exists(story_text)){
	storywait++;
	if(storywait==80){
		fadeout= instance_create_depth(0, 0, -200, obj_fade, {
			fade_type : 0,
			fade_colid : 1,
			fade_speed : 0.04,
			fade_kill : true
		})
		storyclock = 0;
		storywait=0;
		storypart++;
		story_text = print_txt(storymsg[storypart], x, y, -1, 4, 1, 3, 1.8, false, true, 2)
	}
} else {
	storyclock++;
	if(storyclock>240){
		if(storyclock==241) fadeout= instance_create_depth(0, 0, -200, obj_fade, {
			fade_type : 1,
			fade_colid : 1,
			fade_speed : 0.04,
			fade_kill : true
		})
		if(!instance_exists(fadeout)) instance_destroy(story_text)
	}
}
if(keyboard_check_pressed(vk_enter)) storyaborted=true;
if(storyaborted||storypart==3){
	storyquitwait++;
	fadeout= instance_create_depth(0, 0, -200, obj_fade, {
		fade_type : 1,
		fade_colid : 1,
		fade_speed : 0.04,
		fade_kill : false
	})
	if(storyquitwait>=20||storypart==3){
		instance_destroy();
		instance_destroy(obj_fade);
		room_goto(menu_title);
	}
}