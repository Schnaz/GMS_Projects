/// @description Insert description here
// You can write your code in this editor
if !talking&&is_string(Dialogue[page,0])
{


if Actions[Next]!=0 {event_user(Actions[Next])};
if Next=99 {Dialogue=[[0]]; page=0; exit;} 

if array_length(Dialogue[page])>1&&opt=false {opt=array_length(Dialogue[page])-1; pos=0; exit;}
else opt=0;

page=Next;
pos=0;
Text=string_copy(Dialogue[page,0],3,string_length(Dialogue[page,0])-4);
preFace=Face;
Face=real(string_copy(Dialogue[page,0],1,2));
Next=real(string_copy(Dialogue[page,0],string_length(Dialogue[page,0])-1,2));
}

