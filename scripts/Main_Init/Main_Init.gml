gml_pragma("global","maininit()")
function maininit(){
	global.debug=1; //dont you dare (:
	if(global.debug) global.show_bound=true;
	else global.show_bound=false; //show_bound=show debug textures for boundaries doors spawns etc
	global.spawnid=0; //spawn point id, set by door object if used
}