//we are pushing a 3D array
//arr[]=level arr[][]=node arr[][][]=coordinate

//sin(0)
r=0;
x=0+64*4;
y=0;
z=0;
x2=oColmeshDemo221.x;
y2=oColmeshDemo221.y;
z2=oColmeshDemo221.z;

var res=16;
var inc=360/res;
var ang1=0; //angle around z axis
var ang2=0; //angle alond z axis
var c1=0;
var c2=0;
color=c_black;

arr=[];

repeat (res/2+1) 
{
	array_push(arr,[]);
	repeat (res)
		{
			array_push(arr[c2], [dcos(ang1)*dsin(ang2),dsin(ang1)*dsin(ang2), dcos(ang2)]);
			ang1+=inc;
		}
	ang1=0;
	ang2+=inc;
	c1=0;
	c2++;
}
c2=0;

vb=vertex_create_buffer();
vertex_begin(vb,vf);

repeat (res/2) 
{
	repeat (res)
		{
			vertex_add_rect(vb, arr[c2][c1%res], arr[c2][(c1+1)%res], arr[c2+1][(c1+1)%res], arr[c2+1][c1%res], arr[c2][c1%res], arr[c2][(c1+1)%res], arr[c2+1][(c1+1)%res], arr[c2+1][c1%res], [0,0,0,0], color, 1)
			c1++
		}
	c1=0;
	c2++;
	if c2>0 color=c_green;
	if c2>1 color=c_white;
}
color=c_white;


vertex_end(vb);

mat=matrix_build(0,0,0,0,0,0,64,-64,64);

//buff=buffer_create_from_vertex_buffer(vb, buffer_grow, 1);
//cm_add_buffer(LEVEL_COLMESH, buff, 36, mat, 1);