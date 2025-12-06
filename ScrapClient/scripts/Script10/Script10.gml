// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadpart(namay){
//load part and joint data
jnt=[[0]];
var buff=buffer_load(namay+".gmf");
var jn=buffer_read(buff,buffer_u8);
var ii=0;
repeat(jn)
{
var i2=0;
repeat(3)
{
jnt[ii][i2]=buffer_read(buff,buffer_s8);
i2++;
}
ii++;
}
var vn=round((buffer_get_size(buff)-(jn*3+1))/36);
vb=vertex_create_buffer_from_buffer_ext(buff,view3D.vf,jn*3+1,vn);
buffer_delete(buff)
}

/* Doesn't work... Will never work
function iswit(me,pre){
me.count+=1;
var av=me.barr[me.count];
switch(av)
{
case "<":
show_message_async(name+av+string(path)+" "+string(me.count))
me.loop=0;
break;
case "m":
show_message_async(name+av+string(path)+" "+string(me.count))
me.struc.xscale=-1;
pre="r";
var tcount=me.count;
iswit(me,pre);
me.count=tcount;
me.struc.xscale=1;
pre="l";
iswit(me,pre);
pre="";

break;
default:
show_message_async(name+av+string(path)+" "+string(me.count))
struct_set(me.part, av, me.struc);
with(struct_get(me.part,av))
{
show_message_async(name+av+string(path)+" "+string(me.count))
name=pre+av;
loadpart(av);
do {me.loop=1;
	iswit(me,pre);}
until(!me.loop);
array_push(other.path,name);
}
show_message_async(name+av+string(path)+" "+string(me.count))
break;
}
};
*/



function parti(namy,org,me){
with(struct_get(me.part, namy))
{
var mat = matrix_build(org[0],org[1],org[2],pitch,roll,yaw,xscale,yscale,zscale);
matrix_stack_push(mat)
//followed by
matrix_set(matrix_world, matrix_stack_top());
vertex_submit(vb, pr_trianglelist, -1);
//iterate through the model names in the "path" array using the same code as a method 
var ii=0;

if array_length(jnt[0])==3 repeat(array_length(jnt))
{
//jn2[ii]=matrix_transform_vertex(mat, jnt[ii][0], jnt[ii][1], jnt[ii][2]);
if array_length(path) parti(path[ii],jnt[ii],me);
//this method should essentially run the above. This allows for a nested loop
ii++
}
matrix_stack_pop();
}
} 
