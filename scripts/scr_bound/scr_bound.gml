// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawpre_chkPlLayer(){
	//var _objX=(object_index.bbox_right-object_index.bbox_left)/2+object_index.bbox_left
	var _objY=(object_index.bbox_bottom-object_index.bbox_top)/2+object_index.bbox_top
	if(obj_player.y < _objY) object_index.depth=obj_player.depth-10
	else object_index.depth=obj_player.depth+10
}