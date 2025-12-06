/// @description Insert description here
// You can write your code in this editor
act=true;
offx=random_range(-32,32);
offy=random_range(-32,32);
image_angle=point_direction(x,y,Char.x+offx,Char.y+offy);

last=[[x,y,image_angle],[x,y,image_angle],[x,y,image_angle],[x,y,image_angle],[x,y,image_angle],[x,y,image_angle],[x,y,image_angle],[x,y,image_angle]];
alarm[0]=120;
vx=dcos(image_angle)*3;
vy=-dsin(image_angle)*3;
air=true;
push=0;
see=1;
tiks=10;
col=make_color_rgb(255,255,0);
audio_play_sound(vvv,10,false);

hurtme=false;



