switch(fade_type){
	case 0:
		fade_num-=fade_speed;
		if(fade_num<0.00) instance_destroy();
		break;
	case 1:
		fade_num+=fade_speed;
		if(fade_kill && fade_num>1.00) instance_destroy();
		break;
	case 2:
		fade_num+=fade_speed;
		if(fade_num>1.00) fade_type=0;
		break;
}