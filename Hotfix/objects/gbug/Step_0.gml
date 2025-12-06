/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y+1,solit) {image_angle=0; vy=-1; exit}
if place_meeting(x,y-1,solit) {image_angle=180; vy=1; exit}
if place_meeting(x+1,y,solit) {image_angle=90; vx=-1; exit}
if place_meeting(x-1,y,solit) {image_angle=270; vx=1; exit}
image_angle=0;
