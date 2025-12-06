/// @description Insert description here
// You can write your code in this editor
if vx!=0||vy!=0 {if spin=false alarm[0]=120;
spin=true;}
if spin { image_angle+=ran;
vx+=Char.ax;
x+=vx;
vy+=Char.ay;
y+=vy
	exit;}


if image_index>=3.5&&image_speed {image_speed=-image_speed;
with (instance_create_depth(x,y,depth-1,Blet))
{
vx=2*dcos(point_direction(Char.x,Char.y,x,y))+1*Char.ax;
vy=-2*dsin(point_direction(Char.x,Char.y,x,y))+1*Char.ay;
audio_play_sound(tat,10,false);
}	
}
if image_index<=0.5&&!image_speed {image_speed=-image_speed;
xx2=x+irandom_range(-64,64);
yy2=y+irandom_range(-64,64);
audio_play_sound(shiaw,10,false);
while (place_meeting(xx2,yy2,layer_tilemap_get_id("solidmap")))
{
xx2=x+irandom_range(-64,64);
yy2=y+irandom_range(-64,64);
}

rot2=point_direction(Char.x,Char.y,x,y)-90;
}
xx=(xx2-x)/2;
yy=(yy2-y)/2;
rot=rot+angle_difference(rot2,rot)/2;

for (var ii=1;ii<=abs(xx);ii++)
{
if place_meeting(x+sign(xx),y,layer_tilemap_get_id("solidmap")) {xx=0; vx=0; xx2=0+x;

break;}
else {x+=sign(xx); xx-=sign(xx)}
}

yy+=vy;

for (var ii=1;ii<=abs(yy);ii++)
{
if place_meeting(x,y+sign(yy),layer_tilemap_get_id("solidmap")) {yy=0; vy=0; yy2=0+y;

break;}
else {y+=sign(yy); yy-=sign(yy)}
}


