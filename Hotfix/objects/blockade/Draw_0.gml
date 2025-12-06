/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_dkgray);
draw_line(x-1,y-1,x+sprite_width-1,y+sprite_height-1);
draw_line(x-1,y-1+sprite_height-1,x+sprite_width-1,y-1);


draw_set_color(c_maroon);
draw_rectangle(bbox_left+1,bbox_top+1,bbox_right-1,bbox_bottom-1,true);
draw_set_color(c_white);
//draw_line(bbox_left,bbox_top,bbox_right,bbox_top);
//draw_line(bbox_left,bbox_bottom,bbox_right,bbox_bottom);
//draw_line(bbox_left,bbox_top,bbox_left,bbox_bottom);
//draw_line(bbox_right,bbox_top,bbox_right,bbox_bottom);