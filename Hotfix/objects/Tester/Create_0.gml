/// @description Insert description here
// You can write your code in this editor
//audio_play_sound(Wander,2,1);
grav=false;

tl=layer_tilemap_get_id("Tiles_1");
vx=0;
vy=0;

Psong=Wander;
Trigs[99]=0;


Mhp=0;
Hp=0;
Fm=0;
In=0;
tup=0;
Inv[0]=0;

flickr=false;
chardrw=true;

alarm[0]=Fm;
alarm[1]=1;
alarm[8]=0;
//1 Dialogue about 0 g
//2 Boss 2 dialogue
//3 Enemy introduction
//4 Audios amigos

//5 mBoss 1 beaten
//6 mBoss 2 beaten
//7 Boss 1 beaten
//8 Boss 2 beaten
//9 Boss 3 beaten

//10 Boss 1 Dialogue
//11 Boss 2 Dialogue
//12 Boss 3 Dialogue

//20+ Health pickups
//30+ Frame pickups
//40+ I pickups
//50+ move pickups
//60+ items



diff=1;

Cmv=true;

tt=1;

//weapon stats

Msp=1;
Spd=3;
Siz=3;
Rng=3;
Acc=3;
Pwr=3;

Rat=3;
Mlt=3;
//weapon upgrades



TT=120*(power(2,-Rat));
MT=power(2,Mlt-1);

Hr=1;
Gn=4;
C1=3;
C2=1;

Hair=[THstand1,THstand2,THstand3];
InvItems=[0,Gn1I,Gn2I,Gn3I,Gn4I,Gn5I,0,0,0,FkeyI];


Color1[3]=$0F0B9E;
Color1[2]=$00F2FF;
//FFF200
Color1[1]=$A81400;
Color1[0]=$76994A;


Color2[3]=$000000;
//$202020
Color2[2]=$1199CC;
Color2[1]=$7B776B;
//4B443B
Color2[0]=$202759;

//Color1=[4888950,5288,16761344,10357519];
//Color2=[5842720,3884107,13408529,2105376];




dir=-1;
dr2=0;
offs=0;
off2=0;

mv=false;
gup=false;
bup=false;
gb=false;

ftdn=false;
ft=true;

