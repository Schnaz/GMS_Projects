/// @description Insert description here
// You can write your code in this editor
Dialogue[1,0]="00oh really? the quick brown fox jumps over the lazy dog00"
Dialogue[0,0]="01the quick brown fox jumps over the lazy dog01";

Text=string_copy(Dialogue[0,0],3,string_length(Dialogue[0,0])-4);
Face=real(string_copy(Dialogue[0,0],1,2));
Next=real(string_copy(Dialogue[0,0],string_length(Dialogue[0,0])-1,2));
