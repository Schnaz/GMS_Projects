/// @description Insert description here
// You can write your code in this editor

if Hp=4 draw_set_color(c_lime);
if Hp=3 draw_set_color(c_yellow);
if Hp=2 draw_set_color(c_orange);
if Hp=1 draw_set_color(c_red);

draw_rectangle(bbox_left+1,bbox_top+1,bbox_right-1,bbox_bottom-1,true);

draw_set_color(c_white);
//draw_line(bbox_left,bbox_top,bbox_right,bbox_top);
//draw_line(bbox_left,bbox_bottom,bbox_right,bbox_bottom);
//draw_line(bbox_left,bbox_top,bbox_left,bbox_bottom);
//draw_line(bbox_right,bbox_top,bbox_right,bbox_bottom);