if(textpos<=string_length(textorigin)){
	if(lineno>maxlineno) {
		textcurrent="";
		lineno=0;
		linepos=0;
	}
	if(string_char_at(textorigin, textpos) == "&" or linepos>maxlinepos){
		textcurrent+="\n";
		lineno++;
		textpos++;
		linepos=0;
	}
	if(string_char_at(textorigin, textpos) == "^"){
		
	}
	textcurrent += string_char_at(textorigin, textpos);
	textpos++;
}