function texttable(_msgid){
	switch(_msgid){ 
		// 1 SECOND  =  12 txt frames
		// COMMANDS:
		// $&    = newline
		// $>0xy = wait frame once
		// $>1xy = wait frame repeat
		// $>2xy = shaky text
		// $>3   = force quit text
		// $>4ab = color
		case 2:
			global.msg[0] = "* Text System Commands 2.0";
			global.msg[1] = "  Hello$>010 Dear World";
			global.msg[2] = "  Hello$>204 Dear World";
			global.msg[3] = " $>200 Hello$>110 $>4GYDear World$>100 $>4WH";
			global.msg[4] = " $>200 Hello$>105 D e a r   W o r l d $>100";
			global.msg[5] = "  Hello$>207 $>112D$>108 e a r   W o r l d $>015 ";
			global.msg[6] = "  $>100$>212AAHHHH$>3%";
			global.msg[7] = "  if you see this,";
			global.msg[8] = "  i fucked up smh%";
			break;
		case 3:
			global.msg[0] = " DEBUG MENU HUB";
			global.msg[1] = "\n\n\n\n\n\n\n\n\n\nPress \'P\' to resume%";
			break;
		case 4:
			global.msg[0] = "You just got error'd lol";
			global.msg[1] = "Error Code: "+string(global.menum)+string(global.debug)+string(global.show_bound)+string(global.spawnid)+string(global.lastdoorid)+"%";
			break;
		case 5:
			global.msg[0] = "option 1%";
			global.msg[1] = "option 2%";
			global.msg[2] = "option 3%";
			global.msg[3] = "option 4%";
			global.msg[4] = "option 5%";
			global.msg[5] = "option 6%";
			global.msg[6] = "option 7%";
			global.msg[7] = "option 8%";
			global.msg[8] = "option 9%";
			global.msg[9] = "option 0%";
			break;
		case 6:
			global.msg[0] = "* Test Message";
			global.msg[1] = "  being tested%";
			break;
		case 7:
			global.msg[0] = " - DEBUG MENU -%";
			global.msg[1] = "GRAPHICAL TEST%";
			global.msg[2] = "TEXTWRITER TEST%";
			global.msg[3] = "MUSIC TEST%";
			global.msg[4] = "DEBUG HUB%";
			break;
		case 8:
			global.msg[0] = "$>68 Hello there,\n this game is very basic at the\n moment, and very unfinished.....................\n$>4GY  May your adventure begin... \n\n";
			break;
		case 9:
			global.msg[0] = " $>68Somewhere, far away\n from this planet$>035 %";
			global.msg[1] = " a person called XY\n enjoyed living his\n everyday life.$>035 %";
			global.msg[2] = " Until$>002.$>003.$>003.$>028 %";
			global.msg[3] = " putin ate this text\n THE END lol s$>040 %";
			global.msg[4] = " $>050 %";
			global.msg[5] = " $>050 %";
			global.msg[6] = " $>050 %";
			global.msg[7] = " $>050 %";
			global.msg[8] = " $>050 %";
			global.msg[9] = " $>050 %";
			break;
		case 10:
			global.msg[0] = "bro";
			break;
		default:
			global.msg[0] = "ERROR%";
	}
}