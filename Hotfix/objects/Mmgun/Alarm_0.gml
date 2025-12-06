/// @description Insert description here
// You can write your code in this editor
	with (instance_create_layer(x,y,layer,Ebull))
	{
	audio_play_sound(poof,2,0);
	Spd=other.Spd;
	Siz=other.Siz;
	Rng=other.Rng;
	Acc=other.Acc;
	Ang=other.image_angle;
	col=other.col;
	
	T=Rng*25;
	
	Rng+=random_range(-1,1);
	Acc+=random_range(-1,1);
	Siz+=random_range(-1,1);
	
	Vsp=random_range(-1,1)*power(2,-Acc);
	Hsp=random_range(-1,1)*power(2,-Acc);
	};

alarm[0]=30;