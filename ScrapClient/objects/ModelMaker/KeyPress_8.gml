/// @description Insert description here
// You can write your code in this editor

switch(global.tool)
{
case 0:
break;
case 1:

if ni=0 exit;

var gone=array_pop(node);
ni--;

vertex_begin(vb2,view3D.vf);
var ii=0
repeat(ni)
{
vertex_add_point(vb2,node[ii][0],node[ii][1],node[ii][2],0,0,1,0,0,c_lime,1);
ii++;
}
vertex_end(vb2);

break;
case 2:
if ni=0 exit;

repeat(Loopobj.num)
{
var gone=array_pop(node);
ni--;
}

vertex_begin(vb2,view3D.vf);
var ii=0
repeat(ni)
{
vertex_add_point(vb2,node[ii][0],node[ii][1],node[ii][2],0,0,1,0,0,c_lime,1);
ii++;
}
vertex_end(vb2);
break;
case 3:
if nj=0 exit;

var gone=array_pop(joint);
nj--;
break;
}



