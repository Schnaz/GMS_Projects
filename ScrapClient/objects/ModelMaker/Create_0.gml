/// @description Insert description here
// You can write your code in this editor

tt=0;

global.aclick=false;
global.tool=0;

keyboard_string="";

plane=0;
x=0;
y=0;
xd=0;
yd=0;
z=0;

fx=0;
fy=0;
fz=0;

node=[[]];
joint=[0];
ni=0;
nj=0;

//////MODE


arr=[0,0,0,0,0,0];

rea=[[0,1,2],[1,2,0],[2,0,1]];


//////Drawing a Cartesian Grid:
//number of gridlines
gridres=100;
//separation between gridlines
sep=8;
divy=8;
//iterating integer start
//var ii=-gridres/2;
//grid start
///var xi=sep*ii+x;
//gridline current value
//var xx=sep*ii+x;
//gridline final value
//var xf=xi+gridres*sep;


gridgen=function(res,maxsep,mindiv,axis)
{
vertex_begin(vb,view3D.vf);
var ii=-res/2;
var xi=maxsep*ii;
var xx=maxsep*ii;
var ax=[z,y,x];
var xarr=[[xx,xx,xi,-xi],[xi,-xi,xx,xx],[ax[axis],ax[axis],ax[axis],ax[axis]]];
var arx=[xarr[rea[axis][0]],xarr[rea[axis][1]],xarr[rea[axis][2]]];

repeat(res)
{
vertex_add_point(vb,arx[0][0],arx[1][0],arx[2][0],0,0,1,0,0,c_white,1);
vertex_add_point(vb,arx[0][1],arx[1][1],arx[2][1],0,0,1,0,0,c_white,1);
vertex_add_point(vb,arx[0][2],arx[1][2],arx[2][2],0,0,1,0,0,c_white,1);
vertex_add_point(vb,arx[0][3],arx[1][3],arx[2][3],0,0,1,0,0,c_white,1);

repeat(mindiv)
{
vertex_add_point(vb,arx[0][0],arx[1][0],arx[2][0],0,0,1,0,0,c_white,0.5);
vertex_add_point(vb,arx[0][1],arx[1][1],arx[2][1],0,0,1,0,0,c_white,0.5);
vertex_add_point(vb,arx[0][2],arx[1][2],arx[2][2],0,0,1,0,0,c_white,0.5);
vertex_add_point(vb,arx[0][3],arx[1][3],arx[2][3],0,0,1,0,0,c_white,0.5);
ii+=1/mindiv;
xx=maxsep*ii;
xarr=[[xx,xx,xi,-xi],[xi,-xi,xx,xx],[ax[axis],ax[axis],ax[axis],ax[axis]]];
arx=[xarr[rea[axis][0]],xarr[rea[axis][1]],xarr[rea[axis][2]]];
}

}
vertex_end(vb);
}

vb=vertex_create_buffer();

gridgen(gridres,sep,divy,plane);


//repeat(gridres)
//{
//vertex_add_point(vb,xx,xi,z-0.05,0,0,1,0,0,c_white,1);
//vertex_add_point(vb,xx,xf,z-0.05,0,0,1,0,0,c_white,1);
//vertex_add_point(vb,xi,xx,z-0.05,0,0,1,0,0,c_white,1);
//vertex_add_point(vb,xf,xx,z-0.05,0,0,1,0,0,c_white,1);

//repeat(divy)
//{
//vertex_add_point(vb,xx,xi,z,0,0,1,0,0,c_gray,1);
//vertex_add_point(vb,xx,xf,z,0,0,1,0,0,c_gray,1);
//vertex_add_point(vb,xi,xx,z,0,0,1,0,0,c_gray,1);
//vertex_add_point(vb,xf,xx,z,0,0,1,0,0,c_gray,1);
//ii+=1/divy;
//xx=sep*ii;
//}

//}


vb2=vertex_create_buffer();
vertex_begin(vb2,view3D.vf);

vertex_end(vb2);

//vb3=vertex_create_buffer();
//vertex_begin(vb3,view3D.vf);

//vertex_end(vb3);


vbs=[];

