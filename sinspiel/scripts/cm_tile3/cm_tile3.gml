function cm_tile3(xx, yy, zz, vb, s, txu, xup, yup, zup) {

var flip=zup+yup+xup;
var f=!(flip);

var xa=[0,s];
var ya=[0,s];
var zb=[0,0];
var za=zb;

var a=0;
var i=0;

if zup==0 {za=ya}
if yup!=0 {ya=zb; f=!f;}
if xup!=0 {a=1; ya=xa; xa=zb;}

var r0 =(i+0) %4;
var r1 =(i+1) %4;
var r2 =(i+2) %4;
var r3 =(i+3) %4;

vertex_add_point(vb,xa[f]+xx,ya[0+a*f]+yy,za[0]+zz,		xup,yup,zup,	txu[r0],txu[r3],	c_white,1);
vertex_add_point(vb,xa[!f]+xx,ya[0+a-a*f]+yy,za[0]+zz,	xup,yup,zup,	txu[r2],txu[r3],	c_white,1);
vertex_add_point(vb,xa[!f]+xx,ya[1-a*f]+yy,za[1]+zz,	xup,yup,zup,	txu[r2],txu[r1],	c_white,1);

vertex_add_point(vb,xa[!f]+xx,ya[1-a*f]+yy,za[1]+zz,	xup,yup,zup,	txu[r2],txu[r1],	c_white,1);
vertex_add_point(vb,xa[f]+xx,ya[1-a+a*f]+yy,za[1]+zz,	xup,yup,zup,	txu[r0],txu[r1],	c_white,1);
vertex_add_point(vb,xa[f]+xx,ya[0+a*f]+yy,za[0]+zz,		xup,yup,zup,	txu[r0],txu[r3],	c_white,1);
}