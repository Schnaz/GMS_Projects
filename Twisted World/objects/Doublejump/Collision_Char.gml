/// @description Insert description here
// You can write your code in this editor
global.sw[num]=true;
audio_play_sound(jingle,10,false);
dial_clear();

Dialogue=[
["00Found the Defective Double Jump!01"],
["00It was just lying around...02"],
[0]]


dial(Dialogue,Charray,Actions);

bsave();