/// @description Insert description here
// You can write your code in this editor
for (var ii=3; ii>0;ii--)
{
last[ii]=last[ii-1];
}


if air
{
x+=vxx;
y+=vyy;
last[0]=[x,y];
}
else {
x+=dcos(image_angle)*4;
y+=-dsin(image_angle)*4;
}
if place_meeting(x+dcos(image_angle)*4,y-dsin(image_angle)*4,[layer_tilemap_get_id("solidmap"),Solit,Dynamic,Boss])&&!air {breakit(pwah); instance_destroy();};
if place_meeting(x+vxx,y+vyy,layer_tilemap_get_id("solidmap"))&&air {air=false; audio_play_sound(viow,10,false);};

act=true;

