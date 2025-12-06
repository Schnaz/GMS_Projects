/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_dkgray);
for(var iy=(sprite_height/8); iy>0; iy-=1)
{
for(var ix=(sprite_width/8); ix>0; ix-=1)
{

draw_rectangle(bbox_left+1+(ix-1)*8,bbox_top+1+(iy-1)*8,bbox_left-2+ix*8,bbox_top-2+iy*8,true);

}
}


draw_set_color(c_white);
draw_rectangle(bbox_left+1,bbox_top+1,bbox_right-1,bbox_bottom-1,true);
//draw_line(bbox_left,bbox_top,bbox_right,bbox_top);
//draw_line(bbox_left,bbox_bottom,bbox_right,bbox_bottom);
//draw_line(bbox_left,bbox_top,bbox_left,bbox_bottom);
//draw_line(bbox_right,bbox_top,bbox_right,bbox_bottom);