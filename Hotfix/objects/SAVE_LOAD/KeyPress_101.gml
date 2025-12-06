/// @description Insert description here
// You can write your code in this editor
Lbuff=buffer_load("savedat");
Lstring=buffer_read(Lbuff,buffer_text);
P1=string_copy(Lstring,1,string_pos("0.",Lstring)-1);
P2=string_copy(Lstring,string_pos("0.",Lstring)+2,string_pos("1.",Lstring)-(string_pos("0.",Lstring)+2));
P3=string_copy(Lstring,string_pos("1.",Lstring)+2,string_pos("2.",Lstring)-(string_pos("1.",Lstring)+2));
P4=string_copy(Lstring,string_pos("2.",Lstring)+2,string_pos("3.",Lstring)-(string_pos("2.",Lstring)+2));
P5=string_delete(Lstring,1,string_pos("2.",Lstring)+1);
room=real(P1);

with (instance_create_layer(real(P2),real(P3),layer,Tester))
{
Hr=real(string_char_at(other.P4,1));
C1=real(string_char_at(other.P4,2));
C2=real(string_char_at(other.P4,3));
Gn=real(string_char_at(other.P4,4));
}
buffer_delete(Lbuff);