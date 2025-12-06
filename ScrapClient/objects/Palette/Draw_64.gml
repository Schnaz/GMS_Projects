/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
draw_text(x+4,y,"Palette")
draw_text(x+24,y+20,"Edge")

draw_set_color(col1[0]);
draw_set_alpha(col1[1]);
draw_line(x+40,y+45,x+40,y+140)
draw_set_color(col2[0]);
draw_set_alpha(col2[1]);
draw_line(x+90,y+45,x+90,y+140)
draw_set_alpha(1);
draw_set_color(c_white);

if sprite_exists(sid)&&(field[10].act||field[11].act||field[12].act||field[13].act||field[14].act) {
xw=sprite_get_width(sid);
yh=sprite_get_height(sid);
var sprx=room_width-(xw+1);
var spry=y+220;
x1=real("0"+field[11].str)/xw;
y1=real("0"+field[12].str)/yh;
x2=real("0"+field[13].str)/xw;
y2=real("0"+field[14].str)/yh;

draw_sprite_stretched(sid,0,sprx,spry,xw,yh);

draw_rectangle(sprx+x1*xw,spry+y1*yh,sprx+x2*xw-1,spry+y2*yh-1,true);
}