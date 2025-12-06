/// @description Insert description here
// You can write your code in this editor
if !Tester.Trigs[30]&&Tester.Trigs[20]
{
	Tester.Cmv=false;
	
Dial_clear();
Dial_def();

Dialogue=[
["01Oh! while you're at it take the painting off of the wall!01","00What? Why01","00The one with the I in it?02","00This better not be what I think it is03"],
["01Since you just got Hp you are going to need I-Frames so you don't get hit every frame04"],
["01Yeah.01"],
["01Oh, I can assure you it is!05"],
["01Anyways, Every one you collect will give about 0.2 seconds of invulnerability after taking damage06"],
["01I decided to represent I-frames in the CHEESIEST way possible and you are going to have to deal with it!04"],
[0]
];

Actions[6]=1;

Dial(Dialogue,Charray,Actions);

Tester.Trigs[30]=1;
}