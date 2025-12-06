/// @description Insert description here
// You can write your code in this editor
audio_play_sound(tath,1,0);
layer_background_alpha(layer_background_get_id("Dark"),0);
Charray[1,0]=facedev;
if instance_exists(Tester)
{

repeat(20)
{
with (instance_create_layer(x,y,layer,bloon_s))
{
	while (!place_empty(x,y)) {x=random_range(0,room_width); y=random_range(0,room_height);}
}
}

repeat(10)
{
with (instance_create_layer(x,y,layer,bloon_m))
{
	while (!place_empty(x,y)) {x=random_range(0,room_width); y=random_range(0,room_height);}
}
}

repeat(3)
{
with (instance_create_layer(x,y,layer,bloon_b))
{
	while (!place_empty(x,y)) {x=random_range(0,room_width); y=random_range(0,room_height);}
}
}

test=true;
	
Dialogue=[0];
Dialogue[1,0]=0;
Dialogue[0,0]="01On your go, get mark, SET!!!01";

Actions[99]=0;
Actions[1]=4;

Dial(Dialogue,Charray,Actions);


}
else
{
with (instance_create_layer(x-64,y,layer,Tester))
{
Hr=other.Parray[0]

C1=other.Parray[1];
	
C2=other.Parray[2];
	
Gn=other.Parray[3];
	
}
Dialogue=[0];

Dialogue[3,0]=0;
Dialogue[2,0]="01Use 'WASD' to move and look around, and use 'J' to shoot. When you are ready press 'L' while standing near me to test your capabilities03"
Dialogue[0,0]="01Aaaand done! I did say it would only take a second02"

Actions=[0];
Actions[99]=0;

Dial(Dialogue,Charray,Actions);
}