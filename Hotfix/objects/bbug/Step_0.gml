/// @description Insert description here
// You can write your code in this editor
movex(vx);
movey(vy);

if place_meeting(x,y+1,solit) {image_angle=0; vx=0; vy=0; exit}
if place_meeting(x,y-1,solit) {image_angle=180; vx=0; vy=0; exit}
if place_meeting(x+1,y,solit) {image_angle=90; vx=0; vy=0; exit}
if place_meeting(x-1,y,solit) {image_angle=270; vx=0; vy=0; exit}
image_angle=0;
