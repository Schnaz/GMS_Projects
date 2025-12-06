/// @description Insert description here
// You can write your code in this editor
if !talking
{
pos=0;
if Next=00 {Dialogue=[[0]]; page=0; Side=0; preFace=0; Ctext=""; exit;} 
page=Next;

Text=string_copy(Dialogue[page,0],3,string_length(Dialogue[page,0])-4);
preFace=Face;
Face=real(string_copy(Dialogue[page,0],1,2));
Next=real(string_copy(Dialogue[page,0],string_length(Dialogue[page,0])-1,2));
}

