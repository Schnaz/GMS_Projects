/// @description
size = 64;
z = 32;

pitch=0;
yaw=0;
roll=0;

var M = matrix_build_identity();

shape = cm_add(LEVEL_COLMESH, cm_dynamic(cm_aab(0, 0, 0, size, size, size), M, false));

//added
mat = matrix_build(x, y, z+100, 0, 0, 0, 1, 1, 1);