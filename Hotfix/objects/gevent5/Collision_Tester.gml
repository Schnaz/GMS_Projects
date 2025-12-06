/// @description Insert description here
// You can write your code in this editor

//Tester.Cmv=false;


if instance_exists(Dev1)
{
if !instance_exists(Tbox)
{
Tester.Cmv=false;
Dial_def();
Dial_clear();


Dialogue=[
["01Oh! These are the testing chambers, Where many of the mechanics of this game were tested.01"],
["01Most of these rooms are safe, except for the one directly to the right.02"],
["01Anyways, I'm going to get to work repairing what I can of the game. But don't worry! You won't be alone.03"],
["01Press 'L' while no enemies are around and I can help with saving, healing, and other stuff.04"],
[0]];

Actions[4]=1;


Dial(Dialogue,Charray,Actions);


}
}