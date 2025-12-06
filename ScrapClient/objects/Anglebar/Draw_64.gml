/// @description Insert description here
// You can write your code in this editor
image_blend=c_orange;
draw_set_color(c_orange);
draw_self();
draw_line(axy[0]-1,axy[1]-1,x-1,y-1);
draw_text(x,y,string(ang));
image_blend=c_white;
draw_set_color(c_white);



