// Inherit the parent event
// create model and collision for demo purposes
event_inherited();
s=32;
l=image_xscale;
w=image_yscale;
h=w;

xa=[0,l*s];
ya=[0,w*s];
za=[0,h*s];

globalvar vf;
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vf=vertex_format_end();

