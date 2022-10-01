global.debug=true; //dont you dare (:
if(global.debug) {
	global.show_bound=true;
	global.show_info=true;
}

global.menum=0; //show_bound=show debug textures for boundaries doors spawns etc
global.spawnid=-1; //spawn point id, set by door object if used
global.msg = ["%"];
global.mus = audio_play_sound(0, 0, false);
draw_set_font(font_default);