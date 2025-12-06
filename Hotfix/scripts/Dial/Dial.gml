//Dial(Dialogue_array,Char_array,Actions_array

function Dial(){
with (instance_create_depth(128,224,0,Tbox))
{
Dialogue=argument0;
Charray=argument1;
Actions=argument2;
Init=other;
	
Text=string_copy(Dialogue[0,0],3,string_length(Dialogue[0,0])-4);

Face=real(string_copy(Dialogue[0,0],1,2));
	
Next=real(string_copy(Dialogue[0,0],string_length(Dialogue[0,0])-1,2));
	
}
}