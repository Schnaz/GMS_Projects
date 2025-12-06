/// @description Insert description here
// You can write your code in this editor
Sstring=string(room)+"0."+string(Tester.x)+"1."+string(Tester.y)+"2."+string(Tester.Hr)+string(Tester.C1)+string(Tester.C2)+string(Tester.Gn)+"3."+string_digits(string(Tester.Trigs));
Sbuff=buffer_create(2000,buffer_fixed,8);
buffer_write(Sbuff,buffer_text,Sstring);
buffer_save(Sbuff,"savedat");

instance_destroy(Tester);

buffer_delete(Sbuff);