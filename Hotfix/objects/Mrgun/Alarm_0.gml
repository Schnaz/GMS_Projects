/// @description Insert description here
// You can write your code in this editor

with (instance_create_layer(x,y,layer,Ebull))
{
audio_play_sound(poof,2,0);
	Spd=other.Spd;
	Siz=other.Siz;
	Rng=other.Rng;
	
	T=Rng*25;
	
	Acc=other.Acc;
	Ang=other.image_angle;
	Hsp=other.Hsp;
	Vsp=other.Vsp;
	col=other.col;
}

alarm[0]=120;