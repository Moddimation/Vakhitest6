switch(act){
	case 0:
		y-=3;
		if(y<300) act=1;
		break;
	case 1:
		x+=3;
		if(x>500) act=2;
		break;
	case 2:
		y+=3;
		if(y>500) act=3;
		break;
	case 3:
		x-=3;
		if(x<300) act=0;
		break;
}