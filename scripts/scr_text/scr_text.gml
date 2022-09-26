function texttable(_msgid){
	switch(_msgid){ 
		// 1 SECOND  =  ^12
		// COMMANDS:
		// $>0xy = wait frame once
		// $>1xy = shaky text
		// $>2xy = wait frame repeat
		// $>3 = force quit text
		case 2:
			global.msg[0] = "* Text System Commands 2.0";
			global.msg[1] = "  Hello$>010 Dear World";
			global.msg[2] = "  Hello$>104 Dear World";
			global.msg[3] = " $>100 Hello$>210 Dear World$>200";
			global.msg[4] = "  Hello$>104 $>212Dear World";
			global.msg[5] = "  $>200$>112AAHHHH$>3%";
			global.msg[6] = "  if you see this,";
			global.msg[7] = "  i fucked up smh%";
			break;
		case 3:
			global.msg[0] = "  DEBUG MENU HUB";
			global.msg[1] = "\n\n\n\n\n\n\n\nPress \'P\' to resume%";
			break;
		case 4:
			global.msg[0] = "You just got error'd lol";
			global.msg[1] = "Error Code: "+string(global.menum)+string(global.debug)+string(global.show_bound)+string(global.spawnid)+"%";
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
			global.msg[10] = "option 1%";
			global.msg[11] = "option 2%";
			global.msg[12] = "option 3%";
			global.msg[13] = "option 4%";
			global.msg[14] = "option 5%";
			global.msg[15] = "option 6%";
			global.msg[16] = "option 7%";
			global.msg[17] = "option 8%";
			global.msg[18] = "option 9%";
			global.msg[19] = "option 0%";
			global.msg[20] = "option 1%";
			global.msg[21] = "option 2%";
			global.msg[22] = "option 3%";
			global.msg[23] = "option 4%";
			global.msg[24] = "option 5%";
			global.msg[25] = "option 6%";
			global.msg[26] = "option 7%";
			global.msg[27] = "option 8%";
			global.msg[28] = "option 9%";
			global.msg[29] = "option 0%";
			global.msg[30] = "option 1%";
			global.msg[31] = "option 2%";
			global.msg[32] = "option 3%";
			global.msg[33] = "option 4%";
			global.msg[34] = "option 5%";
			global.msg[35] = "option 6%";
			global.msg[36] = "option 7%";
			global.msg[37] = "option 8%";
			global.msg[38] = "option 9%";
			global.msg[39] = "option 0%";
			global.msg[40] = "option 1%";
			break;
		default:
			global.msg[0] = "ERROR%";
	}
}