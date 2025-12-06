/// @description Insert description here
// You can write your code in this editor
if page<3&&!keyboard_check_pressed(ord("L"))&&!talking
{

page=Next;
pos=0;
Text=string_copy(Dialogue[page,0],3,string_length(Dialogue[page,0])-4);
preFace=Face;
Face=real(string_copy(Dialogue[page,0],1,2));
Next=real(string_copy(Dialogue[page,0],string_length(Dialogue[page,0])-1,2));
	
}