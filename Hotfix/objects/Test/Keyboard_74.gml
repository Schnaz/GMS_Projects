/// @description Insert description here
// You can write your code in this editor

//if tt<=0 {repeat(3) {audio_play_sound(poof,1,0); instance_create_depth(x+8,y-10,depth+1,bullet); tt+=TT;}};
if tt<=0 {repeat(MT) {audio_play_sound(poof,1,0); 
	gb=true;
	alarm[9]=5;
	with instance_create_depth(x-8*(dir+offs),y-10-off2,depth+1,bullet)
	{
	Spd=other.Spd;
	Siz=other.Siz;
	Rng=other.Rng;
	Acc=other.Acc;
	Pwr=other.Pwr;
	dir=other.dir
	dr2=other.dr2
	
	T=Rng*25;
	Vsp=random_range(-1,1)*power(2,-Acc);
	Hsp=random_range(-1,1)*power(2,-Acc);
	//Rng+=random_range(-1,1);
	//Acc+=random_range(-1,1);
	//Siz+=random_range(-1,1);
	}
	tt+=TT;}};