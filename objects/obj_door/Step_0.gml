if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, player, false, true)) roomchange=true;
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
	room_goto(nextroom);
}