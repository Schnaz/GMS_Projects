/// @description Insert description here
// You can write your code in this editor

//Tester.Cmv=false;



if !instance_exists(Tbox)
{
Tester.Cmv=false;
Charray=[[faceslot,-1,boop],[facedev,-1,buup],[faceBox,1,hurt]];
Dial_clear();
Tester.Trigs[12]=true;

Dialogue=[
["02Who Dares Interupt my slumber!?01"],
["01Oh. . . Its only a boring giant cube boss. . .02"],
["02WHAT DID YOU JUST SAY03"],
[0]];

Actions[3]=1;


Dial(Dialogue,Charray,Actions);


}
