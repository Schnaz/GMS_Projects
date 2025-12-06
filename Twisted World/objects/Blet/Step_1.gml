/// @description Insert description here
// You can write your code in this editor
t+=1;

vx-=Char.ax/10
vy-=Char.ay/10

x-=2*vx;
y-=2*vy;

if place_meeting(x,y,layer_tilemap_get_id("solidmap")) instance_destroy();


