/// @description Insert description here
// You can write your code in this editor

if instance_exists(Bossbar)&&dist<distt 
{
	x+=ags*2;
	y+=agc*2;
	dist+=2;
	image_alpha=dist/distt;
}
if dist>0&&!instance_exists(Bossbar) {
	x-=ags*2;
	y-=agc*2;
	dist-=2;
	image_alpha=dist/distt;
}

