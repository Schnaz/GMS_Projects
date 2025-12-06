function vertex_add_rect(vbuff, p1, p2, p3, p4, np1, np2, np3, np4, txu, color, alpha){
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

if (!array_equals(p1,p2)) {
vertex_add_point(vb,p1[0],p1[1],p1[2],		np1[0],np1[1],np1[2],	txu[0],txu[1],	color,alpha);
vertex_add_point(vb,p2[0],p2[1],p2[2],		np2[0],np2[1],np2[2],	txu[2],txu[1],	color,alpha);
vertex_add_point(vb,p3[0],p3[1],p3[2],		np3[0],np3[1],np3[2],	txu[0],txu[3],	color,alpha);
}
if (!array_equals(p3,p4)) {
vertex_add_point(vb,p3[0],p3[1],p3[2],		np3[0],np3[1],np3[2],	txu[2],txu[3],	color,alpha);
vertex_add_point(vb,p4[0],p4[1],p4[2],		np4[0],np4[1],np4[2],	txu[0],txu[3],	color,alpha);
vertex_add_point(vb,p1[0],p1[1],p1[2],		np1[0],np1[1],np1[2],	txu[2],txu[1],	color,alpha);
}
}