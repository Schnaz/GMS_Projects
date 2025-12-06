/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,0,x*mult,y*mult,mult,mult,0,c_white,1);
draw_set_font(Font);
//draw_text(0,0,string(pos));

draw_sprite_ext(Charray[Face,0],-talking,(x-(128)*Side)*mult,y*mult,Side*mult,mult,0,c_white,1);
draw_sprite_ext(Charray[preFace,0],0,(x+(128)*Side)*mult,y*mult,-Side*mult,mult,0,c_white,1);

if opt {

for (var i=0; i<opt; i++)
{
	draw_set_color(c_dkgrey);
draw_rectangle((x-98)*mult,(y+2+11*i)*mult,(x+98)*mult,(y+12+11*i)*mult,1-abs(i-pos));
	draw_set_color(c_white);
draw_text_ext((x-96)*mult,(y+2+11*i)*mult,string_copy(Dialogue[page,i+1],3,string_length(Dialogue[page,i+1])-4),10,mult*(sprite_width-16));
}
}
else draw_text_ext((x-96)*mult,(y+2)*mult,Ctext,10*mult,(sprite_width-16)*mult);





