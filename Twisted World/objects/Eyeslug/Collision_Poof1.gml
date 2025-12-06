/// @description Insert description here
// You can write your code in this editor

if alarm[1]<=0
{
hp-=1;

audio_play_sound(bawm,10,0);
alarm[1]=30;
alarm[0]=30;
}
if !hp {breakit(bawm); instance_destroy()}




