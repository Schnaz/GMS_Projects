/// @description Insert description here
// You can write your code in this editor

if instance_exists(Tbox)
{
if Tbox.talking=true image_speed=1;
else image_speed=0; image_index=0;
}


//image_angle=point_direction(x,y,Char.x,Char.y);

if alarm[1]>0
image_blend=make_color_rgb(255,255-alarm[1]*3,255-alarm[1]*3);
else image_blend=c_white;



