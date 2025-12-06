/// @description Insert description here
// You can write your code in this editor
//Side=Facep[Face];
Side=Charray[Face,1];

if is_string(Dialogue[page,0])
{
if y=-48 x=24*Side+128;
if y<0 y+=2;
else if !opt
{
if pos<string_length(Text) {pos+=1; talking=true;}
else talking=false;

Ctext=string_copy(Text,1,pos);



}
}
else if y>-48 y-=2;

if x!=24*Side+128 x+=2*Side;
if y=-48 instance_destroy();