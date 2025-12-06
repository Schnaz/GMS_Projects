/// @description Spiral
// You can write your code in this editor
var arrl=array_length(node)-1
var anga=round(point_direction(0,0,node[arrl-1][0],node[arrl-1][1]));
var angb=round(point_direction(0,0,node[arrl][0],node[arrl][1]));
var veca=round(point_distance(0,0,node[arrl-1][0],node[arrl-1][1]));
var vecb=round(point_distance(0,0,node[arrl][0],node[arrl][1]));

var run=angle_difference(angb, anga);
var rize=vecb-veca;

var slice=16;
var ii=1;


repeat(slice-1)
{
var ang=anga+(run/slice)*ii;
var vec=veca+(rize/slice)*ii;

array_insert(node,-1,[vec*dcos(ang),-vec*dsin(ang),z])
ii++;
ni++;
}