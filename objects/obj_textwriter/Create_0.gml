if(textstatic) textcurrent="";
else textcurrent = [];
textpos=1;
lineno=0;
linepos=0;
timercount=-1;
printdone=false;
txtglcount=0;
charrand=0;
txtslow=0;
newline=false;
textcolor=c_white;
txtskip=false;
textfont=font_default;
textendexecuted=false;

function txtcolor(_tx_color){
	switch(_tx_color){
		case string("WH"):
			return c_white;
			break;
		case string("GY"):
			return c_gray;
			break;
		case string("YW"):
			return c_yellow;
			break;
		case string("GN"):
			return #148f28;
			break;
		default:
			return c_gray;
			break;
	}
}