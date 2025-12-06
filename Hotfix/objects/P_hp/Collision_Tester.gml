/// @description Insert description here
// You can write your code in this editor
if Tester.Trigs[20]=false
{
	visible=false;
//audio_stop_sound(Psong);
//Tester.Psong=Fanfare
audio_play_sound(Fanfare,2,0);
	
Dial_clear();
Charray=[[faceslot,1,boop],[facedev,-1,buup]];

Dialogue[9,0]=0
Dialogue[8,0]="01Fortunately, you should find a health upgrade two rooms to the right!09";
Dialogue[7,0]="01Unfortunately, you still only have 1 HP08";
Dialogue[6,0]="01You should be able to find health upgrades now!07";

Dialogue[5,0]="01The good news is you should be able to find health upgrades now!08";
Dialogue[4,0]="01Well, you had 0 HP, and now you have 105";

Dialogue[3,0]="01You went from having 0 HP to 1 HP, so you will still die in one hit.08";
Dialogue[2,0]="01About that...03";
Dialogue[1,3]="00What exactly does this do?06";
Dialogue[1,2]="00So how much health do I get?04";
Dialogue[1,1]="00Finally! Now I wont die in one hit!02";
Dialogue[1,0]="01With this, you can now have HP02";
Dialogue[0,0]="01Oh hey! I was wondering where the mechanic for hp went!01";

Actions[9]=1;

Dial(Dialogue,Charray,Actions);
}
Tester.Trigs[20]=true;

Heal();