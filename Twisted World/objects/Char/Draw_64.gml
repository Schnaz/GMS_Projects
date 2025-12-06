/// @description Insert description here
// You can write your code in this editor
if global.sw[0]
{
for (var ii=0; ii<hpmax; ii++)
{
draw_sprite_ext(inkframe,0,mult*(ii*24+16),mult*(224-16),mult,mult,0,c_white,1)
}

for (var ii=0; ii<hp; ii++)
{
draw_sprite_ext(inkfull,0,mult*(ii*24+16),mult*(224-16),mult,mult,0,c_white,1)
}
}

