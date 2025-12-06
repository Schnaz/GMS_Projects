/// @description Insert description here
// You can write your code in this editor
num=8;
z=ModelMaker.z;
global.tool=2;
node=[0];

vb7=vertex_create_buffer();
vertex_begin(vb7,view3D.vf);

vertex_end(vb7);

cpoint=instance_create_depth(x,y,z,Centerpoint);
bara=instance_create_depth(x,y,z,Magbar);
barb=instance_create_depth(x,y,z,Magbar);
barc=instance_create_depth(x,y,z,Magbar);
bard=instance_create_depth(x,y,z,Magbar);
with(bara) {ang=0;  root=other.cpoint;}
with(barb) {ang=90; root=other.cpoint;}
with(barc) {ang=180;root=other.cpoint;}
with(bard) {ang=270;root=other.cpoint;}
baraa=instance_create_depth(x,y,z,Anglebar);
barba=instance_create_depth(x,y,z,Anglebar);
with(baraa) {ang=0;  root=other.barb;}
with(barba) {ang=-90; root=other.barc;}
/*
	
//origin
var xx;
var yy;
var zz;

var lang; //angle of the loop as a whole
var lriz; //angle of rize across loop

var a; //0   deg vec
var b; //90  deg vec
var c; //180 deg vec
var d; //270 deg vec

var anga; // egg along 0 deg
var angb; // egg along 90deg

var num;  // number of nodes in loop

*/

loopgen=function(xx,yy,zz,lang,lriz,a,b,c,d,anga,angb,num)
{
	

//4 part ellipse
var inc=360/num;
var ii=0;
var ang=180;
var aa
var bb
repeat(num+1)
{
switch(floor(ang/90))
{
case 0:
aa=a;
bb=b;

break;
case 1:
aa=c;
bb=b;

break;
case 2:
aa=c;
bb=d;

break;
case 3:
aa=a;
bb=d;

break;
}
var exy=[dcos(-ang)*aa,dsin(-ang)*bb,zz];
var egxy=[round((exy[0]*(1+exy[1]*dtan(-angb)*2/(a+c))+xx)*100)/100,round((exy[1]*(1+exy[0]*dtan(-anga)*2/(b+d))+yy)*100)/100,zz,Palette.col1,Palette.col2,Palette.edge];
node[ii]=egxy;
ang+=inc;
if ang>=360 ang-=360;
ii++;
//this needs to return lines nodes showing what the loop will look like
}

}


setpoints=function()
{
var ni=array_length(node);

vertex_begin(vb7,view3D.vf);
var ii=0
repeat(ni)
{
vertex_add_point(vb7,node[ii][0],node[ii][1],node[ii][2],0,0,1,0,0,c_lime,1);
ii++;
}
vertex_end(vb7);
}