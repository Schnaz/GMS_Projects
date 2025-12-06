/// @description Insert description here
// You can write your code in this editor
Hp-=other.Pwr
if Hp<=0
{
audio_stop_all();
audio_play_sound(bump1,2,0);
death=true;
alarm[0]=-1;
alarm[1]=-1;
instance_destroy(E_tile2);
instance_destroy(other);
}
else audio_play_sound(hurt,2,0);

instance_destroy(other);
