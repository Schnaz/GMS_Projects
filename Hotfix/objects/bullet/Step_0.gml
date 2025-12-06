/// @description Insert description here
// You can write your code in this editor
depth+=1;
if T>=0 {repeat(Spd){

	y+=Vsp;
	x+=Hsp;

switch(dr2)
{
case 0:
x=x-dir;
T=T-sqrt(sqr(Hsp-dir)+sqr(Vsp));
break;
case 1:
x=x-dir;
y=y-image_yscale;
T=T-sqrt(sqr(Vsp-1)+sqr(Hsp-dir));
break;
case 2:
y=y-image_yscale;
T=T-sqrt(sqr(Vsp-1)+sqr(Hsp));
break;
case 3:
x=x-dir;
y=y+image_yscale;
T=T-sqrt(sqr(Vsp-1)+sqr(Hsp-dir));
break;
case 4:
y=y+image_yscale
T=T-sqrt(sqr(Vsp-1)+sqr(Hsp));
}

	if collision_circle(x, y-1, Siz, hittable, false, false) exit;
}}
else instance_destroy();

