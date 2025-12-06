/// @description Insert description here
// You can write your code in this editor

if xx=0&&yy=0 {exit;}
x+=xx;
y+=yy;
image_angle+=rr*5;
yy+=0.1;
if place_meeting(x,y,solit) {yy=-0.5*yy; xx=0.5*xx; rr=0.5*rr; if abs(xx)<0.1&&abs(yy)<0.1 {xx=0; yy=0; rr=0;}}
//if place_meeting(x,y,fluff_m) {yy=-0.5*yy; xx=0.8*xx; rr=0.5*rr;}