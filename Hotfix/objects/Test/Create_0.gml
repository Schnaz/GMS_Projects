/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
audio_play_sound(Wander,1,true);

tt=1;

window_set_size(1024,896);
Msp=1
Spd=1.5;
Siz=3;
Rng=3;
Acc=3;
Pwr=3;

Rat=4;
Mlt=1;

TT=120*(power(2,-Rat));
MT=power(2,Mlt-1);

H=true;
dir=-1;
dr2=0;
offs=0;
off2=0;

mv=false;
gup=false;
bup=false;
gb=false;

ftdn=false;
ft=true;
