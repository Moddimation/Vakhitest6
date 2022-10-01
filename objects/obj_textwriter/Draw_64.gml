if(textgui){
	if(!textstatic){
		var line=0, charr=0, chrwidth=13;
		for(i=1; i<=array_length(textcurrent)&&array_length(textcurrent)>i; i++){
			charr++;
			if(textcurrent[i].txchar == "\n") { line++; charr=-1; } 
			draw_text_transformed_color(x+(((charr*chrwidth)*textsize)/charr)*charr+random(textcurrent[i].txrand), y+(line*string_height("M")*textsize)+random(textcurrent[i].txrand), string(textcurrent[i].txchar), textsize, textsize, image_angle, textcurrent[i].txcolor, textcurrent[i].txcolor, textcurrent[i].txcolor, textcurrent[i].txcolor, 255);
		}
		if(global.debug){
			printdbg("   "+string_char_at(textorigin, textpos), 30);
			printdbg("   "+"x: "+string(x)+" y: "+string(y), 31);
		}
	} else draw_text_transformed(x, y, textcurrent, textsize, textsize, image_angle);
}