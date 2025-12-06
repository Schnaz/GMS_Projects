/// @description Insert description here
// You can write your code in this editor
vx=random_range(-5,5);
vy=random_range(-5,5);
if vx<-mx vx=-mx;
if vx>mx vx=mx;
if vy<-mx vy=-mx;
if vy>mx vy=mx;


movex(vx);
movey(vy);


alarm[0]=1;