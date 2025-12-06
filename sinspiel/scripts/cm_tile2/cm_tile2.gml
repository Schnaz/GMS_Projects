function cm_tile2(vb, n, s, ix, iy, txu, xup, yup, zup) {

var flip=zup+yup+xup;
var f=!(flip);

var xa=[ix*s,(ix+1)*s];
var ya=[iy*s,(iy+1)*s];
var zb=[-n*s/2*flip,-n*s/2*flip];
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

vertex_add_point(vb,xa[f],ya[0+a*f],za[0],		xup,yup,zup,	txu[r0],txu[r3],	c_white,1);
vertex_add_point(vb,xa[!f],ya[0+a-a*f],za[0],	xup,yup,zup,	txu[r2],txu[r3],	c_white,1);
vertex_add_point(vb,xa[!f],ya[1-a*f],za[1],		xup,yup,zup,	txu[r2],txu[r1],	c_white,1);

vertex_add_point(vb,xa[!f],ya[1-a*f],za[1],		xup,yup,zup,	txu[r2],txu[r1],	c_white,1);
vertex_add_point(vb,xa[f],ya[1-a+a*f],za[1],	xup,yup,zup,	txu[r0],txu[r1],	c_white,1);
vertex_add_point(vb,xa[f],ya[0+a*f],za[0],		xup,yup,zup,	txu[r0],txu[r3],	c_white,1);
}