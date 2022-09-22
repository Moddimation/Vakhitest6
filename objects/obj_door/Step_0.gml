if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, player, false, true)&&global.spawnid==-1&&!roomchange) roomchange=true;
if(roomchange){
	player.blockinput=true;
	player.blockmoving=true;
	switch(image_angle){
		case 0: //RIGHT
			if(player.x<x+walkoffset) { player.x+=player.walkspeed; player.sprite_index = anm_plwalkright; }
			else gotoroom()
			break;
		case 180: //LEFT
			if(player.x>x-walkoffset*2) { player.x-=player.walkspeed; player.sprite_index = anm_plwalkleft; }
			else gotoroom()
			break;
		case -90: //DOWN
			if(player.y<y+walkoffset) { player.y+=player.walkspeed; player.sprite_index = anm_plwalkdown; }
			else gotoroom()
			break;
		case 90: //UP
			if(player.y>y-walkoffset*2) { player.y-=player.walkspeed; player.sprite_index = anm_plwalkup; }
			else gotoroom()
			break;
	}
}
function gotoroom()
{
	global.spawnid=spwnid;
	roomchange=false;
	player.blockinput=false;
	player.blockmoving=false;
//	player.x=0; //REMOVE THIS LINE IF STARTPOINTS ARE DONE
	global.menum = room;
	room_goto(nextroom);
}

if(global.spawnid==doorid&&doorentering){
			player.blockinput=true;
			player.blockmoving=true;
	switch(image_angle){
	case 90: //UP
		if(player.y<y+walkoffset*2) { player.y+=player.walkspeed; player.sprite_index = anm_plwalkdown; }
		else {
			player.blockinput=false;
			player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
		break;
	case -90: //DOWN
		if(player.y>y-walkoffset*3) { player.y-=player.walkspeed; player.sprite_index = anm_plwalkup; }
		else {
			player.blockinput=false;
			player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
		break;
	case 180: //LEFT
		if(player.x<x+walkoffset*3) { player.x+=player.walkspeed; player.sprite_index = anm_plwalkright; }
		else {
			player.blockinput=false;
			player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
		break;
	case -180: //LEFT
		if(player.x<x+walkoffset*3) { player.x+=player.walkspeed; player.sprite_index = anm_plwalkright; }
		else {
			player.blockinput=false;
			player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
		break;
	default: //RIGHT, ETC
		if(player.x>x-walkoffset*3) { player.x-=player.walkspeed; player.sprite_index = anm_plwalkleft; }
		else {
			player.blockinput=false;
			player.blockmoving=false;
			global.spawnid=-1;
			doorentering=false;
		}
	}
}