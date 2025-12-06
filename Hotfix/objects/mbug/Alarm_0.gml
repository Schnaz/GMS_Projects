/// @description Insert description here
// You can write your code in this editor
vx+=random_range(-1,1);
vy+=random_range(-1,1);
if vx<-mx vx=-mx;
if vx>mx vx=mx;
if vy<-mx vy=-mx;
if vy>mx vy=mx;


movex(vx);
movey(vy);


alarm[0]=2.5;