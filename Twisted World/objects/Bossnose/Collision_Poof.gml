/// @description Insert description here
// You can write your code in this editor
if instance_exists(Bossbar)
{
if alarm[1]<=0
{
hp-=1;
var ag=point_direction(Char.x,Char.y,x,y)
Char.vx=-dcos(ag)*4;
Char.vy=dsin(ag)*4;

audio_play_sound(bawm,10,0);
alarm[1]=30;
alarm[0]=30;
}
if !hp {breakit(bwww);
audio_play_sound(victory,10,0);
global.sw[21]=true;
dial_clear();
var Dialogue=[
["00As the nose sniffs its last\nyou find yourself with newfound power01"],
["00Use 'E' to switch to the gale spell!02"],
[0]
];
dial(Dialogue,Charray,Actions);
instance_destroy();}
}




