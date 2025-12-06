/// @description Insert description here
// You can write your code in this editor

if view3D.viewmat!=undefined {

axy=world2screen(ax,ay,az,view3D.viewmat,view3D.projmat);

xx=dcos(ang)*vec+ax;
yy=dsin(ang)*vec+ay;

if act {
ang=floor(-point_direction(ax,ay,ModelMaker.fx,ModelMaker.fy));
//vec=point_distance(ax,ay,ModelMaker.fx,ModelMaker.fy);
}

xy=world2screen(xx,yy,z,view3D.viewmat,view3D.projmat);
x=xy[0];
y=xy[1];

ax=root.xx;
ay=root.yy;
az=root.z;
z=root.z;
}
