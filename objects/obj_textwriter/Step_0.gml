if(!printdone) textorigin=textmessage[txtglcount];
if(string_char_at(textorigin, textpos) != "%"){
	if(timeoff!=0) { //if timer is 0, dont animate at all and display directly
	    if(textpos<=string_length(textorigin)-textposoff){
			if(string_char_at(textorigin, textpos)==">"){
				charrand = real(string_char_at(textorigin, 2));
				textpos+=2;
			}
	        if(maxlinepos==-1) maxlinepos=string_length(textorigin)+1; //if -1, detect maxlinepos automaticly
	        if(lineno>maxlineno) printdone=true; //if max amount of lines reached make printdone true...
	        if(printdone and keyboard_check_pressed(vk_enter)&&!textstatic){ //if printdone true and enter pressed, clear text and continue writing
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
	            timercount+=timeoff*4;
				textposoff++;
	        }
	        if(string_char_at(textorigin, textpos) == "^"){ //used for custom timing
	            timercount=timercount+( real(string_char_at(textorigin, textpos+1))*10 +timercount+ real(string_char_at(textorigin, textpos+2)) ) *5;
	            textpos+=3;
				textposoff+=3;
	        }
	        if(timercount==-1){//reset timercount
	            timercount=timeoff*2;
	        } else timercount--;
	        if(timercount==0 and !printdone) { //assign current letter to textcurrent, print textcurrent in draw event
				var txchar = string_char_at(textorigin, textpos);
	            textcurrent += txchar;
	            textpos++;
				if(ord(txchar)>33) switch(txt_snd){
						case 1:
							audio_play_sound(snd_txt_test0, 1, false);
							break;
						case 2:
							audio_play_sound(snd_txt_test1, 1, false);
							break;
						case 3:
							audio_play_sound(snd_txt_test2, 1, false);
							break;
						case 4:
							audio_play_sound(snd_txt_test3, 1, false);
							break;
						case 5:
							audio_play_sound(snd_txt_test4, 1, false);
							break;
						case 6:
							audio_play_sound(snd_txt_test5, 1, false);
							break;
						case 7:
							audio_play_sound(snd_txt_test6, 1, false);
							break;
						case 8:
							audio_play_sound(snd_txt_test7, 1, false);
							break;
						case 9:
							audio_play_sound(snd_txt_test8, 1, false);
							break;
					}
	        }
	    } else { textcurrent+="\n"; txtglcount++; textpos=1; lineno++; textposoff=0; }
	} else { if(!printdone) textcurrent += textorigin; if(string_last_pos("%", textcurrent)==0) { textcurrent+="\n"; txtglcount++; textpos=1; lineno++; } else printdone=1 } 
} else if(keyboard_check_pressed(vk_enter)) instance_destroy();