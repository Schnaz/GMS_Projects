/// @description Insert description here
// You can write your code in this editor

if on {act=true;
keyboard_string="";
if str!=""
{
var mx=mouse_x-x;
pos=min(string_length(str),round(mx/chw));
if !keyboard_check(vk_shift) pos2=pos;
}
} else {
act=false;
pos=0;
pos2=0;
}

