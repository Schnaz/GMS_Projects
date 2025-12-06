function vertex_add_point(vbuff, xx, yy, zz, nx, ny, nz, tx, ty, color, alpha){
/// @param vbuff
/// @param xx
/// @param yy
/// @param zz
/// @param nx
/// @param ny
/// @param nz
/// @param tx
/// @param ty
/// @param color
/// @param alpha

vertex_position_3d(vbuff,xx,yy,zz);
vertex_normal(vbuff,nx,ny,nz);
vertex_texcoord(vbuff,tx,ty);
vertex_color(vbuff,color,alpha);
}