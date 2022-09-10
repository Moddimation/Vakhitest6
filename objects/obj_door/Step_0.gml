if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, player, false, true)) roomchange=true;
if(roomchange){
	show_debug_message(string(nextroom));
	switch(image_angle){
		case 0: //RIGHT
			if(player.x<x+walkoffset) player.x+=player.walkspeed;
			else {  roomchange=false; room_goto(nextroom);}
			break;
		case 180: //LEFT
			if(player.x>x-walkoffset*2) player.x-=player.walkspeed;
			else {  roomchange=false; room_goto(nextroom);}
			break;
		case -90: //DOWN
			if(player.y<y+walkoffset) player.y+=player.walkspeed;
			else {  roomchange=false; room_goto(nextroom);}
			break;
		case 90: //UP
			if(player.y>y-walkoffset*2) player.y-=player.walkspeed;
			else {  roomchange=false; room_goto(nextroom);}
			break;
	}
}