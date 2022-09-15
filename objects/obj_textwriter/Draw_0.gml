var line=0, charr=0;
for(i=1; i<=string_length(textcurrent); i++){
	charr++;
	if(string_char_at(textcurrent, i) == "\n") { line++; charr=0; }
	draw_text_transformed(x+(((charr*10)*textsize)/charr)*charr+random(charrand), y+(line*string_height("M")*textsize)+random(charrand), string_char_at(textcurrent, i), textsize, textsize, image_angle);
}