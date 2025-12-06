/// @description Setup & Prep fpr drawing 3D

//////testing setup:

//alphatesting:
//This step prevents the fully transparent edges of sprites from
//being drawn over other models and sprites
gpu_set_alphatestenable(true);
//gpu_set_alphatestref(20);

//ztesting:
//These turn on depth in 3D keeping an object far off in the distance
//from being drawn over something close by.
gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

//////Setting up Vertex Format:

//In order to start drawing vertecies,
//we need to set up what information is being included in each Vertex.
//here we begin the format
vertex_format_begin();
//for x, y, and z coordinates
vertex_format_add_position_3d();
//for normal data (this is important for lighting!)
vertex_format_add_normal();
//for texture coordinates (allows us to put textures on the polys)
vertex_format_add_texcoord();
//for color
vertex_format_add_color();
//and this assigns the vertex format we set up to the variable vf
vf=vertex_format_end();



//variables for camera

x=0;
y=0;
z=0;
ang=90;
angz=30;
mag=-50;
camx=x-mag*dcos(ang)*dcos(angz);
camy=y-mag*dsin(ang)*dcos(angz);
camz=z+mag*dsin(angz);
fov=30;
ortho=-1;
cam=camera_get_active();
matid=matrix_build_identity();
viewmat=matid;
projmat=matid;


////////Drawing a Cartesian Grid:
////number of gridlines
//var gridres=100;
////separation between gridlines
//var sep=8;
//var divy=8;
////iterating integer start
//var ii=-gridres/2;
////grid start
//var xi=sep*ii+x;
////gridline current value
//var xx=sep*ii+x;
////gridline final value
//var xf=xi+gridres*sep;

//vb=vertex_create_buffer();
//vertex_begin(vb,vf);

//repeat(gridres)
//{
//vertex_add_point(vb,xx,xi,z-0.05,0,0,1,0,0,c_white,1);
//vertex_add_point(vb,xx,xf,z-0.05,0,0,1,0,0,c_white,1);
//vertex_add_point(vb,xi,xx,z-0.05,0,0,1,0,0,c_white,1);
//vertex_add_point(vb,xf,xx,z-0.05,0,0,1,0,0,c_white,1);

//repeat(divy)
//{
//vertex_add_point(vb,xx,xi,z,0,0,1,0,0,c_gray,1);
//vertex_add_point(vb,xx,xf,z,0,0,1,0,0,c_gray,1);
//vertex_add_point(vb,xi,xx,z,0,0,1,0,0,c_gray,1);
//vertex_add_point(vb,xf,xx,z,0,0,1,0,0,c_gray,1);
//ii+=1/divy;
//xx=sep*ii;
//}

////ii++;
////xx=sep*ii;
//}



//vertex_end(vb);


//////Drawing the Cylindrical Grid:

//This grid is drawn in Cylindrical Coordinates where
//r is the distance from the axis
//θ is the angle around the axis
//z is the distance along the axis







