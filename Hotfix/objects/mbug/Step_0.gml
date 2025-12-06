/// @description Insert description here
// You can write your code in this editor
if instance_exists(bullet) {vx-=sign(instance_nearest(x,y,bullet).x-x)/2; vy-=sign(instance_nearest(x,y,bullet).y-16-y)/2;}

if place_meeting(x,y+1,solit) {image_angle=0; exit}
if place_meeting(x,y-1,solit) {image_angle=180; exit}
if place_meeting(x+1,y,solit) {image_angle=90; exit}
if place_meeting(x-1,y,solit) {image_angle=270; exit}
image_angle=0;
