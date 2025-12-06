/// @description Insert description here
// You can write your code in this editor
if !Tester.Trigs[2]||Tester.Trigs[8] instance_destroy();
else
{
instance_deactivate_object(Tilewall);
	
Tls=32*12;
audio_play_sound(Boss2,2,1);
ded=false;
mup=true;

Dial_clear();
dir=1;

Charray=[[faceslot,1,boop],[facedev,-1,buup],[facedev,1,buup],[facetile,-1,tath]];




for (var ix=0; ix<8; ix++)
{
for (var iy=0; iy<8; iy++)
{
instance_create_depth(x+8*ix-100,y+8*iy-100,depth,E_tiles)
	
	
	
}	
}
}