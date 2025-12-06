/// @description Insert description here
// You can write your code in this editor

//instance_create_depth(fx,fy,fz,Dot)

if global.aclick exit;



//setpoint
switch(global.tool)
{
case 0:
break;
case 1:
node[ni]=[round(fx),round(fy),round(fz),Palette.col1,Palette.col2,Palette.edge];

vertex_begin(vb2,view3D.vf);
var ii=0
repeat(ni+1)
{
vertex_add_point(vb2,node[ii][0],node[ii][1],node[ii][2],0,0,1,0,0,c_lime,1);
ii++;
}
vertex_end(vb2);

ni++;
break;
case 2:
break;
case 3:
joint[nj]=[round(fx),round(fy),round(fz)]

nj++;
break;
}