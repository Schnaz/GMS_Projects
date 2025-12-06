/// @description Insert description here
// You can write your code in this editor
	Tester.Cmv=false;
	
Dial_clear();
Dial_def();

Dialogue=[
["00You have the feeling something bad will happen if you remove the inventory frame from the pedestal.01"],
["00Remove it anyways?01","00Yes, Danger is my middle name02","00No, Danger is not my middle name03"],
[0],
[0],
];

Actions[3]=1;
Actions[2]=2;

Dial(Dialogue,Charray,Actions);