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
textgui=true;
newline=false;
textcolor=c_white;
txtskip=false;

function txtcolor(_tx_color){
	show_debug_message(string(_tx_color))
	switch(_tx_color){
		case string("WH"):
			return c_white;
			break;
		case string("GY"):
			return c_gray;
			break;
		default:
			return c_gray;
			break;
	}
}