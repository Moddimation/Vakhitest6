if(global.debug){
	show_debug_message(string(global.menum));
	if(room==menu_debugmain) room_goto(global.menum);
	else room_goto(menu_debugmain);
}