/// @description Insert description here
// You can write your code in this editor

if grnd&&!global.pause&&!stop
{
xx=0;
yy=0;
vy-=4*dcos(-ang);
vx-=4*dsin(-ang);
audio_play_sound(fwip,10,false);
}
if !grnd&&!global.pause&&!stop&&ejumps
{
xx=0;
yy=0;
vy-=4*dcos(-ang);
vx-=4*dsin(-ang);
ejumps-=1;
audio_play_sound(fwip,10,false);
}


