/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if Tester.Trigs[41]=false
{
if Tester.Msp=1
{
Charray=[[faceslot,1,boop]];

Dialogue=[
["00You got an Arrow01"],
["00You don't know why, but collecting these seem to make you move faster02"],
[0]
];

Actions[99]=0
Dial(Dialogue,Charray,Actions);
	
	
}	
	
	visible=false;
//audio_stop_sound(Psong);
//Tester.Psong=Fanfare
audio_play_sound(Fanfare,2,0);
	
Tester.Trigs[41]=true;
}

Heal();
instance_destroy();