/// @description Insert description here
// You can write your code in this editor
if instance_exists(Char) Char.stop=true;

depth=-1;
opt=0;
page=0;
Ctext="";
Text="";
Font=Taho;
talking=false;
pos=1;
Side=1;

preFace=0;

mult=1;
if os_browser!=browser_not_a_browser 
{
mult=3;
image_xscale=image_xscale*mult;
image_yscale=image_yscale*mult;
Font=Taho2;
}
alarm[0]=5;

