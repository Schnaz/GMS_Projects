/// @description ACK YOUR INJURED
// You can write your code in this editor
if global.pause=false
{
hp-=1
image_blend=c_red;
audio_play_sound(ow,10,0,1+0.1*random_range(-3,3),0,1+0.1*random_range(-3,3))
alarm[2]=20;
if hp<=0 {audio_play_sound(bwww,10,0); bload();}
}

