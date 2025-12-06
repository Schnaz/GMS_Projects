/// @description Insert description here
// You can write your code in this editor
rep=0;
x=0;
y=0;
z=0;
mirr=1;
start="body";
bstr="body head < m uarm larm < < m uleg lleg < < <"
//bstr="body head < m uarm < m uleg < <"

//"body head < m uarm larm < < m uleg lleg < < <"
//"body > head m uarm > larm < m uleg > lleg"
//array_foreach wont work
//this wont work... every time I lower the scope I am left unable to proceed
part={};
var barr=string_split(bstr," ");
var ba=[];
var me=self;
count=0;
var xw=1;
var pre="";
var av=0;
var suffarr=[];
var looparr=[];
var restart=[];
//loop array will work like this
//looparr=[name,name,name]
//this gives the part that is to be checked for to restart barr/change suffix
//suffarr=["r","r","l"]
//this will use string_concat_ext to add the whole thing to each name
//Rs will become Ls on reaching the looparr val, and Ls will be dropped on reaching looparr val

//Problems
//1: Joint data is not recieved
//2: Every model has the same name
//3: Every model has the same joint data
//4: every model is assigned the same buffer
do
{av=array_shift(barr)
switch(av)
{
case undefined:
break;
	
case "<":
var pat=array_pop(ba);
with(part[$ array_last(ba)]) array_push(path,pat)


//if array_length(looparr) {
if array_last(looparr)==array_last(ba) 
{
if array_pop(suffarr)=="r" 
{
array_push(suffarr,"l");
mirr=-mirr;
var acopy=array_pop(restart);
var _len = array_length(acopy);
array_copy(barr,0,acopy,0,_len)
} else array_pop(looparr);
}
break;

case "m":
array_push(looparr,array_last(ba));
array_push(suffarr,"r");
var acopy=[];
array_copy(acopy,0,barr,0,array_length(barr))
array_push(restart,acopy);
mirr=-mirr;
break;

default:
var nam=string_concat_ext(suffarr)+av;
struct_set(part, nam, {	x:0,y:0,z:0,yaw:0,pitch:0,roll:0,xscale:mirr,yscale:1,zscale:1,vb:0,jnt:[[0]],jn2:[0],});
with(struct_get(part,nam)) {loadpart(av); name=nam; path=[];};
array_push(ba,nam);
break;
}
} until(av=undefined)

/*
iswit=function(me,pre)
{
me.count+=1;
var av=me.barr[me.count];
switch(av)
{
case "<":
return(0);
case "m":
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
struct_set(part, av, me.struc);
with(struct_get(part,av))
{
name=pre+av;
loadpart(av);
while(iswit(me,pre)){};
array_push(other.path,name);
}
return(1);
}
};
*/


/*
loop=1;

struct_set(part, av, me.struc);
with(struct_get(part,av))
{
name=av;
me.count=0;
loadpart(av);
//this below isn't doing anything
while(other.loop) iswit(me,pre);
}
*/




//array_push(path,array_pop(ba));

//"body > head m uarm > larm < m uleg > lleg"
//Idea here is that m is for mirror and will act as shorthand for mirroring the following part
//and its decendants

/*
part={
body : {name:"body", path:["head","luarm","ruarm","luleg","ruleg"],},
//[
head : {name:"head", path:0},
luarm: {name:"uarm", path:["llarm"]},
//[
llarm: {name:"larm", path:0},
//]
ruarm: {name:"uarm", path:["rlarm"]},
//[
rlarm: {name:"larm", path:0},
//]
luleg: {name:"uleg", path:["llleg"]},
//[
llleg: {name:"lleg", path:0},
//]
ruleg: {name:"uleg", path:["rlleg"]},
//[
rlleg: {name:"lleg", path:0},
//]

};
*/


/*
so for reference
jnt=raw joint origin [a,b,c][x,y,z]
jn2=new joint origin [a,b,c][x,y,z]
path = [a,b,c][partname, jointtype] its the directions on how to proceed to the next branches
x,y,z,pitch,roll,yaw,xscale,yscale,zscale are all in the part struct along with the vertex buffer, vb.

How it works is that a bunch of structs get slotted into the part struct and fished out using struct_get
It needs to start with the base part and then extend from there
use string split to split apart a string of file names that is the assembly file, and read it.
? have a "-" sign before each part name that gets flipped I guess.
path array should be like this [a,b,c][partname, jointtype]

And there we have it.
Might want to have some batching on load, but this is where to start!

Initialize the assembly in the create event
*/


active=["",0];
//?
parts=0;
//?
//this is good^
matid=matrix_build_identity();
//good^
cmat=matid;
vb=0;
tt=0;
//this doesn't do anything^

/*
loadpart = function(namay)
{//load part and joint data
jnt=[[0]];
var buff=buffer_load(namay);
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
*/

///////////////////////////////////////////////////////////////////////////////////////////


/*
parti = function(namy,org)
{
with(struct_get(part, namy))
{
var mat = matrix_build(org[0],org[1],org[2],pitch,roll,yaw,xscale,yscale,zscale);
matrix_stack_push(mat)
//followed by
matrix_set(matrix_world, matrix_stack_top());
vertex_submit(vb, pr_trianglelist, -1);
//iterate through the model names in the "path" array using the same code as a method 
var ii=0;
if is_array(jnt) repeat(array_length(jnt))
{
jn2[ii]=matrix_transform_vertex(mat, jnt[ii][0], jnt[ii][1], jnt[ii][2]);
if is_array(path) parti(path[ii],jn2[ii]);
//this method should essentially run the above. This allows for a nested loop
}
matrix_stack_pop();
}
} 
*/

part.luarm.roll=-15;
part.ruarm.roll=-15;
part.llarm.pitch=-30;

//show_message_async(part);