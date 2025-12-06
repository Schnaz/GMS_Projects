/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

draw_sprite(icon,stage,x,y);

draw_self();

if alarm[0]<45&&stage>=1
{
draw_set_alpha((15-alarm[0])/15);
draw_text(x,y+40,text);
draw_line(x+16,y+32,x+16,y+44);
}
draw_set_alpha(1);

