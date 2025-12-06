//we are pushing a 3D array
//arr[]=level arr[][]=node arr[][][]=coordinate

//sin(0)
r=0;
x=0;
y=0;
z=0;
x2=oColmeshDemo221.x;
y2=oColmeshDemo221.y;
z2=oColmeshDemo221.z;

vb=vertex_create_buffer();
vertex_begin(vb,vf);

cm_member(64,32,128,10,1,1);


vertex_end(vb);

mat=matrix_build(0,0,0,0,0,0,1,-1,1);

buff=buffer_create_from_vertex_buffer(vb, buffer_grow, 1);
cm_add_buffer(LEVEL_COLMESH, buff, 36, mat);