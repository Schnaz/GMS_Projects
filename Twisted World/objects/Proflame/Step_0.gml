/// @description Insert description here
// You can write your code in this editor

image_angle+=angle_difference(point_direction(x,y,Char.x+offx,Char.y+offy),image_angle)/100;

vx=dcos(image_angle)*2;
vy=-dsin(image_angle)*2;

for (var ii=7; ii>0;ii--)
{
last[ii]=last[ii-1];
}

if air
{
	x+=vx;
	y+=vy;
//x+=dcos(image_angle)*4;
//y+=-dsin(image_angle)*4;
last[0]=[x,y,image_angle];
}
else {image_xscale=8*(1-alarm[1]/tiks);
	image_yscale=8*(1-alarm[1]/tiks);
	}

if place_meeting(x,y,[layer_tilemap_get_id("solidmap"),Solit,Dynamic])&&air {air=false; alarm[1]=tiks; audio_play_sound(bweh,10,false);};






