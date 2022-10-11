function musictable(_musid){
	switch(_musid){ 
		case 2:
			return audio_play_sound(mus_test0, 2, true);
			break;
		case 3:
			return audio_play_sound(mus_test1, 2, true);
			break;
		default:
			return audio_play_sound(mus_test0, 2, true);
	}
}