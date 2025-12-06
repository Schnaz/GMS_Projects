/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(Taho);

draw_text(0,0,string(pos));

draw_sprite_ext(Charray[Face,0],-talking,x-(128)*Side,y,Side,1,0,c_white,1);
draw_sprite_ext(Charray[preFace,0],0,x+(128)*Side,y,-Side,1,0,c_white,1);

if opt {

for (var i=0; i<opt; i++)
{
	draw_set_color(c_dkgrey);
draw_rectangle(x-98,y+2+11*i,x+98,y+12+11*i,1-abs(i-pos));
	draw_set_color(c_white);
draw_text_ext(x-96,y+2+11*i,string_copy(Dialogue[page,i+1],3,string_length(Dialogue[page,i+1])-4),10,sprite_width-16);
}
}
else draw_text_ext(x-96,y+2,Ctext,10,sprite_width-16);