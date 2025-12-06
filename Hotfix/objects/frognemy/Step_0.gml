/// @description Insert description here
// You can write your code in this editor
movex(vx);
movey(vy);

switch(image_angle)
{
case 0:
if Tester.x>x image_xscale=-1
else image_xscale=1
break;

case 90:
if Tester.y<y image_xscale=-1
else image_xscale=1
break;

case 180:
if Tester.x<x image_xscale=-1
else image_xscale=1
break;

case 270:
if Tester.y>y image_xscale=-1
else image_xscale=1
break;
}


if place_meeting(x,y+1,solit) {image_angle=0; image_index=0; vx=0; vy=0; exit}
if place_meeting(x,y-1,solit) {image_angle=180; image_index=0; vx=0; vy=0; exit}
if place_meeting(x+1,y,solit) {image_angle=90; image_index=0; vx=0; vy=0; exit}
if place_meeting(x-1,y,solit) {image_angle=270; image_index=0; vx=0; vy=0; exit}

image_index=1;

