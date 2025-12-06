/// @description Insert description here
// You can write your code in this editor
if alarm[1]<=0
{
hp-=1;
Char.vx=(other.x-x)/2;
Char.vy=(other.y-y)/2;
//Tretack.vx=(other.x-x)/2;
//Tretack.vy=(other.y-y)/2;

audio_play_sound(bawm,10,0);
alarm[1]=30;
}
if !hp {breakit(bwww); global.sw[2]=true; instance_destroy()}

