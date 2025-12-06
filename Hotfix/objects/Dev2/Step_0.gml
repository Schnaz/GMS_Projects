/// @description Insert description here
// You can write your code in this editor
if run {x+=2; sprit=DevRun; dir=-1; exit;}
if run2 {x-=2; sprit=DevRun; dir=1; exit;}
if demo {x-=Tester.dir; sprit=DevRun; exit;}

if Tester.x-x {dir=-1; Charray=[[faceslot,-1,boop],[facedev,1,buup]];}
else {dir=1; Charray=[[faceslot,1,boop],[facedev,-1,buup]];}



if Tester.x-x>20 {x+=1; sprit=DevRun; exit;};

if Tester.x-x<-20 {x-=1; sprit=DevRun; exit;};
sprit=DevStand;

