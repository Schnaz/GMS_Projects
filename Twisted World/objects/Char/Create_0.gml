/// @description Insert description here
// You can write your code in this editor

spell=0;
ejumps=0

mult=1;
if os_browser!=browser_not_a_browser 
{
mult=3;
}

injurer=noone;
rot2=0

depth=-5;

if !variable_global_exists("sx")
{
global.sw=array_create(99,0);
global.sw[99]="Rabyss";
global.sw[98]=0;
global.sw[97]=446;
global.sw[96]=264;
}
if !variable_global_exists("sng")
{
global.sng=Desalutations;
}
if !variable_global_exists("pause")
{
global.pause=false;
}
//what does it mean
//0-19=story
//20-24=wand
//25-29=hearts
//30 dash
//35 extra jump
//40 turn


//4 hearts
//1 stick
//1 turn
//1 dash
//1 extra jump
//4 spells

hpmax=0;
hp=0;
event_user(10);


stop=false;
sid=Desalutations;
song=audio_play_sound(sid,12,1);
window_set_size(256*3,224*3);
randomize();

mute=false;

xval=x;
yval=y;

gspd=2;
rang=10;

grnd=false;
ang=0;
mvx=0;
mvy=0;
mvx2=0;
mvy2=0;

ax=dsin(-ang)*0.25;
vx=0;
xx=0;

ay=dcos(-ang)*0.25;
vy=0;
yy=0;

dir=1;
submat[0][0]=0;
submat[0][1]=0;
submat[1][0]=1;
submat[1][1]=0;
submat[2][0]=1;
submat[2][1]=1;
submat[3][0]=0;
submat[3][1]=1;
submat[4][0]=0;
submat[4][1]=0;

sub2[0][0]=1;
sub2[0][1]=3;
sub2[0][2]=5;
sub2[1][0]=2;
sub2[1][1]=3;
sub2[1][2]=4;
headx=0;
heady=0;

agc=dcos(ang);
ags=dsin(ang);

rm=0;
atdr=[0,0]
regrnd=1;
alarm[3]=0;