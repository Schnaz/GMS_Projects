/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(Taho);
draw_text_ext(x-96,y+2,Ctext,10,sprite_width-16);
draw_sprite_ext(Faces[Face],-talking,x-(128)*Side,y,Side,1,0,c_white,1);
draw_sprite_ext(Faces[preFace],0,x+(128)*Side,y,-Side,1,0,c_white,1);