/// @description Insert description here
// You can write your code in this editor
Dial_clear();
dir=1;
rdir=2;
sprit=DevRun;
run=false;
run2=false;
if Tester.x-x {dir=-1; Charray=[[faceslot,-1,boop],[facedev,1,buup]];}
else {dir=1; Charray=[[faceslot,1,boop],[facedev,-1,buup]];}

Dialogue[2,0]=0;
Dialogue[1,0]="01So this abysmal pit might seem intimidating but fret not02";
Dialogue[0,0]="01I'm here!01"

Actions[2]=1;
Dial(Dialogue,Charray,Actions);
demo=false;
alarm[1]=-1;