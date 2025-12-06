/// @description Insert description here
// You can write your code in this editor
draw_self();
if act draw_set_color(c_white);
else
{draw_set_color(col);}
draw_rectangle(x,y,x+image_xscale,y+image_yscale,true);
var wid=(pos2-pos)*chw;
draw_sprite_ext(blinkyline,0,x+pos*chw,y,1+wid,1,0,col,0.5);
draw_text(x,y,str);
draw_set_color(c_white);




