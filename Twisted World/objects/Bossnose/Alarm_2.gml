/// @description Insert description here
// You can write your code in this editor
alarm[2]=30+hp*5;
audio_play_sound(paff,10,false);

if val==-1 {val=1; neval=1;}
else while(val==neval) {val=irandom(2);}

neval=val;

with (instance_create_depth(x-val*16-8,y,depth,Snot))
{
vxx=dcos(image_angle)*4;
vyy=-dsin(image_angle)*4;
}
