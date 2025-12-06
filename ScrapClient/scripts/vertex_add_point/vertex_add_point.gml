// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_add_point(){
/// @param vbuff
/// @param xx
/// @param yy
/// @param zz
/// @param nx
/// @param ny
/// @param nz
/// @param tx
/// @param ty
/// @param color
/// @param alpha

var vbuff=argument0;
var xx=argument1;
var yy=argument2;
var zz=argument3;
var nx=argument4;
var ny=argument5;
var nz=argument6;
var tx=argument7;
var ty=argument8;
var color=argument9;
var alpha=argument10;

vertex_position_3d(vbuff,xx,yy,zz);
vertex_normal(vbuff,nx,ny,nz);
vertex_texcoord(vbuff,tx,ty);
vertex_color(vbuff,color,alpha);
}