/// @description Insert description here
// You can write your code in this editor

//if tt<=0 {repeat(3) {audio_play_sound(poof,1,0); instance_create_depth(x+8,y-10,depth+1,bullet); tt+=TT;}};
if Cmv
{
switch (Gn)
{
case 0:
	
if tt<=0 {repeat(MT) {audio_play_sound(poof,1,0); 
	gb=true;
	alarm[9]=5;
	with instance_create_depth(x-8*(dir+offs),y-(10+off2)*image_yscale,depth+1,bullet)
	{
	image_yscale=other.image_yscale;
	Spd=other.Spd;
	Siz=other.Siz;
	Rng=other.Rng;
	Acc=other.Acc;
	Pwr=other.Pwr+1;
	dir=other.dir
	dr2=other.dr2
	
	T=Rng*25;
	
	Rng+=random_range(-1,1);
	Acc+=random_range(-1,1);
	Siz+=random_range(-1,1);
	
	Vsp=random_range(-1,1)*power(2,-Acc);
	Hsp=random_range(-1,1)*power(2,-Acc);
	}
	tt+=TT;}};
	
break;
case 1:

if tt<=0 {repeat(MT/4) {audio_play_sound(poof,2,0); 
	gb=true;
	alarm[9]=5;
		with instance_create_depth(x,y-10*image_yscale,depth-1,shell) {xx=other.dir+random_range(-1,1); yy=-2+random_range(-1,1); rr=random_range(-1,1);} 
	with instance_create_depth(x-8*(dir+offs),y-(10+off2)*image_yscale,depth+1,bullet)
	{
	image_yscale=other.image_yscale;
	Spd=other.Spd+1;
	Siz=other.Siz-1;
	Rng=other.Rng;
	Acc=other.Acc;
	Pwr=other.Pwr-1;
	dir=other.dir;
	dr2=other.dr2;
	

	
	T=Rng*25;
	Vsp=random_range(-1,1)*power(2,-Acc);
	Hsp=random_range(-1,1)*power(2,-Acc);
	//Rng+=random_range(-1,1);
	//Acc+=random_range(-1,1);
	//Siz+=random_range(-1,1);
	}
	tt+=TT/2;}};
break;

case 2:

if tt<=0 {repeat(MT/4) {audio_play_sound(poof,2,0); 
	gb=true;
	alarm[9]=5;
	
	with instance_create_depth(x-8*(dir+offs),y-(10+off2)*image_yscale,depth+1,bullet)
	{
	image_yscale=other.image_yscale;
	Spd=other.Spd+3;
	Siz=other.Siz-2;
	Rng=other.Rng+3;
	//Acc=other.Acc+3;
	Pwr=other.Pwr+5;
	dir=other.dir;
	dr2=other.dr2;
	

	
	T=Rng*25;
	Vsp=0;
	Hsp=0;
	//Rng+=random_range(-1,1);
	//Acc+=random_range(-1,1);
	//Siz+=random_range(-1,1);
	}
	tt+=TT*2;}};
break;

case 3:

if tt<=0 {repeat(MT/4) {audio_play_sound(poof,2,0); 
	gb=true;
	alarm[9]=5;
	
	with instance_create_depth(x-8*(dir+offs),y-(10+off2)*image_yscale,depth+1,bulletP)
	{
	image_yscale=other.image_yscale;
	Spd=other.Spd+3;
	Siz=other.Siz-2;
	Rng=other.Rng+3;
	//Acc=other.Acc+3;
	Pwr=other.Pwr+1;
	dir=other.dir;
	dr2=other.dr2;
	

	
	T=Rng*25;
	Vsp=0;
	Hsp=0;
	//Rng+=random_range(-1,1);
	//Acc+=random_range(-1,1);
	//Siz+=random_range(-1,1);
	}
	tt+=TT;}};
break;

case 4:
alarm[8]+=1;
if tt<=0 {repeat(MT/4) {audio_play_sound(poof,2,0); 
	gb=true;
	alarm[9]=5;
	with instance_create_depth(x-8*(dir+offs),y-(10+off2)*image_yscale,depth+1,bulletT)
	{
	image_yscale=other.image_yscale;
	Spd=other.Spd+3;
	Siz=other.Siz-2;
	Rng=other.Rng+3;
	//Acc=other.Acc+3;
	Pwr=other.Pwr-1;
	dir=other.dir;
	dr2=other.dr2;
	

	
	T=Rng*25;
	Vsp=0;
	Hsp=0;
	//Rng+=random_range(-1,1);
	//Acc+=random_range(-1,1);
	//Siz+=random_range(-1,1);
	}
	tt+=alarm[8];}};
break;
} 
}

