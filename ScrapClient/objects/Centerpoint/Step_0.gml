/// @description Insert description here
// You can write your code in this editor

if view3D.viewmat!=undefined {

axy=world2screen(ax,ay,az,view3D.viewmat,view3D.projmat);

if act {
//ang=floor(-point_direction(ax,ay,ModelMaker.fx,ModelMaker.fy));
ax=ModelMaker.fx;
ay=ModelMaker.fy;
az=ModelMaker.fz;
}

x=axy[0];
y=axy[1];

xx=ax;
yy=ay;
z=az;

az=ModelMaker.z;
}
