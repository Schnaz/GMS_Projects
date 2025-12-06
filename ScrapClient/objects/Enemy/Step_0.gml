/// @description Insert description here
// You can write your code in this editor

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



