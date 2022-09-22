if(keyboard_check_pressed(vk_left)&&i>1) { i--; opt_num--; }
if(keyboard_check_pressed(vk_right)&&i<xnum) { i++; opt_num++; }
if(keyboard_check_pressed(vk_up)&&j>1) { j--; opt_num-=xnum; }
if(keyboard_check_pressed(vk_down)&&j<ynum) { j++; opt_num+=xnum; }
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
}