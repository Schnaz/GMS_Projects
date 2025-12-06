/// @description Insert description here
// You can write your code in this editor






if global.sng!=sid {audio_stop_sound(song); sid=global.sng; if sid song=audio_play_sound(sid,12,1);}


if !global.pause {
agc=dcos(ang);
ags=dsin(ang);
//move code starts here
if !stop
{
mvx=(keyboard_check(ord("D"))-keyboard_check(ord("A")));
mvy=(keyboard_check(ord("S"))-keyboard_check(ord("W")));
}
else {mvx=0; mvy=0};


vx+=ax;
vy+=ay;
if abs(vx)>4 vx=4*sign(vx);
if abs(vy)>4 vy=4*sign(vy);

if place_meeting(x+ax*8,y+ay*8,[layer_tilemap_get_id("solidmap"),Solit]) {if grnd=false {grnd=true; audio_play_sound(floof,10,false);}}
else grnd=false;

if grnd
{
ejumps=global.sw[35];
regrnd=1;

if agc*mvx*gspd!=vx vx+=0.2*sign(agc*mvx*gspd-vx);
if ags*mvx*gspd!=vy vy+=0.2*sign(ags*mvx*gspd-vy);

if abs(vx)<0.2*abs(agc)&&mvx=0 {vx=0;}
if abs(vy)<0.2*abs(ags)&&mvx=0 {vy=0;}

}
else
{
vx+=0.05*agc*sign(mvx);
vy+=0.05*ags*sign(mvx);
}
ax=dsin(-ang)*0.25;
ay=dcos(-ang)*0.25;

xx+=vx;


for (var ii=1;ii<=abs(xx);ii++)
{
if place_meeting(x+sign(xx),y,[layer_tilemap_get_id("solidmap"),Solit]) {xx=0; vx=0;
	if abs(agc)<abs(ags)&&grnd=false {audio_play_sound(floof,10,false); grnd=true;}
break;}
else {x+=sign(xx); 
	if abs(agc)<abs(ags) grnd=false;
xx-=sign(xx)}
}

yy+=vy;

for (var ii=1;ii<=abs(yy);ii++)
{
if place_meeting(x,y+sign(yy),[layer_tilemap_get_id("solidmap"),Solit]) {yy=0; vy=0; 
	if abs(ags)<abs(agc)&&grnd=false {audio_play_sound(floof,10,false); grnd=true;}
break;}
else {y+=sign(yy); 
	if abs(ags)<abs(agc) grnd=false;
yy-=sign(yy)}
}
//move code ends here



if alarm[0]<=0
{
if mvx>0 dir=1;
else if mvx<0 dir=-1;
image_xscale=dir;
}

image_speed=agc*vx*dir+ags*vy*dir;

image_angle=-ang;

if (abs(vx)<0.2*abs(agc)||abs(vy)<0.2*abs(ags))&&mvx=0&&grnd {image_index=0; image_speed=0;}
if !grnd {image_speed=1
if image_index>2&&(agc*vy-ags*vx)<0 image_index=2;
if image_index>3&&(agc*vy-ags*vx)>0 image_index=3;
}

//////////////////////////////////////////////////Attack!!!
if mvx=0&&mvy=0 mvx=dir;
if alarm[0]<0||spell=1 { atdr=[mvx,mvy]; }
if abs(atdr[0]*atdr[1])=1 {mvx2=agc*atdr[0]/1.5-ags*atdr[1]/1.5; mvy2=agc*atdr[1]/1.5+ags*atdr[0]/1.5}
else {mvx2=atdr[0]*agc-atdr[1]*ags; mvy2=atdr[1]*agc+atdr[0]*ags}


switch(spell) {
	case 0:
if alarm[0]=20 {
	with (instance_create_depth(x+mvx2*rang,y+mvy2*rang,depth-1,Poof)) {
vx=other.vx
vy=other.vy
image_angle=point_direction(0,0,other.mvx2,other.mvy2);
image_yscale=other.dir;
}
}
	break;
	case 1:
if alarm[0]=20 {
	with (instance_create_depth(x+mvx2*rang,y+mvy2*rang,depth-1,Poof1)) {
//vx=other.vx
//vy=other.vy
image_angle=point_direction(0,0,other.mvx2,other.mvy2);
image_yscale=other.dir;

vxx=dcos(image_angle)*4;
vyy=-dsin(image_angle)*4;
vx=0;
vy=0;

if !instance_exists(Psigil)
{with (instance_create_depth(x,y,depth+50,Psigil))
{
image_angle=other.image_angle
audio_play_sound(vwip,10,false);
}
instance_destroy();
}
else {
image_angle=Psigil.image_angle
audio_play_sound(viow,10,false);
instance_destroy(Psigil);}
}
}
	break;
	case 2:
if alarm[0]=20 {
	with (instance_create_depth(x+mvx2*rang,y+mvy2*rang,depth-1,Poof2)) {
//vx=other.vx
//vy=other.vy
image_angle=point_direction(0,0,other.mvx2,other.mvy2);
vx=dcos(image_angle)*4;
vy=-dsin(image_angle)*4;
image_yscale=other.dir;
}
}
	break;
	case 3:
	break;
	case 4:
	break;
}
/////////////////////////////////////////////////////////////

} ///////PAUSE END
else image_speed=0;

//hairy code
headx=x+agc*submat[image_index][0]*dir-ags*submat[image_index][1];
heady=y+agc*submat[image_index][1]+ags*submat[image_index][0]*dir;

with(instance_create_depth(headx,heady,depth-dir,bleedpart))
{
dir=other.dir;
if dir<0 sprite_index=bakar;
image_xscale=dir;
image_angle=other.image_angle;
image_blend=other.image_blend;
ax=other.ax;
ay=other.ay;
}

with(instance_create_depth(headx,heady,depth+dir,bleedpart))
{
dir=-other.dir;
if dir<0 sprite_index=bakar;
image_xscale=-dir;
image_angle=other.image_angle;
image_blend=other.image_blend;
ax=other.ax;
ay=other.ay;
}
//with(bleedpart)
//{
//if point_distance(x, y, Char.x, Char.y-3)>4 instance_destroy();
//}

//hairy end

// moving the camera
if room_width>256 xval=x-128;
else xval=camera_get_view_x(view_get_camera(0));
if room_height>256 yval=y-112;
else yval=camera_get_view_y(view_get_camera(0));

camera_set_view_pos(view_get_camera(0), xval, yval)
camera_set_view_angle(view_get_camera(0), ang)

///DASH
if alarm[3]>=35
{
audio_play_sound(floof,10,false,1,0,2+(35-alarm[3])/(5));
vx=4*agc*sign(mvx)-4*ags*sign(mvy);
vy=4*ags*sign(mvx)+4*agc*sign(mvy);
regrnd=false;
}