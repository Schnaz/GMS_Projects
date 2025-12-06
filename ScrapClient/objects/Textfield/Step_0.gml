/// @description Insert description here
// You can write your code in this editor


if act&&keyboard_string!="" {
if pos2!=pos
{
str=string_delete(str,min(pos,pos2)+1,abs(pos-pos2));
pos=min(pos,pos2);
pos2=pos;
}
str=string_insert(keyboard_string,str,pos+1);
pos+=string_length(keyboard_string);
pos2=pos;
keyboard_string="";
}