/// @description Insert description here
// You can write your code in this editor
for (var ii=3; ii>0;ii--)
{
last[ii]=last[ii-1];
}

if air
{
	x+=vx;
	y+=vy;
//x+=dcos(image_angle)*4;
//y+=-dsin(image_angle)*4;
last[0]=[x,y];
}
else {image_xscale=8*(1-alarm[1]/tiks);
	image_yscale=8*(1-alarm[1]/tiks);
	}

if place_meeting(x,y,[layer_tilemap_get_id("solidmap"),Solit,Dynamic,Boss])&&air {air=false; alarm[1]=tiks; audio_play_sound(bweh,10,false);};


act=true;
