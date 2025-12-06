// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_arr_point(){
/// @param vbuff
/// @param xx_yy_zz
/// @param nx_ny_nz
/// @param tx_ty
/// @param color_alpha

//new idea instead of whatever that is, I use this array
//[xx,yy,zz,nx,ny,nz,,tx,ty,color,alpha]

var vbuff=argument0;
var xx=argument1[0];
var yy=argument1[1];
var zz=argument1[2];
var nx=argument2[0];
var ny=argument2[1];
var nz=argument2[2];
var tx=argument3[0];
var ty=argument3[1];
var color=argument4[0];
var alpha=argument4[1];

vertex_position_3d(vbuff,xx,yy,zz);
vertex_normal(vbuff,nx,ny,nz);
vertex_texcoord(vbuff,tx,ty);
vertex_color(vbuff,color,alpha);
}