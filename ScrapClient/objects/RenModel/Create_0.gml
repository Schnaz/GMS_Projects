/// @description Insert description here
// You can write your code in this editor
//xyz=[-8,-8,1];
//nxyz=[-8,-8,1];

sg=1;
vb=0;
xx=0;
yy=0;
zz=0;
xrot=0;
yrot=0;
zrot=0;
xscale=1;
yscale=1;
zscale=1;
matid=matrix_build_identity();
mat=matid;
joint=[[0]];

/*
[torso,
	[shoulders,
		[upperarm,lowerarm,hand],
		[upperarm,lowerarm,hand]
	],
	[waist,    
		[upperleg,lowerleg,foot],
		[upperleg,lowerleg,foot]
	]
]

assign part of array to variable to make code infinite

I need 11 vertex buffers

use a method and place it within itself
to have it loop through every array
and store the world matrix for every translation

Each body part name will be its own struct
with vaules for:

bufferfile name		str
vertex buffer		vb
node num			int
node pos			[[x,y,z],[x,y,z],...]
angle				[xrot,yrot,zrot]

NOTE all bending limbs MUST bend in the y axis
*/




