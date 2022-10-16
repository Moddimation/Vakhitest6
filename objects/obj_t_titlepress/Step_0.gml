if(pressed==1&&fadeout.fade_num>1.00) {
	global.spawnid=4;
	room_goto(room_debughub);
	instance_destroy();
}