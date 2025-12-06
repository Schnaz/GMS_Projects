/// @description Insert description here
// You can write your code in this editor

stage=0;

text="automatically form a loop\nin the rib style";

meth=function()
{
if global.tool==2 global.tool=0;
else {global.tool=2; instance_create_layer(0,0,layer,Loopobj);}
}





