// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Save(){
Sstring=string(room)+"0,"+string(Tester.x)+"1,"+string(Tester.y)+"2,"+string(Tester.Hr)+string(Tester.C1)+string(Tester.C2)+string(Tester.Gn)+string(Tester.Inv[0])+string(Tester.dir+1)+string(Tester.image_yscale+1)+"3,"+string_digits(string(Tester.Trigs));
Sbuff=buffer_create(2000,buffer_fixed,8);
buffer_write(Sbuff,buffer_text,Sstring);
buffer_save(Sbuff,"savedat");

//instance_destroy(Tester);

buffer_delete(Sbuff);
}