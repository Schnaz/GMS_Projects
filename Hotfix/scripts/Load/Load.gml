// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load(){
audio_stop_all();

if file_exists("savedat")
{
Lbuff=buffer_load("savedat");
Lstring=buffer_read(Lbuff,buffer_text);
P1=string_copy(Lstring,1,string_pos("0,",Lstring)-1);
P2=string_copy(Lstring,string_pos("0,",Lstring)+2,string_pos("1,",Lstring)-(string_pos("0,",Lstring)+2));
P3=string_copy(Lstring,string_pos("1,",Lstring)+2,string_pos("2,",Lstring)-(string_pos("1,",Lstring)+2));
P4=string_copy(Lstring,string_pos("2,",Lstring)+2,string_pos("3,",Lstring)-(string_pos("2,",Lstring)+2));
P5=string_delete(Lstring,1,string_pos("3,",Lstring)+1);
room=real(P1);


if instance_exists(Tester) instance_destroy(Tester);

with (instance_create_depth(real(P2),real(P3),100,Tester))
{
Hr=real(string_char_at(other.P4,1));
C1=real(string_char_at(other.P4,2));
C2=real(string_char_at(other.P4,3));
Gn=real(string_char_at(other.P4,4));
Inv[0]=real(string_char_at(other.P4,5));

dir=real(string_char_at(other.P4,6))-1;
image_yscale=real(string_char_at(other.P4,7))-1;

for (var i=string_length(other.P5)-1; i>=0; i--) Trigs[i]=real(string_char_at(other.P5,i+1));


}
buffer_delete(Lbuff);
}
}