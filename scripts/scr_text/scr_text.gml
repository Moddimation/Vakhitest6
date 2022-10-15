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
			global.msg[4] = "IDIOT TEST%";
			break;
		case 8:
			global.msg[0] = "$>60 Somewhere, far away,$>002\n in a parallel universe $>005. $>005. $>005.$>009\n ";
			global.msg[1] = "$>68$>4GY $>51Confirmed.$>006\n Heat Resistance\n acquisition successful.$>010 ";
			global.msg[2] = "$>66$>50$>4WH * How the hell could i get\n   stabbed and die?!\n$>002 ";
			global.msg[3] = "$>68$>4GY $>51Confirmed.$>006\n Stab Resistance\n acquisition successful.$>002 ";
			global.msg[4] = "$>66$>4GY $>51Continuing...$>006\n Physical Attack Resistance\n acquisition successful.$>010 ";
			global.msg[5] = "$>50$>4WH * It hurts...$>004\n   so much...$>002\n ";
			global.msg[6] = "$>68$>4GY $>51Confirmed.$>006\n Pain Nullification\n acquired.$>002 ";
			global.msg[7] = "$>4GY $>51Creating a body\n that does not\n need blood$>003.$>003.$>003.$>004 ";
			global.msg[8] = "$>4GY $>51Successful.$>003\n\n";
			global.msg[9] = "$>50$>4WH * $>104So...$>008\n   cold...\n $>100$>002 ";
			global.msg[10] = "$>4GY $>51Cold Resistance acquisition successful.$>005\n\n";
			global.msg[10] = "$>4GY $>51Combining Heat and Cold Resist.$>001\n into acquisition of a new skill,\n Thermal Fluctuation Resistance.$>003";
			global.msg[11] = "$>4GY $>51Successful.$>003\n\n";
			global.msg[12] = "$>4GY $>51Not enough info collected.$>010\n\n\n As an alternative measure,$>003$>008\n";
			global.msg[11] = "$>4GY $>51Electric Current Resistance acquired.$>02\n Attaches is Paralysis Resistance.$>006\n Aquisition successful.$>006";
			global.msg[14] = "%";
			break;
		default:
			global.msg[0] = "ERROR%";
	}
}