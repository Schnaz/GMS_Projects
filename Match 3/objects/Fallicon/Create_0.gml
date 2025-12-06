/// @description Insert description here
// You can write your code in this editor
acc=0;
image_speed=0;
ir1=irandom(6);
ir2=irandom(6);
imarry=[Ico_R, Ico_O, Ico_Y, Ico_G, Ico_B, Ico_I, Ico_V];
coarry=[c_red, make_color_rgb(255,127,0), c_yellow, c_lime, c_aqua, c_blue, c_fuchsia]
sprite_index=imarry[ir1];
image_blend=coarry[ir1];
image_alpha=0.5;

ply=instance_place(x,y,Player);

//grav=angle_difference(global.gg,0);
grav=global.gg+360;

xpos=x;
ypos=y;
var xinc=16*dsin(grav)
var yinc=16*dcos(grav)

while(!place_meeting(x+xinc,y+yinc,[Icon, Border]))
{
x+=xinc;
y+=yinc;
}