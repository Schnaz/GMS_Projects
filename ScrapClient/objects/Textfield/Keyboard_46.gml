/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_delete)||alarm[0]<=0)&&act
{
if pos2!=pos
{
str=string_delete(str,min(pos,pos2)+1,abs(pos-pos2));
pos=min(pos,pos2);
pos2=pos;
}
else str=string_delete(str, pos+1, 1);
}



