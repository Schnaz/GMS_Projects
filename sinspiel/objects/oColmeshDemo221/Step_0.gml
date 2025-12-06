rx=matrix_transform_vertex(mat,1,0,0);
ry=matrix_transform_vertex(mat,0,1,0);
rz=matrix_transform_vertex(mat,0,0,1);

wx = keyboard_check(vk_right) - keyboard_check(vk_left);
wy = keyboard_check(vk_up) - keyboard_check(vk_down);
wz = keyboard_check(vk_home) - keyboard_check(vk_pageup);

var test=matrix_build(0,0,0,-wx,wy,wz,1,1,1);
charMat=matrix_multiply(charMat, test)
cm_collider_transform(collider, test, 1)

//gd=matrix_transform_vertex(gmat,0,0,1);

//-----------------------------------------------------
//	Verlet integration

fric = 1 - .1 * ground;
//var afric= 1 - 0.01;

//do friction when grounded
spdX = (x - prevX) * fric;
spdY = (y - prevY) * fric;
spdZ = (z - prevZ) * fric;

prevX = x;
prevY = y;
prevZ = z;

//-----------------------------------------------------
//	Controls
var jump = keyboard_check_pressed(vk_space);
var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("W")) - keyboard_check(ord("S"));
var l = keyboard_check(vk_space)-keyboard_check(vk_shift);
var r = keyboard_check(ord("Q")) - keyboard_check(ord("E"));
if (h != 0 && v != 0)
{	//If walking diagonally, divide the input vector by its own length
	var s = 1 / sqrt(2);
	h *= s;
	v *= s;
}

//-----------------------------------------------------
//	Accelerate
//acc = 0.1 + 0.4 * ground;
acc = 0.5;
//rotate result by 90 deg

if ground {
var xss=sign(charMat[8]);
var yss=sign(charMat[9]);
var zss=sign(charMat[10]);
spdX -= acc * (( v*mat[4]+h*mat[8]*yss)*charMat[9]+( v*mat[0]+h*mat[8]*zss)*charMat[10]);//+ry[0]*(-h*rx[1]-v*rz[1]));
spdY -= acc * ((-v*mat[4]+h*mat[0]*xss)*charMat[8]+(-v*mat[8]+h*mat[0]*zss)*charMat[10]);//+ry[0]*(v*rx[1]+h*rz[1]));
spdZ -= acc * ((-v*mat[0]-h*mat[4]*xss)*charMat[8]+( v*mat[8]-h*mat[4]*yss)*charMat[9]);
}
else
{
spdX-=0.1*( v*mat[10]+h*mat[8])//+l*mat[8]);
spdY-=0.1*( v*mat[2] +h*mat[0])//+l*mat[9]);
spdZ-=0.1*(-v*mat[6] -h*mat[4])//-l*mat[4]);
}
//spdX -= acc * (v*rz[2]-h*rx[2])
//spdY -= acc * (v*rx[2]+h*rz[2])

//gravity

spdX += (-0.5 + jump * ground * 12) * charMat[8];
spdY += (-0.5 + jump * ground * 12) * charMat[9];
spdZ += (-0.5 + jump * ground * 12) * charMat[10];
ground-=jump;
//-----------------------------------------------------
//	Apply movement
x += spdX;
y += spdY;
z += spdZ;

//-----------------------------------------------------
//	Apply the previous step's delta matrix
var D = cm_collider_get_delta_matrix(collider);
if (is_array(D))
{
	charMat[12] = x;
	charMat[13] = y;
	charMat[14] = z;
	charMat = matrix_multiply(charMat, D);
	prevX += charMat[12] - x;
	prevY += charMat[13] - y;
	prevZ += charMat[14] - z;
	x = charMat[12];
	y = charMat[13];
	z = charMat[14];
}

