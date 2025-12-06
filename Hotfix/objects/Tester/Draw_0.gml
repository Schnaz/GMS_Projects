/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y+16,string(Trigs[6]));
//draw_text(x,y+16,string(tl));

if chardrw
{
draw_sprite_ext(TBstand2, dr2, x, y-bup, dir, image_yscale, 0, c_white, 1);
draw_sprite_ext(TBstand, dr2, x, y-bup, dir, image_yscale, 0, Color1[C1], 1);

if Hr>0 draw_sprite_ext(Hair[Hr-1], dr2, x, y-bup, dir, image_yscale, 0, Color2[C2], 1);


if mv=true 
{
draw_sprite_ext(TLRstand, -1, x, y, dir, image_yscale, 0, c_white, 1);
}
else draw_sprite_ext(TLstand, dr2, x, y, dir, image_yscale, 0, c_white, 1);

switch (Gn)
{
case 0:
draw_sprite_ext(Gstandard, dr2, x+gb*dir, y-gup, dir, image_yscale, 0, c_white, 1);
break;
case 1:
draw_sprite_ext(Gstandard1, dr2, x+gb*dir, y-gup, dir, image_yscale, 0, c_white, 1);
break;
case 2:
draw_sprite_ext(Gstandard2, dr2, x+gb*dir, y-gup, dir, image_yscale, 0, c_white, 1);
break;
case 3:
draw_sprite_ext(Gspec1, dr2, x+gb*dir, y-gup, dir, image_yscale, 0, c_white, 1);
break;
case 4:
draw_sprite_ext(Gspec2, dr2, x+gb*dir, y-gup, dir, image_yscale, 0, c_white, 1);
break;
}
}
