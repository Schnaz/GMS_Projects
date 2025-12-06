/// @description Insert description here
// You can write your code in this editor
if !vict {
vict=true;
audio_play_sound(Fanfare,2,0);
Dial_clear();

Tester.Trigs[7]=1
instance_create_layer(x,0,layer,P_hp3);

Actions[2]=1;
Actions[6]=2;
print=false;

Dialogue=[
["02CRROOOAAAK! (I am die)01"],
["00.  .  .  .  .02"],
["01Well that was a fierce fight!03"],
["01So I managed to salvage some intresting code from that behemoth you defeated04"],
["01It doesn't work properly without gravity, but its still worth a shot05"],
["01Try pressing space while on the ground! It should let you get back out the way you came!06"],
[0]
];

Dial(Dialogue,Charray,Actions);
}
