if(keyboard_check_pressed(vk_left)&&j>1) { j--; opt_num--; }
if(keyboard_check_pressed(vk_right)&&j<xnum) { j++; opt_num++; }
if(keyboard_check_pressed(vk_up)&&i>1) { i--; opt_num--; }
if(keyboard_check_pressed(vk_down)&&i<ynum) { i++; opt_num++; }
if(keyboard_check_pressed(vk_shift)) instance_destroy();
if(keyboard_check_pressed(vk_enter)) switch(opt_behav){
	case 1:
		switch(opt_num){
			case 0:
				audio_play_sound(snd_txt_test4, 1, false);
				break;
			case 1:
				audio_play_sound(snd_txt_test1, 1, false);
				break;
		}
		break;
	case 2:
	log(opt_num)
		switch(opt_num){
			case 0:
				i=5;
				opt_num=4;
				audio_play_sound(snd_txt_test1, 1, false);
				break;
			case 1:
				room_goto(menu_test);
				instance_destroy();
				audio_play_sound(snd_txt_test1, 1, false);
				break;
			case 2:
				room_goto(menu_test_txtsnd);
				instance_destroy();
				audio_play_sound(snd_txt_test1, 1, false);
				break;
			case 3:
				room_goto(menu_test_txtmus);
				instance_destroy();
				audio_play_sound(snd_txt_test1, 1, false);
				break;
			case 4:
				global.spawnid = 0;
				room_goto(room_debughub);
				instance_destroy();
				audio_play_sound(snd_txt_test1, 1, false);
				break;
		}
		break;
	case 3:
		break;
}
switch(opt_behav){
	case 1:
		break;
	case 2:
		if(opt_num==0){
				i=5;
				opt_num=4;
				audio_play_sound(snd_txt_test1, 1, false);
		}
		break;
}