for(i=0; i<xnum*ynum; i++){
	show_debug_message(string(optxt));
	instance_destroy(optxt[i]);
}
player.blockinput=false;