if(timeoff!=0) {
	if(textpos<=string_length(textorigin)){
		if(maxlinepos==-1) maxlinepos=string_length(textorigin)+1;
		if(lineno>maxlineno) printdone=true;
		if(printdone and keyboard_check(vk_enter)){
			textcurrent="";
			lineno=0;
			linepos=0;
			printdone=false;
		}
		if(string_char_at(textorigin, textpos) == "&" or linepos>maxlinepos){
			textcurrent+="\n";
			lineno++;
			textpos++;
			linepos=0;
		}
		if(string_char_at(textorigin, textpos) == "^"){
			timercount=timercount+( real(string_char_at(textorigin, textpos+1)) +timercount+ real(string_char_at(textorigin, textpos+2)) ) *5;
			textpos+=3;
		}
		if(timercount==-1){
			timercount=timeoff*2;
		} else timercount--;
		if(timercount==0 and !printdone) {
			textcurrent += string_char_at(textorigin, textpos);
			textpos++;
		}
	}
} else textcurrent = textorigin;