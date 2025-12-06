/// @description Insert description here
// You can write your code in this editor
if global.sw[21]||global.sw[22]||global.sw[23]||global.sw[24]
{
var istr=["none","gale","flame","bubble","tremor"];
for (var ii=spell+1; ii<=5; ii++)
{
if ii=5 {spell=0; ttip(istr[0]); exit;}
if global.sw[20+ii] {spell=ii; ttip(istr[spell]); exit;}
}
global.sw[69]=spell;
}





