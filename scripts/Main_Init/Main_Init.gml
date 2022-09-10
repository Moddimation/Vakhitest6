gml_pragma("global","maininit()")
function maininit(){
	global.debug=1;
	if(global.debug) global.show_bound=true;
	else global.show_bound=false;
	global.entry=0;
}