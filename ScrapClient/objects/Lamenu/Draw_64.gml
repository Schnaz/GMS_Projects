/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_gray);
draw_rectangle(x+1,y,bbox_right-1,bbox_bottom-1,true)
draw_set_color(c_white);

draw_text(x,bbox_bottom,string(sel));