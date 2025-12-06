/// @description Insert description here
// You can write your code in this editor
//image_angle+=rr*5;
image_xscale=1;
image_yscale=1;
//rr=random(360);

if !movex(xx) {xx=-xx; xon=true;}
if !movey(yy) {yy=-yy; yon=true;}

if xon {image_xscale=2; xon=false;}
if yon {image_yscale=2; yon=false;}