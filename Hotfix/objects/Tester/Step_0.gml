/// @description Insert description here
// You can write your code in this editor
if Gn=4&&alarm[9]>0 alarm[8]+=1;

if instance_exists(Tbox) tup=Tbox.y-room_height;
else tup=0;

if Cmv
{
if ceil(tt)=30 audio_play_sound(toktik,3,false);
if tt>0 tt=tt-1;

//•¤¶§


if grav {if (place_meeting(x,y+image_yscale,solit)||tilemap_get_at_pixel(tl,x+image_yscale,y)!=0) {vy=0;}else{vy+=0.1;}}


if Trigs[7]=1 {
if keyboard_check_pressed(vk_space)&&(place_meeting(x,y+image_yscale,solit)||tilemap_get_at_pixel(tl,x+image_yscale,y)!=0) {
audio_play_sound(bounce,2,0)
if grav {
vy=-3;

}
else
{
image_yscale=-image_yscale;
y+=20*image_yscale; vy=2*image_yscale;
}

};
}

if !movey(vy)||((tilemap_get_at_pixel(tl,x,y)!=0)) vy=0;

if keyboard_check(ord("A"))&&!keyboard_check(ord("D")) {vx=-Msp; mv=true; if !keyboard_check(ord("J")) dir=1;};
if keyboard_check(ord("D"))&&!keyboard_check(ord("A")) {vx=Msp; mv=true; if !keyboard_check(ord("J")) dir=-1;};
if (!keyboard_check(ord("A"))&&!keyboard_check(ord("D")))||(keyboard_check(ord("A"))&&keyboard_check(ord("D"))) {mv=false; vx=0;}

if ((tilemap_get_at_pixel(tl,x,y-1)=33)||(tilemap_get_at_pixel(tl,x,y-1)=33 | tile_mirror))&&keyboard_check(ord("W"))&&!keyboard_check(ord("S")) {movey(-1); mv=true;}
if ((tilemap_get_at_pixel(tl,x,y)=33)||(tilemap_get_at_pixel(tl,x,y)=33 | tile_mirror))&&keyboard_check(ord("S"))&&!keyboard_check(ord("W")) {movey(1); mv=true;}
//if (!keyboard_check(ord("W"))&&!keyboard_check(ord("S")))||(keyboard_check(ord("W"))&&keyboard_check(ord("S"))) {mv=false;}


if !keyboard_check(ord("J"))
{
if keyboard_check(ord("W"))&&!keyboard_check(ord("S")) {if vx!=0 {dr2=1; offs=-dir/4; off2=7;} else {dr2=2; offs=-dir; off2=9;}}
else if !keyboard_check(ord("W"))&&keyboard_check(ord("S")) {if vx!=0 {dr2=3; offs=-dir/4; off2=-7;} else {dr2=4; offs=-dir; off2=-9;}} 
else{dr2=0; offs=0; off2=0;}}


movex(vx);
}
else mv=false;
//if keyboard_check(ord("W")) x+=1;
if mv=false {gup=false; bup=false;}
else
{
switch (floor(image_index))
{
case 0:
gup=false;
bup=false;

if ftdn=true
{
	
if ft	{audio_play_sound(buup,4,false); ft=false;}
else	{audio_play_sound(boop,4,false); ft=true;}

}
ftdn=false;

break;
case 1:
case 2:
gup=true;
bup=true;

ftdn=true;
break;
case 3:
gup=true;
bup=false;

break;
}
//default:
//image_index=0;
//break;
}

