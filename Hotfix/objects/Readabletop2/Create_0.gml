/// @description Insert description here
// You can write your code in this editor
if Tester.Trigs[40]=1 {instance_destroy(bug);
Dialogue=[
["00Enjoy the clean air.01"],
[0]];
}
else
{
Dialogue=[
["00Irregularities located in air vents.01"],
["00Run cleaning Protocol?02","01Yes02","01Ok02","01Run02","01Kill Me02"],
["00Protocol Initiated03"],
[0]];
}

print=false;
Charray=[[faceslot,image_xscale,buup]];
Charray[1]=[faceslot,-1,boop];

Actions[3]=1;
die=false;