switch(act){
	case 0:
		y-=3;
		if(y<-400) act=1;
		break;
	case 1:
		if(y<-400){ 
			x=-500;
			y=350;
		}
		x+=3;
		if(x>1200) act=2;
		break;
	case 2:
		image_angle-=3;
		x-=4;
		if(x<-500) act=3;
		break;
	case 3:
		if(x<-500){
			x=410;
			y=-600;
		}
		image_angle+=6;
		y+=5;
		if(x>2000) instance_destroy();
		break;
}