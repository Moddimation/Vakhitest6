function snd_stop(_sound_id){
	audio_stop_sound(_sound_id);
}
function exist_obj(_asset){
	return instance_exists(_asset);
}
function inventory_add(_itemname){
	if(instance_exists(global.inventory_menu)) global.inventory_menu.ranit=false;
	for(i=0; i!=30; i++){
		if(global.items[i].name == "Empty"){
			global.items[i] = _itemname;
			break;
		}
	}
}
function log(_string)
{
    if(global.debug) show_debug_message(object_get_name(id.object_index) + "[" + string(id.x) + "," + string(id.y) + "]: " + string(_string));
}