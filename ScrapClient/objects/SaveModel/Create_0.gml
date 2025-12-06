/// @description Insert description here
// You can write your code in this editor

stage=0;

text="save a part or model file";

meth=function()
{
var vn=vertex_get_number(ModelMaker.vb3);
var jn=ModelMaker.nj;
var buff=buffer_create(jn*3+1+vn*36,buffer_fixed,1);
buffer_write(buff,buffer_u8,jn);
var ii=0;
repeat(jn)
{
var i2=0;
repeat(3) {
buffer_write(buff,buffer_s8,ModelMaker.joint[ii][i2]);
i2++;
}
ii++;
}
buffer_copy_from_vertex_buffer(ModelMaker.vb3,0,vn,buff,jn*3+1)

var namay=get_save_filename_ext("GameMaker model file|*.gmf", "", "C:\Users\ahume\AppData\Local\ScrapClient", "Save a model here");
if (namay != "")
{
buffer_save(buff,namay)
}

buffer_delete(buff);
}





