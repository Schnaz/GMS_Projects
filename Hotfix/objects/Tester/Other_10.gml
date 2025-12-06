/// @description Insert description here
// You can write your code in this editor
if !instance_exists(Tbox)
{
Charray=[[faceslot,-dir,boop],[facedev,dir,buup]];

if instance_number(bug)>0 {
	
Dial_clear();
Dialogue=[["00Can't talk now, there are enemies nearby01"],[0]];
	
Dial(Dialogue,Charray,Actions);

}
else if !instance_exists(Dev1)&&!instance_exists(Devwait)&&!instance_exists(gevent1)
{
Dialogue=[
["01Waddaya want?00","00Heals01","00Save/Load/Exit02","00About this room...03","00Nevermind07"],
[0],
["01Which one of those?02","00Save04","00Load05","00Exit06"],
[0],
[0],
[0],
[0],
[0]];
Actions[1]=1;
//heals

Actions[3]=2;
Actions[4]=3;
Actions[5]=4;
Actions[6]=5;
Actions[7]=0;

Dial(Dialogue,Charray,Actions);
//
}
}