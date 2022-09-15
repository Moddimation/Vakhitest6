if(!printdone) textorigin=global.msg[txtglcount];
if(string_char_at(textorigin, textpos) != "%"){
	if(timeoff!=0) { //if timer is 0, dont animate at all and display directly
	    if(textpos<=string_length(textorigin)){
	        if(maxlinepos==-1) maxlinepos=string_length(textorigin)+1; //if -1, detect maxlinepos automaticly
	        if(lineno>maxlineno) printdone=true; //if max amount of lines reached make printdone true...
	        if(printdone and keyboard_check(vk_enter)){ //if printdone true and enter pressed, clear text and continue writing
	            textcurrent="";
	            lineno=0;
	            linepos=0;
	            printdone=false;
	        }
	        if(string_char_at(textorigin, textpos) == "&" or linepos>maxlinepos){ //make a newline
	            textcurrent+="\n";
	            lineno++;
	            textpos++;
	            linepos=0;
	        }
	        if(string_char_at(textorigin, textpos) == "^"){ //used for custom timing
	            timercount=timercount+( real(string_char_at(textorigin, textpos+1)) +timercount+ real(string_char_at(textorigin, textpos+2)) ) *5;
	            textpos+=3;
	        }
	        if(timercount==-1){//reset timercount
	            timercount=timeoff*2;
	        } else timercount--;
	        if(timercount==0 and !printdone) { //assign current letter to textcurrent, print textcurrent in draw event
	            textcurrent += string_char_at(textorigin, textpos);
	            textpos++;
	        }
	    } else { textcurrent+="\n"; txtglcount++; }
	} else textcurrent = textorigin;
}