/// @description Insert description here
// You can write your code in this editor

if array_length(joint[0])==3
{
var ii=0;
repeat(array_length(joint))
{
var nxyz=matrix_transform_vertex(mat, joint[ii][0], joint[ii][1], joint[ii][2]);
var xy=world2screen(nxyz[0],nxyz[1],nxyz[2],view3D.viewmat,view3D.projmat);
draw_sprite_ext(dragpoint,0,xy[0]-1,xy[1]-1,1,1,0,c_lime,1);
ii++
}
}