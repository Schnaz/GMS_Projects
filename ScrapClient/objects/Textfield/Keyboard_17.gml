/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("C")) clipboard_set_text(string_copy(str,min(pos,pos2)+1,abs(pos-pos2)));
if keyboard_check_pressed(ord("V")) keyboard_string=clipboard_get_text();


