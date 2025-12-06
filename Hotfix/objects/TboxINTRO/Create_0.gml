/// @description Insert description here
// You can write your code in this editor
opt=0;
//uneeded
Init=self;
//uneeded
//Dialogue=[[0]];
Dialogue[11,0]="01Wait we've already met haven't we? In that case lets cut to the chase.10";
Dialogue[10,0]=0;
Dialogue[9,0]=0;
Dialogue[8,0]="01Now lemme get the lights real quick09"

Dialogue[7,0]="01Ah.  .  .  The snarky option.  .  .  I'm glad I thought ahead and put that there.08"
Dialogue[6,0]="01For dramatic effect.08"
Dialogue[5,0]="01Well its still here, but things aren't looking too good at the moment.08"
Dialogue[4,0]="01Oh! Me?! I'm the developer of this game.08"

Dialogue[3,4]="00SOMETHING07"
Dialogue[3,3]="00Why is it so dark in here?06"
Dialogue[3,2]="00Where is the game?!05"
Dialogue[3,1]="00Who are you?04"
Dialogue[3,0]="01OK, I've added some choices and controls. Use the 'W' and 'S' keys to switch between options, and use the 'L' key to proceed03";
Dialogue[2,0]="01.   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .03";
Dialogue[1,0]="01Wait! Even if somebody was there they wouldn't be able to say anything...02";
Dialogue[0,0]="01Hello? Anybody there?01";

//uneeded
Actions[12]=0;
Actions[10]=2;
Actions[9]=1;

//needed!!!!!!!!!!
page=0;

Text=string_copy(Dialogue[0,0],3,string_length(Dialogue[0,0])-4);

//needed!!!!!!!!!!
Ctext="";

Face=real(string_copy(Dialogue[0,0],1,2));

//needed!!!!!!!!!!
Face=1;

//uneeded
Charray=[[faceslot,1,boop],[facedev,-1,buup]];

//uneeded
//Faces=[faceslot,facedev,faceslot];
//uneeded
//Facep=[-1,1];
//needed!!!!!!!!!!
talking=false;
//needed!!!!!!!!!!
preFace=0;

Next=real(string_copy(Dialogue[0,0],string_length(Dialogue[0,0])-1,2));
//needed!!!!!!!!!!
pos=1;
//uneeded
Side=0;

alarm[0]=5;