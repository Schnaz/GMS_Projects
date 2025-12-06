/// @description Insert description here
// You can write your code in this editor
Hp-=other.Pwr
if Hp<=0
{
audio_play_sound(bump3,2,0);
instance_destroy();
}
else audio_play_sound(hurt,2,0);

instance_destroy(other);
