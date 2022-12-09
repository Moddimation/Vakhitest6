if(global.debug){
	if(global.show_info){
		printdbg("x: "+string(x)+" y: "+string(y),0);
		printdbg(string(room_get_name(room))+", roomid: "+string(room),1);
		printdbg("spawnid: "+string(global.spawnid),2);
		printdbg("blockedinput: "+string(blockinput)+", facing : "+string(facing)+", isdir : "+string(isdir),3);
		printdbg(+string(fps)+"fps",4);
	}
	printdbg("Press \'H\' for Debug Instructions",40)
}
printdbg("VAKHITEST 6, Moddimation 2022.",39);