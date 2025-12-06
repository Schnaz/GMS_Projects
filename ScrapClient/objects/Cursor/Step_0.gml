/// @description Insert description here
// You can write your code in this editor

xx=device_mouse_x_to_gui(0);
yy=device_mouse_y_to_gui(0);

xo=x;
yo=y;

x=xx;
y=yy;





var col=ds_list_create();
//var num=instance_position_list(x, y, mbox, col, false)
var num=collision_point_list(x, y, mbox, false, false, col, false);
if num
{

for(var di=ds_list_size(col)-1;di>=0;di--;)
{
selecting=col[| di].body
//instance_destroy(selecting);
range=nearness(selecting);
if range>rangemax {rangemax=range; selected=selecting}
}
}
else {selected=noone;}
rangemax=-1000000;
ds_list_destroy(col);



if mouse_check_button_pressed(mb_left)
{
if instance_exists(selected) instance_destroy(selected);
}





if mouse_check_button(mb_none)
{
ind=0;
exit;
}

//if mouse_check_button(mb_left)&&mouse_check_button(mb_right)
//{
//ind=3;
//view3D.angz+=(y-yo)/2;
//view3D.ang+=(x-xo)/2;
//if view3D.angz>=90 view3D.angz=89;
//if view3D.angz<0 view3D.angz=0;
//exit;
//}

if mouse_check_button(mb_left)
{
ind=1;
exit;
}

if mouse_check_button(mb_right)
{
ind=2
exit;
}

if mouse_check_button(mb_middle)
{
ind=3;
view3D.angz+=(y-yo)/2;
view3D.ang+=(x-xo)/2;
if view3D.angz>=90 view3D.angz=89;
if view3D.angz<-90 view3D.angz=-89;
exit;
}