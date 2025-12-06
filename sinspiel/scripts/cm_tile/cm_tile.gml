function cm_tile(vb, n, s, ix, iy, txu, xup, yup, zup) {



var x1=ix*s
var x2=(ix+1)*s
var y1=iy*s
var y2=(iy+1)*s
var z1=-n*s/2
var z2=-n*s/2

vertex_add_point(vb,x1,y1,z2,		xup,yup,zup,	txu[0],txu[1],	c_white,1);
vertex_add_point(vb,x2,y1,z1,		xup,yup,zup,	txu[2],txu[1],	c_white,1);
vertex_add_point(vb,x1,y2,z1,		xup,yup,zup,	txu[0],txu[3],	c_white,1);

vertex_add_point(vb,x2,y2,z1,		xup,yup,zup,	txu[2],txu[3],	c_white,1);
vertex_add_point(vb,x1,y2,z2,		xup,yup,zup,	txu[0],txu[3],	c_white,1);
vertex_add_point(vb,x2,y1,z2,		xup,yup,zup,	txu[2],txu[1],	c_white,1);
}