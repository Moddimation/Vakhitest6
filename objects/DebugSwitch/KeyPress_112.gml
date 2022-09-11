if(global.debug){
	show_debug_message(string(global.menum));
	if(room==menu_debugmain or room==menu_test) room=global.menum;
	else {
		global.menum=room;
		room_goto(menu_debugmain);
	}
}