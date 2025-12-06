/// @description Insert description here
// You can write your code in this editor

for (var ix=0; ix<t; ix++)
{
for (var iy=0; iy<t; iy++)
{
var tt=(t-ix);
if tt>=4 tt=3;
draw_sprite_ext(tileout,tt,mult*(flip*(ix*16-iy*16)+ofst),mult*(flip*iy*16+ofst),mult,mult,0,c_white,1);
}
}




