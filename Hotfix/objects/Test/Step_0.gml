/// @description Insert description here
// You can write your code in this editor
if ceil(tt)=30 audio_play_sound(toktik,3,false);
if tt>0 tt=tt-1;

//•¤¶§
if keyboard_check(ord("A"))&&!keyboard_check(ord("D")) {vx=-Msp; mv=true; if !keyboard_check(ord("J")) dir=1;};
if keyboard_check(ord("D"))&&!keyboard_check(ord("A")) {vx=Msp; mv=true; if !keyboard_check(ord("J")) dir=-1;};
if (!keyboard_check(ord("A"))&&!keyboard_check(ord("D")))||(keyboard_check(ord("A"))&&keyboard_check(ord("D"))) {mv=false; vx=0;}

if !keyboard_check(ord("J"))
{
if keyboard_check(ord("W")) {if mv=true {dr2=1; offs=-dir/4; off2=7;} else {dr2=2; offs=-dir; off2=9;}}
else {dr2=0; offs=0; off2=0;}
}

movex(vx);

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