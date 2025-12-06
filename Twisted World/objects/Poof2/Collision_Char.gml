/// @description Insert description here
// You can write your code in this editor

if act&&!hurtme{
var ag=point_direction(Char.x,Char.y,x,y)
Char.vx=-dcos(ag)*4;
Char.vy=dsin(ag)*4;
harm();
air=false;
alarm[1]=tiks;
hurtme=true;
audio_play_sound(bweh,10,false);
}




