/// @description Insert description here
// You can write your code in this editor

if air 
{
for (var ii=0; ii<7;ii++)
draw_sprite_ext(sprite_index,image_index-ii,last[ii][0],last[ii][1],image_xscale,image_xscale,last[ii][2],c_white,1-0.1*ii);
	draw_self();
}
else {



col=make_color_rgb(255,255*alarm[1]/tiks,0);
draw_set_color(col)
draw_circle(x,y,image_xscale*4,false);
draw_set_color(c_white);


}




