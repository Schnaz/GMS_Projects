/// @description Insert description here
// You can write your code in this editor
if Tester.Trigs[6]=1 {instance_destroy(bug);
Dialogue=[
["00Irregularities Reduced.01"],
[0]];
}
else
{
Dialogue=[
["02Multiple corruptions located. Run BugTest.exe?01"],
["01Oh! You found the bug testing terminal. Running the Bug test can get rid of those white glitches!02"],
["01I can run the bug test, but you will need to stay in that room, and it will probably be dangerous.03"],
["02Run BugTest.exe?03","00Yes04","00No05"],
[0],
[0]];
}

print=false;
Charray[2]=[faceslot,image_xscale,buup];
Charray[0]=[faceslot,-image_xscale,boop];
Charray[1]=[facedev,image_xscale,buup];


Actions[4]=1;
die=false;