/// @description Insert description here
// You can write your code in this editor
global.sw[num]=true;
audio_play_sound(jingle,10,false);
dial_clear();

Dialogue=[
["00Found the Dash!01"],
["00Press Shift to launch yourself02"],
[0]]


dial(Dialogue,Charray,Actions);

bsave();