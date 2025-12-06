/// @description Insert description here
// You can write your code in this editor

draw_set_font(Taho3)
draw_sprite_ext(spinnysquare,0,x*mult,y*mult,mult,mult,rr,c_white,1)
draw_set_color(c_black);
draw_rectangle((x-16)*mult,(y+16)*mult,(x+200-16)*mult,(y-16)*mult,false)
draw_set_color(c_white);
draw_text(x*mult,(y-12)*mult,title);
draw_set_font(Taho2)

if !act {
draw_set_color(c_black);
draw_rectangle((x-16)*mult,(y+16+64)*mult,(x+200-16)*mult,(y-16+64)*mult,false)
draw_set_color(c_white);
draw_text((x)*mult,(y+64)*mult,"please click to activate window");
}