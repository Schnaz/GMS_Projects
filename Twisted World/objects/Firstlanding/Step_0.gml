/// @description Insert description here
// You can write your code in this editor

if Char.grnd=true&&!global.sw[0]
{
global.sng=Darkone;
alarm[0]=100;
Char.stop=true;
global.sw[0]=true;
bsave();
instance_create_depth(Char.x,Char.y-64,depth,Evileye);
}
if global.sw[0]=true audio_sound_pitch(Char.song,(100-alarm[0])/100);