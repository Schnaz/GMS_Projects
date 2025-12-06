globalvar vf;
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();
vf=vertex_format_end();

create = function() {

var xm=oMapgen.xa[1];
var ym=oMapgen.ya[1];
var zm=oMapgen.za[1];

vb=vertex_create_buffer();
vertex_begin(vb,vf);
var hold;
var hold2;
with (oBox) {
	reval();
	

	if x>=xm {hold=xa[0]-xm; xa[0]=xm-za[1]; za[1]=xa[1]-xm; xa[1]=xm-za[0]; za[0]=hold;}
	if x<0 {hold=xa[0]; xa[0]=za[0]; hold2=za[1]; za[1]=-hold; hold=xa[1]; xa[1]=hold2; za[0]=-hold;}
	if y>=ym {hold=ya[0]-ym; ya[0]=ym-za[1]; za[1]=ya[1]-ym; ya[1]=ym-za[0]; za[0]=hold;}
	if (y<0&&y>=-zm) {hold=ya[0]; ya[0]=za[0]; hold2=za[1]; za[1]=-hold; hold=ya[1]; ya[1]=hold2; za[0]=-hold;}
	if y<-zm {
		hold=-ya[0]-zm; ya[0]=-ya[1]-zm; ya[1]=hold;
		hold=zm-za[0]; za[0]=zm-za[1]; za[1]=hold; 
	}
	
	reval2(-xm/2, -ym/2, -zm/2);
}

with (oBox) build(other.vb);

vertex_end(vb);

buff=buffer_create_from_vertex_buffer(vb, buffer_grow, 1);

cm_add_buffer(LEVEL_COLMESH, buff, 36);

//with (oBox) instance_destroy();
}