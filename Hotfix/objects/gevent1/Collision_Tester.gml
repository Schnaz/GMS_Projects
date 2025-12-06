/// @description Insert description here
// You can write your code in this editor

//Tester.Cmv=false;


if other.Trigs[1]=0
{
other.Cmv=false;
	
if Tester.dir Charray=[[faceslot,1,boop],[facedev,-1,buup]];
else Charray=[[faceslot,-1,boop],[facedev,1,buup]];	
	
Dialogue[8,0]=0;
Dialogue[7,0]="01I'll be there in a jiffy08"

Dialogue[6,0]="018........ Eight........ 'are u okay', has eight letters........ While we're on this topic are you insane by any chance? On second thought don't answer that question.07"
Dialogue[5,0]="01Well thats nice to hear. I was begining to fear that there was something in the nothing over there. Wait, is nothing something? On second thought don't answer that question.07"
Dialogue[4,0]="01Oh... Did you die of not-death then? On second thought don't answer that question.07"
Dialogue[3,0]="01Wait... Does that mean you're okay or that you died of death? On second thought don't answer that question.07"

Dialogue[2,4]="00the square root of 64!06"
Dialogue[2,3]="00Theres nothing here!!!05"
Dialogue[2,2]="00No04"
Dialogue[2,1]="00Yes03"
Dialogue[2,0]="01Hello! are you okay?! DID YOU DIE OF DEATH?????02";
Dialogue[1,0]="00beyond the blockade is an endless void!02";
Dialogue[0,0]="00The dev really wasn't kidding.01"


Actions[7]=1;
Dial(Dialogue,Charray,Actions);
other.Trigs[1]=1;
}
