/// @description Insert description here
// You can write your code in this editor
if instance_exists(Bossbar)
{
if alarm[1]<=0
{
if alarm[0]<=0 with (RotatoE) {event_user(irandom(1))}
hp-=1;
var ag=point_direction(Char.x,Char.y,x,y)
Char.vx=-dcos(ag)*4;
Char.vy=dsin(ag)*4;

audio_play_sound(bawm,10,0);
alarm[1]=30;
alarm[0]=45;
}
if !hp {breakit(bwww);
audio_play_sound(victory,10,0);
global.sw[22]=true;
dial_clear();
var Dialogue=[
["00As the eye melts away\nyou find yourself with newfound power01"],
["00Use 'E' to switch to the flame spell!02"],
[0]
];
dial(Dialogue,Charray,Actions);
instance_destroy();}
}




