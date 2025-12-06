/// @description Insert description here
// You can write your code in this editor

stage=0;

text="open a part or model file";

meth=function()
{
var namay=get_open_filename_ext("GameMaker model file|*.gmf", "", "C:\Users\ahume\AppData\Local\ScrapClient", "Open a saved file");
var joint=[[0]];
var buff=buffer_load(namay);
var jn=buffer_read(buff,buffer_u8);
var ii=0;
repeat(jn)
{
var i2=0;
repeat(3)
{
joint[ii][i2]=buffer_read(buff,buffer_s8);
i2++;
}
ii++;
}
var vn=round((buffer_get_size(buff)-(jn*3+1))/36);
///////////////////////////////////////////////////
if POM.val
{
RenModel.vb=vertex_create_buffer_from_buffer_ext(buff,view3D.vf,jn*3+1,vn);
RenModel.joint=joint;
}
else///////////////////////////////////////////////
{
var namy=filename_change_ext(filename_name(namay), "");

var omat;
with(Assembly)
{
if parts>0 {struct_get(part, active[0]).path[active[1]]=namy;
omat=matid//here is where you fix the thing
}
else {start=namy;
omat=matrix_build(100,0,0,0,0,0,1,1,1);
}

var struc={
vb : vertex_create_buffer_from_buffer_ext(buff,view3D.vf,jn*3+1,vn),
jnt : joint,
jn2 : joint,
path : array_create(jn,""),
name : namy,
mat : omat
}
struct_set(part, namy, struc);

parts++
}
}
///////////////////////////////////////////////////////
buffer_delete(buff);
}


