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
			global.msg[0] = "$>68$>4GY May your adventure begin...\n\n ";
			global.msg[1] = "$>67$>50$>4WH * I dont hurt anywhere.$>008\n * I'm not cold$>008\n * My eyes...$>002 won't open$>001?$>008 ";
			global.msg[2] = " * I can't see anything!$>006\n * My hands...$>004 my feet...$>005\n   i cant feel them.$>008 ";
			global.msg[3] = " * my body...$>006\n * Can i press the arrow keys\n   to move around?$>004\n   ...\n$>003   wait, you have the keyboard.\n$>002   (press the arrow keys) %";
			break;
		case 9:
			global.msg[0] = " $>68Somewhere, far away\n from this planet$>035 %";
			global.msg[1] = " a person called XY\n enjoyed living his\n everyday life.$>035 %";
			global.msg[2] = " Until$>002.$>003.$>003.$>028 %";
			global.msg[3] = " a stranger was\n approaching rapidly\n from behind.$>035 %";
			global.msg[4] = " Holding a knife,\n he fatally injured\n the person.$>035 %";
			global.msg[5] = " He painfully collapsed,\n thinking about his life.$>035 %";
			global.msg[6] = " Suddenly, a voice\n he never heard before,\n began speaking\n inside his head.$>035 %";
			global.msg[7] = " he somehow started acquiring\n magical skills,\n depending on his suffering.$>035 %";
			global.msg[8] = " But when he actually died...$>040 %";
			global.msg[9] = " $>050 %";
			break;
		case 10:
			global.msg[0] = "$>67$>50 $>4WH * I can move!$>002\n   So i have sensation.$>002 %";
			break;
		default:
			global.msg[0] = "ERROR%";
	}
}