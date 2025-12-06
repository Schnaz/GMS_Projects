/// @description Composite Ellipse
// You can write your code in this editor
var arrl=array_length(node)-1
var anga=round(point_direction(0,0,node[arrl-1][0],node[arrl-1][1]));
var angb=round(point_direction(0,0,node[arrl][0],node[arrl][1]));
var veca=round(point_distance(0,0,node[arrl-1][0],node[arrl-1][1]));
var vecb=round(point_distance(0,0,node[arrl][0],node[arrl][1]));

var run=angle_difference(angb, anga);
var rize=vecb-veca;
var flip=1;

var slice=16;
var ii=1;

var vec;
var ang;
var angd;
var vech=min(veca,vecb);

repeat(slice-1)
{
angd=(run/slice)*ii;
ang=anga+angd;
if ii<=slice/2
{
vec=veca*vech/sqrt(sqr(veca*dsin(angd))+sqr(vech*dcos(angd)));
}
else
{
vec=vecb*vech/sqrt(sqr(vecb*dsin(angd))+sqr(vech*dcos(angd)));
}
if flip array_insert(node,-ii,[-vec*dcos(ang)-rize*dcos(anga),vec*dsin(ang)+rize*dsin(anga),z])
else array_insert(node,-1,[vec*dcos(ang),-vec*dsin(ang),z])
ii++;
ni++;
}