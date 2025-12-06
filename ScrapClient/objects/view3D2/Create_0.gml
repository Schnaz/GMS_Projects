/// @description Setup & Prep fpr drawing 3D

//alpha test setup:
//This step can be skipped if there is no transparency or 
//if there is no interpolation between pixels. Decals and
//billboarded sprites need these steps to work properly.
gpu_set_alphatestenable(true);
//this turns on alpha testing. It makes it so that pixels
//with no alpha don't get drawn.
gpu_set_alphatestref(20);
//This sets the cut off for alpha testing. Interpolation
//can use slight alpha and shear off parts of sprites if
//this step is skipped.

//gpu_set_fog(true,c_black,49990,50010)

var x1=0;
var x2=0;
var y1=0;
var y2=0;
//var txc = sprite_get_uvs(TileWood, 0);

tsize=20;
z=0;
ang=90;
angz=30;
mag=-50000;
on=-1;
width=40;
height=40;

randomize();


for (var ix=0; ix<=width; ix+=1)
{
for (var iy=0; iy<=height; iy+=1)
{
gridz[ix][iy]=random_range(1,21);
}
}

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vf=vertex_format_end();

var txu = sprite_get_uvs(spr_space, 0);

vb=vertex_create_buffer();
vertex_begin(vb,vf);

for (var ix=0; ix<width; ix+=1)
{
for (var iy=0; iy<height; iy+=1)
{
x1=ix*tsize;
y1=iy*tsize;
x2=(ix+1)*tsize;
y2=(iy+1)*tsize;
vertex_add_point(vb,x1,y1,gridz[ix][iy],0,0,1,txu[0],txu[1],make_color_hsv(255,0,255-gridz[ix][iy]*10),1);
vertex_add_point(vb,x2,y1,gridz[ix+1][iy],0,0,1,txu[2],txu[1],make_color_hsv(255,0,255-gridz[ix+1][iy]*10),1);
vertex_add_point(vb,x1,y2,gridz[ix][iy+1],0,0,1,txu[0],txu[3],make_color_hsv(255,0,255-gridz[ix][iy+1]*10),1);

vertex_add_point(vb,x2,y1,gridz[ix+1][iy],0,0,1,txu[2],txu[1],make_color_hsv(255,0,255-gridz[ix+1][iy]*10),1);
vertex_add_point(vb,x1,y2,gridz[ix][iy+1],0,0,1,txu[0],txu[3],make_color_hsv(255,0,255-gridz[ix][iy+1]*10),1);
vertex_add_point(vb,x2,y2,gridz[ix+1][iy+1],0,0,1,txu[2],txu[3],make_color_hsv(255,0,255-gridz[ix+1][iy+1]*10),1);
}}

vertex_end(vb);



