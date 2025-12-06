/// @description Insert description here
// You can write your code in this editor

//Tester.Cmv=false;



if !instance_exists(Tbox)
{
Tester.Cmv=false;
Charray=[[faceslot,-1,boop],[facedev,-1,buup],[facefrog,1,bounce]];
Dial_clear();


Dialogue=[
["02Ribbit! Ribbit! (Get lost ya ground bound fool)01"],
["01Is that a frog?! Its freaking huge02"],
["02Ribbit! Hop Hop Ribbit! (Imma sleep ye with the fishies. Yarr)03"],
[0]];

Actions[3]=1;


Dial(Dialogue,Charray,Actions);


}
