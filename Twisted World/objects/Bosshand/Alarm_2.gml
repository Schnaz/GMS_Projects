/// @description Insert description here
// You can write your code in this editor
sprite_index=handfight;
alarm[2]=60+hp*10;
audio_play_sound(tat,10,false);

if val==-1 {val=1; neval=1;}
else while(val==neval) {val=irandom(3);}

neval=val;

switch (val)
{
case 0:

image_index=0;
for (var ix=-20; ix<=20; ix++)
{
with instance_create_depth(Char.x+ix*16,Char.y+240,depth,VectoE)
{
vy=-4;
image_angle=180;
}
}

break;
case 1:

image_index=1;
for (var ix=-20; ix<=20; ix++)
{
with instance_create_depth(Char.x+ix*16,Char.y-180,depth,VectoE)
{
vy=4;

}
}

break;
case 2:

image_index=2;
for (var ix=-20; ix<=20; ix++)
{
with instance_create_depth(Char.x+180,Char.y+ix*16,depth,VectoE)
{
vx=-4;
image_angle=-90;
}
}

break;
case 3:

image_index=3;
for (var ix=-20; ix<=20; ix++)
{
with instance_create_depth(Char.x-180,Char.y+ix*16,depth,VectoE)
{
vx=4;
image_angle=90;
}
}

break;

}


