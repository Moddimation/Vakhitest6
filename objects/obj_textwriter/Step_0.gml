if(!printdone) if(is_array(textmessage)) textorigin=self.textmessage[txtglcount]; else textorigin=self.textmessage;

if(string_char_at(textorigin, textpos) != "%"){
	if(textstatic) { 
		if(is_array(textcurrent)) textcurrent="";
		var prinaa=textorigin;
		if(string_char_at(textorigin, string_length(textorigin)) == "%") prinaa = string_delete(textorigin, string_length(textorigin), 1); 
		if(!printdone) textcurrent += prinaa;
		if(string_last_pos("%", textorigin)==0) { 
			textcurrent+="\n";
			txtglcount++; 
			textpos=1; 
			lineno++; 
		} else printdone=1 
	}  
	else {
		if(!is_array(textcurrent)) textcurrent=[];
	    if(textpos<=string_length(textorigin)){
			if(keyboard_check(vk_shift)&&msg_end_bhv==0){
				txtskip=true;
				timercount=0;
			}
	        if(maxlinepos==-1) maxlinepos=string_length(textorigin)+1; //if -1, detect maxlinepos automaticly
	        if(lineno>maxlineno) printdone=true; //if max amount of lines reached make printdone true...
	        if(printdone and keyboard_check_pressed(vk_enter)&&!textstatic&&msg_end_bhv==0){ //if printdone true and enter pressed, clear text and continue writing
	            textcurrent = [];
				txtskip=false;
	            lineno=0;
	            linepos=0;
	            printdone=false;
	        }
			if(string_char_at(textorigin, textpos) == "$"){
				var txt_char = string_char_at(textorigin, textpos+2);
				if(string_char_at(textorigin, textpos+1) == "&") newline=true;
				if(string_char_at(textorigin, textpos+1)==">"){
			        if(txt_char=="0"){ //wait frames
			            if(!txtskip) timercount=timercount+( real(string_char_at(textorigin, textpos+3))*10 +timercount+ real(string_char_at(textorigin, textpos+4)) ) *5;
			            textpos+=5;
			        }
					else if(txt_char=="1"){ //wait frames repeat
						if(!txtskip) txtslow= real(string_char_at(textorigin, textpos+3))*10+ real(string_char_at(textorigin, textpos+4));
			            textpos+=5;
					}
					else if(txt_char=="2"){ //text shaker
						charrand = real(string_char_at(textorigin, textpos+3))*10+ real(string_char_at(textorigin, textpos+4));
			            textpos+=5;
					}
					else if(txt_char=="3"){ //force quit
						instance_destroy();
					}
					else if(txt_char=="4"){ //color
						textcolor = txtcolor(string(string_char_at(textorigin, textpos+3))+string(string_char_at(textorigin, textpos+4)));
			            textpos+=5;
					}
					else if(txt_char=="5"){ //font
						textfont = real(string_char_at(textorigin, textpos+3))
			            textpos+=4;
					}
					else if(txt_char=="6"){ //font
						txt_snd = real(string_char_at(textorigin, textpos+3))
			            textpos+=4;
					}
				}
			}
			if(string_char_at(textorigin, textpos) == "\n") newline=true;
	        if(linepos>maxlinepos||newline){ //make a newline
				array_push(textcurrent,{
						txchar : "\n",
						txrand : charrand,
						txcolor : textcolor,
						txsize : textsize,
						txfont : textfont,
				});
				newline=false;
	            lineno++;
	            textpos++;
	            linepos=0;
				array_push(textcurrent,{
						txchar : " ",
						txrand : charrand,
						txcolor : textcolor,
						txsize : textsize,
						txfont : textfont,
				});
	            if(!txtskip) timercount+=timeoff*4;
	        }
	        if(timercount==-1&&!txtskip){//reset timercount
	            if(txtslow==0) timercount=timeoff;
				else timercount=txtslow;
	        } else if(!txtskip) timercount--;
	        if(timercount==0 and !printdone and not newline) { //assign current letter to textcurrent, print textcurrent in draw event
				var txtchar = string_char_at(textorigin, textpos);
	            //textcurrent += txchar; //basically the core...
				array_push(textcurrent,{
						txchar : txtchar,
						txrand : charrand,
						txcolor : textcolor,
						txsize : textsize,
						txfont : textfont,
				});
	            textpos++;
				linepos++;
				if(ord(txtchar)>33) switch(txt_snd){
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
	    } else {
					txtglcount++; 
					textpos=1;
					lineno++;
					linepos=0;
					array_push(textcurrent,{
							txchar : "\n",
							txrand : charrand,
							txcolor : textcolor,
							txsize : textsize,
							txfont : textfont,
					});
				}
	}
} else switch(msg_end_bhv){
	case 0:
		if(keyboard_check_pressed(vk_enter)) instance_destroy();
		break;
	case 2:
		if(!textendexecuted) fadeout = instance_create_depth(0, 0, -200, obj_fade, {
			fade_type : 2,
			fade_colid : 1,
			fade_speed : 0.03
		})
		textendexecuted=true;
		if(fadeout.fade_num>1.00) instance_destroy();
		break;
}