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
			global.msg[0] = "$>60 Somewhere, far away,$>002\n in a parallel universe$>002. $>005. $>005.$>009\n ";
			global.msg[1] = "$>66$>4GY $>51 -Confirmed.$>006\n $>4YWHeat Resistance$>4GY\n acquisition successful.$>010 ";
			global.msg[2] = "$>68$>50$>4WH * How the hell could i get\n   stabbed and pass away?!\n$>002 ";
			global.msg[3] = "$>66$>4GY $>51Confirmed.$>006\n $>4YWStab Resistance$>4GY\n acquisition successful.$>002 ";
			global.msg[4] = "$>66$>4GY $>51Continuing...$>006\n $>4YWPhysical Attack Resistance$>4GY\n acquisition successful.$>010 ";
			global.msg[5] = "$>68$>50$>4WH * It hurts...$>004\n   so much...$>002\n ";
			global.msg[6] = "$>66$>4GY $>51Confirmed.$>006\n $>4YWPain Nullification$>4GY\n acquired.$>002 ";
			global.msg[7] = "$>4GY $>51Creating a body\n that does\n $>4YWnot need blood$>4GY$>003.$>003.$>003.$>004 ";
			global.msg[8] = "$>4GY $>51Successful.$>003\n\n";
			global.msg[9] = "$>68$>50$>4WH * $>104So...$>008\n   cold...\n $>100$>002 ";
			global.msg[10] = "$>66$>4GY $>51$>4YWCold Resistance$>4GY\n acquisition successful.$>004\n\n";
			global.msg[11] = "$>4GY $>51Combining Heat and Cold Resist.$>001\n into acquisition of a new skill,\n $>4YWThermal Fluctuation Resistance$>4GY.$>003 ";
			global.msg[12] = "$>4GY $>51Successful.$>003\n\n";
			global.msg[13] = "$>4GY $>51Not enough info collected.$>010\n\n\n As an alternative measure,$>010 ";
			global.msg[14] = "$>4GY $>51$>4YWElectric Current Resistance$>4GY\n acquired.$>002\n Attached is \n$>4YW Paralysis Resistance$>4GY$>006\n acquisition successful.$>007 ";
			global.msg[15] = "$>68$>50$>4WH * I never thought i would\n   pass away like that...$>003\n ";
			global.msg[16] = "$>50$>4WH * In my next life i will screw\n   every attacker i see!$>002\n ";
			global.msg[17] = "$>66$>4GY $>51$>4YWUnique skill: Predator$>4GY\n acquisition successful.$>003\n";
			global.msg[18] = "$>68$>50$>4WH * Given how close i was\n   to 40 years, \n   i would've been a sage,$>003 ";
			global.msg[19] = "$>50$>4WH   I could've even made it\n   to the rank of a\n   great sage.$>002 ";
			global.msg[20] = "$>66$>4GY $>51$>4YWExtra skill: Sage$>4GY\n acquisition successful.$>003\n";
			global.msg[21] = "$>4GY $>51Continuing, Sage will transform\n into the\n $>4YWUnique Skill: Great Sage$>4GY.$>003";
			global.msg[22] = "$>4GY $>51Successful.$>003\n\n";
			global.msg[23] = "%";
			break;
		case 9:
			global.msg[0] = " Somewhere, far away\n from this planet$>035 %";
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
		default:
			global.msg[0] = "ERROR%";
	}
}