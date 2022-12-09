if(!textgui){
	if(!textstatic){
		var line=0, charr=0, chrwidth=font_get_size(draw_get_font()), charrr=0, charrrwidth=0;
		for(i=0; i<=array_length(textcurrent)&&array_length(textcurrent)>i; i++){
			draw_set_font(textcurrent[i].txfont);
			switch(textcurrent[i].txfont){
				case 0:
					charrrwidth=2;
					break;
				case 1:
					charrrwidth=-1;
					break;
			}
			if(textcurrent[i].txchar == "\n") { line++; charr=-1; charrr=0;}
			draw_text_transformed_color(x+(((charr*(chrwidth+charrrwidth))*textsize)/charr)*charr+random(textcurrent[i].txrand)+(charrr*(chrwidth+charrrwidth)*0.96), y+(line*string_height("M")*textsize)+random(textcurrent[i].txrand), string(textcurrent[i].txchar), textsize, textsize, image_angle, textcurrent[i].txcolor, textcurrent[i].txcolor, textcurrent[i].txcolor, textcurrent[i].txcolor, 255);
			if(textcurrent[i].txchar == "I" || textcurrent[i].txchar == "i" || textcurrent[i].txchar == "l" || textcurrent[i].txchar == "." || textcurrent[i].txchar == ",") {
				charrr+=textcurrent[i].txsize/1.5;
			}
			else {
				charr++;
			}
		}
		if(global.debug&&global.show_info){
			printdbg("   "+string_char_at(textorigin, textpos), 30);
			printdbg("   "+"x: "+string(x)+" y: "+string(y), 31);
		}
		draw_set_font(font_default);
	} else draw_text_transformed(x, y, textcurrent, textsize, textsize, image_angle);
}