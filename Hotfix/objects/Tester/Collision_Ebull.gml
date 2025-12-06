/// @description Insert description here
// You can write your code in this editor
if alarm[0]<0 {Hp-=1; audio_play_sound(hurt,2,0); flickr=true; alarm[0]=Fm; alarm[2]=5;}
if Hp<=0 {killer=other; Cmv=false; Death();}

instance_destroy(other);