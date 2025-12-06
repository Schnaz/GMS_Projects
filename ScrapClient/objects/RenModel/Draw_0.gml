/// @description Insert description here
// You can write your code in this editor

//xrot=pitch
//yrot=roll
//zrot=yaw

//order of operations z>x>y yaw,pitch,then roll 


/*
var mat1=matrix_build(view3D.x, view3D.y, view3D.z, 0, 0, 0, xscale, yscale, zscale);
var mat2=matrix_build(0, 0, 0, xrot, yrot, zrot, xscale, yscale, zscale);
var mat = matrix_multiply(mat1, mat2);
*/

matrix_set(matrix_world, mat);

//nxyz=matrix_transform_vertex(mat, xyz[0], xyz[1], xyz[2]);

if vb!=0 vertex_submit(vb, pr_trianglelist, -1);

matrix_set(matrix_world, matid);


