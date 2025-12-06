/// @description Insert description here
// You can write your code in this editor

if ang>=90 {
if stop {if lucky=0 {stopped=false exit;}}

audio_play_sound(bip,2,0);

di1o=di1;
di2o=di2;

if !stop {
di=irandom_range(1,sides);
di1=string_char_at("0"+string(di),string_length(string(di)))
di2=string_char_at(string(di),string_length(string(di)))
}
else {
di=irandom_range(di,1+half+lucky*half);
di1=string_char_at("0"+string(di),string_length(string(di)))
di2=string_char_at(string(di),string_length(string(di)))
lucky=0;
}
ang-=90;
}

ang+=inc/(1+stop);

