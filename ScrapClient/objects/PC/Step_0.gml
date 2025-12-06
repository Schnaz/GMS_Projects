/// @description Insert description here
// You can write your code in this editor

mang=90*(ceil(view3D2.ang/90-0.5));

xx+=(dsin(mang)*(keyboard_check_pressed(ord("D"))-keyboard_check_pressed(ord("A")))+dcos(mang)*(keyboard_check_pressed(ord("S"))-keyboard_check_pressed(ord("W"))))*20;
yy+=(dsin(mang)*(keyboard_check_pressed(ord("S"))-keyboard_check_pressed(ord("W")))-dcos(mang)*(keyboard_check_pressed(ord("D"))-keyboard_check_pressed(ord("A"))))*20;

xt=round((xx-10)/20);
yt=round((yy-10)/20);

zz=(view3D2.gridz[xt+1][yt]+view3D2.gridz[xt][yt+1])/2;
x=(xx+x*2)/3;
y=(yy+y*2)/3;
z=(zz+z*2)/3;

if view3D2.on {
px=bb_get_xpos(self)+view_wport[0]/2-120;
py=bb_get_ypos(self)+view_hport[0]/2-90;
}
else
{
px=bb_get_xpos(self)+view_wport[0]/2;
py=bb_get_ypos(self)+view_hport[0]/2;
}

mx=device_mouse_x_to_gui(0);
my=device_mouse_y_to_gui(0);

if device_mouse_check_button(0, mb_left)
{
if mx<=(px+16)&&mx>=(px-16)&&my>=(py-64+view3D2.angz/5)&&my<=(py+view3D2.angz/5) {
//instance_destroy();
draw_set_color(c_white);
}
}