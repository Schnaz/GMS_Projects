/// @description Insert description here
// You can write your code in this editor
mv+=1;
if ff {
var i2=instance_create_depth(x-16*dcos(ang),y-16*dsin(ang),depth-10,Tile_fire);
i2.alarm[0]=120*(pow+2);
audio_play_sound(snd_Fire,0,0,1,0,pitup);
pitup=pitup*1.1;
}
else ff=1;