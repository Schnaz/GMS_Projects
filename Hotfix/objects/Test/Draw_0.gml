/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y+16,string(TT));



if mv=true 
{
draw_sprite_ext(TLRstand, -1, x, y, dir, 1, 0, c_white, 1);
}
else draw_sprite_ext(TLstand, dr2, x, y, dir, 1, 0, c_white, 1);





draw_sprite_ext(TBstand, dr2, x, y-bup, dir, 1, 0, c_white, 1);
if H=true draw_sprite_ext(THstand, dr2, x, y-bup, dir, 1, 0, c_white, 1);

draw_sprite_ext(Gstandard, dr2, x+gb*dir, y-gup, dir, 1, 0, c_white, 1);