//-----------------------------------------------------
//	Avoid level geometry by stepping towards the target position
if cm_collider_step_towards(collider, LEVEL_COLMESH, x, y, z, CM_GROUP_SOLID)
{
	x = collider[CM.X];
	y = collider[CM.Y];
	z = collider[CM.Z];
}
ground = collider[CM.GROUND];

//-----------------------------------------------------
//	Check for collisions with triggers, and perform their collision functions if there is a collision
cm_collider_activate_triggers(collider, LEVEL_COLMESH, CM_GROUP_TRIGGER);

//-----------------------------------------------------
//	Put player in the middle of the map if it falls off
if (point_distance_3d(0,0,0,x,y,z) > 1024)
{
	//x = room_width / 2;
	//y = room_height / 2;
	x=0;
	y=0;
	z = 0;
	prevX = x;
	prevY = y;
	prevZ = z;
	collider[CM.X] = x;
	collider[CM.Y] = y;
	collider[CM.Z] = z;
}

//-----------------------------------------------------
//	Update character matrix
charMat[12] = x;
charMat[13] = y;
charMat[14] = z;
//charMat[0] += h * .2;
//charMat[1] -= v * .2;
cm_matrix_orthogonalize(charMat);

//-----------------------------------------------------
//	Move camera
//yaw += keyboard_check(vk_right) - keyboard_check(vk_left)

mouse_clear(mb_any);
var mx=0.5*window_mouse_get_delta_x();
var my=0.5*window_mouse_get_delta_y();

//+0.5*(mx*dsin(pitch));
//yaw+=0.5*(mx*dcos(roll)+my*dsin(roll))//*sign(dcos(pitch));
//pitch+=0.5*(my*dcos(roll)-mx*dsin(roll));

var a=0

roll+=r //+ mx*dsin(pitch)*dcos(roll) - my*dsin(yaw)*dsin(roll)
yaw+=mx*dcos(roll)+my*dsin(roll)
pitch+=my*dcos(roll)-mx*dsin(roll)

upx=0;
upy=0;
upz=1;

//upx=dsin(wy)*dcos(wx)
//upy=dsin(wy)*dsin(wx)
//upz=dcos(wy)

//if (abs(pitch>90)) {roll+=180; yaw+=180; pitch=180-pitch;}

yaw%=360;
pitch%=360;
roll%=360;


//roll*=0.8;

//var
//r+=(rxa[0]*upx+rxa[1]*upz+rxa[2]*upy);
r*=8;
if ground r+=16*(mat[8]*charMat[8]+mat[0]*charMat[9]-mat[4]*charMat[10]);


//mat=matrix_build(0,0,0,pitch,yaw,roll,1,1,1)
mat=matrix_multiply(mat, matrix_build(0,0,0,my,mx,r,1,1,1))

var xh= + height*charMat[8]
var yh= + height*charMat[9]
var zh= + height*charMat[10]
var d =-100;
global.camX = x -1 + xh //+ d*dcos(yaw)*dcos(pitch)*abs(upz) + d*dsin(pitch)*abs(upx) + d*dsin(yaw)*dcos(pitch)*abs(upy);
global.camY = y + yh //+ d*dsin(yaw)*dcos(pitch)*abs(upz) + d*dcos(yaw)*dcos(pitch)*abs(upx) + d*dsin(pitch)*abs(upy);
global.camZ = z + zh //+ d*dsin(pitch)*abs(upz) + d*dsin(yaw)*dcos(pitch)*abs(upx) + d*dcos(yaw)*dcos(pitch)*abs(upy);
camera_set_view_mat(view_camera[0], matrix_multiply(matrix_build_lookat(x+xh, y+yh, z+zh, global.camX, global.camY, global.camZ, 0, 0, 1), mat));


//var d = 20;
//global.camX = x + d * dcos(yaw) * dcos(pitch);
//global.camY = y + d * dsin(yaw) * dcos(pitch);
//global.camZ = z + d * dsin(pitch);
//camera_set_view_mat(view_camera[0], matrix_build_lookat(global.camX, global.camY, global.camZ, x, y, z, xup, yup, zup));
