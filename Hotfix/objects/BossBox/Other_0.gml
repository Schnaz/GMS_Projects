/// @description Insert description here
// You can write your code in this editor
if !vict {
Tester.Trigs[9]=1
print=false
vict=true;
audio_play_sound(Fanfare,2,0);
Dial_clear();

Tester.Trigs[9]=1
instance_create_layer(x,0,layer,P_hp6);

Actions[2]=1;
Actions[6]=2;

Dialogue=[
["02To heck with this I'm outa here!01"],
["00.  .  .  .  .02"],
["01Wow! That boss really did a number on the place03"],
["01So I managed to borrow some of the gravity code that boss was using04"],
["01Problem is that there may be some issues if I implement it carelessly!05"],
["01For now, press 'G' to toggle gravity06"],
[0]
];

Dial(Dialogue,Charray,Actions);
}
