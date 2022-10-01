function snd_play(_sound_asset){
	return audio_play_sound(_sound_asset, 1, false);
}
function mus_play(_sound_asset){
	return audio_play_sound(_sound_asset, 2, false);
}
function snd_stop(_sound_id){
	audio_stop_sound(_sound_id);
}