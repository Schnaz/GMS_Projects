/// @description Insert description here
// You can write your code in this editor
if !alarm[0]
{
alarm[0]=16/mv; 
x+=dcos(ang)*16; 
y+=dsin(ang)*16;
if ff {
var i2=instance_create_depth(x-16*dcos(ang),y-16*dsin(ang),depth-10,Tile_ice);
i2.alarm[0]=60*(pow+2);
audio_play_sound(snd_Ice,0,0,1,0,pitup);
pitup=pitup*1.1;
}
else ff=1;
}
xpos+=mv*dcos(ang);
ypos+=mv*dsin(ang);
