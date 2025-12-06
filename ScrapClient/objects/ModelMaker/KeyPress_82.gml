/// @description 64 point sphere
// You can write your code in this editor
var res=16;
var rad=8;

var inc=360/res;
var ax=0;
var ay=0;

//
node[ni]=[resolve(rad*dsin(ay)*dcos(ax),10),resolve(rad*dsin(ay)*dsin(ax),10),resolve(rad*dcos(ay),10),Palette.col1,Palette.col2,Palette.edge];

vertex_begin(vb2,view3D.vf);
var ii=0
repeat(ni+1)
{
vertex_add_point(vb2,node[ii][0],node[ii][1],node[ii][2],0,0,1,0,0,c_lime,1);
ii++;
}
vertex_end(vb2);

ni++;
//
ay+=inc;

repeat(res/2-1)
{
repeat(res+1)
{
node[ni]=[resolve(rad*dsin(ay)*dcos(ax),10),resolve(rad*dsin(ay)*dsin(ax),10),resolve(rad*dcos(ay),10),Palette.col1,Palette.col2,Palette.edge];

vertex_begin(vb2,view3D.vf);
ii=0
repeat(ni+1)
{
vertex_add_point(vb2,node[ii][0],node[ii][1],node[ii][2],0,0,1,0,0,c_lime,1);
ii++;
}
vertex_end(vb2);

ni++;
ax-=inc
}
ax=0;
ay+=inc;
}

//
node[ni]=[resolve(rad*dsin(ay)*dcos(ax),10),resolve(rad*dsin(ay)*dsin(ax),10),resolve(rad*dcos(ay),10),Palette.col1,Palette.col2,Palette.edge];

vertex_begin(vb2,view3D.vf);
ii=0
repeat(ni+1)
{
vertex_add_point(vb2,node[ii][0],node[ii][1],node[ii][2],0,0,1,0,0,c_lime,1);
ii++;
}
vertex_end(vb2);

ni++;
//