/// @description Insert description here
// You can write your code in this editor
Hp-=other.Pwr
if Hp<=0
{
audio_play_sound(pop,2,0);
instance_destroy();
}
else audio_play_sound(pop,2,0);

instance_destroy(other);
