act=0;

anti=1;
side=[1, 1, 1, 1, 1, 1];
sides=[sTile, sTile, sTile, sTile, sTile, sTile];
//sides[[+x,-x],[+y,-y],[+z,-z]]

s=32;//tile size
l=image_xscale;
w=image_yscale;
h=1;
z=0;
reval = function() {
l*=32/s;
w*=32/s;
xa=[x,x+l*s];
ya=[y,y+w*s];
za=[z,z+h*s];
}
reval2 = function(xi,yi,zi) {
xa=[xa[0]+xi,xa[1]+xi];
ya=[ya[0]+yi,ya[1]+yi];
za=[za[0]+zi,za[1]+zi];
}
reval();

arx=[];
arx2=[];
ary=[];
ary2=[];
arz=[];
arz2=[];
//ready to be pushed into an array of bounds


boundfind = function() {
with(oBox) {
	var a = !anti;
	var ab= !other.anti;
	if self==other continue;
	
	if other.xa[ab]==xa[!a] {array_push(other.arx,[ya,za]);}
	if other.xa[!ab]==xa[a] {array_push(other.arx2,[ya,za]);}
	if other.ya[ab]==ya[!a] {array_push(other.ary,[xa,za]);}
	if other.ya[!ab]==ya[a] {array_push(other.ary2,[xa,za]);}
	if other.za[ab]==za[!a] {array_push(other.arz,[xa,ya]);}
	if other.za[!ab]==za[a] {array_push(other.arz2,[xa,ya]);}
	//show_message(arz);
	//show_message(arz2);
}
}

check_range = function(inx, iny, bounds){
	var b=false;
	if (array_length(bounds)!=0) {
		var i=0;
		repeat(array_length(bounds)) {
			b=b || ((bounds[i][0][1] > inx) && (inx >= bounds[i][0][0])) && ((bounds[i][1][1] > iny) && (iny >= bounds[i][1][0]));
			i++
			}
		}
	return !b;
}

sidegen = function(sprite, vb, xup, yup, zup) {
//generate side using hard coded sides function
//be sure to flip the normals if a=1
var check=xup+2*yup+4*zup;
var cd=!check;
check=log2(abs(check));
//for x yn & zn
//for y xn & zn
//for z xn & yn

var xw=(xa[1]-xa[0])
var yw=(ya[1]-ya[0])
var zw=(za[1]-za[0])
var xx=[arx,arx2];
var yy=[ary,ary2];
var zz=[arz,arz2];
if bool(anti) {xx=[xx[1],xx[0]]; yy=[yy[1],yy[0]]; zz=[zz[1],zz[0]]}

var arr=[[yw/s,zw/s,[ya[0],za[0]],xx],[xw/s,zw/s,[xa[0],za[0]],yy],[xw/s,yw/s,[xa[0],ya[0]],zz]]
arr=arr[check];

var txu = sprite_get_uvs(sprite, 0);
//if a {xup=-xup; yup=-yup; zup=-zup;}

	var iy = 0
	repeat(arr[1]) {
		
		var ix = 0
		repeat(arr[0]) {

			if check_range(arr[2][0]+ix*s,arr[2][1]+iy*s,arr[3][cd]) {
			//cm_tile3(xa[!cd&&xup], ya[!cd&&yup], za[!cd&&zup], vb, s, ix, iy, txu, xup, yup, zup)
			//cm_tile3(xa[bool(xup)]+!abs(xup)*ix*s, ya[bool(yup)]+abs(xup)*ix*s+abs(zup)*iy*s, za[bool(zup)]+!abs(zup)*iy*s, vb, s, 0, 0, txu, xup, yup, zup)
			cm_tile3(xa[bool(xup)]+!abs(xup)*ix*s, ya[bool(yup)]+abs(xup)*ix*s+abs(zup)*iy*s, za[bool(zup)]+!abs(zup)*iy*s, vb, s, txu, xup*anti, yup*anti, zup*anti)
			//sides++
			}
			ix++
		}
		iy++
	}
}

build = function(vb) {
boundfind();

//vb=vertex_create_buffer();
//vertex_begin(vb,vf);

if side[0] sidegen(sides[0], vb, 1, 0, 0);
if side[1] sidegen(sides[1], vb, -1, 0, 0);
if side[2] sidegen(sides[2], vb, 0, 1, 0);
if side[3] sidegen(sides[3], vb, 0, -1, 0);
if side[4] sidegen(sides[4], vb, 0, 0, 1);
if side[5] sidegen(sides[5], vb, 0, 0, -1);

//vertex_end(vb);

//buff=buffer_create_from_vertex_buffer(vb, buffer_grow, 1);
//vb2=0;

//cm_add_buffer(LEVEL_COLMESH, buff, 36);
//act=1;
}


