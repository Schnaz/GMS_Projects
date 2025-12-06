/// @description Insert description here
// You can write your code in this editor


Hp-=other.Pwr
if Hp<=0
{
audio_play_sound(bump2,2,0);
instance_change(E_tileDED, 1);
}
else audio_play_sound(bump4,2,0);



instance_destroy(other);
