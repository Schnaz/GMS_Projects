/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y+1,solit) {image_angle=0; vx=0; exit}
if place_meeting(x,y-1,solit) {image_angle=180; exit}
if place_meeting(x+1,y,solit) {image_angle=90; exit}
if place_meeting(x-1,y,solit) {image_angle=270; exit}
image_angle=0;
