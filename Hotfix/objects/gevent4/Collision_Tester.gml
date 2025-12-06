/// @description Insert description here
// You can write your code in this editor

//Tester.Cmv=false;


if instance_exists(Dev1)
{
Dial_def();
Dial_clear();

Tester.x+=1

Dialogue=[
["01Welp, That doesn't look good.01"],
["01Looks like we'll need to go the other way.02"],
[0]];
if !instance_exists(Tbox)
{
Dial(Dialogue,Charray,Actions);


}
}