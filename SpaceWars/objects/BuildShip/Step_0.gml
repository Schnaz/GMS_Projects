/// @description Insert description here
// You can write your code in this editor


if Tcam {
if gamepad_axis_value(Pnum-1, gp_axisrh)!=0 || gamepad_axis_value(Pnum-1, gp_axisrv)!=0 {ANG=-90+point_direction(0,0,gamepad_axis_value(Pnum-1, gp_axisrh),gamepad_axis_value(Pnum-1, gp_axisrv))};
Camax=phy_position_x-(global.Sph/4)*sin(degtorad(-phy_rotation-ANG));
Camay=phy_position_y-(global.Sph/4)*cos(degtorad(-phy_rotation-ANG));
if gamepad_button_check_pressed(Pnum-1,gp_stickr) {ANG=0; Tcam=false;};
}
else
{
Camax=phy_position_x-(global.Sph/4)*sin(degtorad(-phy_rotation));
Camay=phy_position_y-(global.Sph/4)*cos(degtorad(-phy_rotation));
if gamepad_button_check_pressed(Pnum-1,gp_stickr) Tcam=true;
}

camera_set_view_angle(Cama,phy_rotation+ANG)
camera_set_view_pos(Cama, Camax-(global.Spw/2), Camay-(global.Sph/2))

if ready=false
{
//select
if gamepad_button_check_pressed(Pnum-1,gp_padd)
{
	audio_play_sound(dotsnd,0,0);
Cvalue+=1;
};
if gamepad_button_check_pressed(Pnum-1,gp_padu)
{
		audio_play_sound(dotsnd,0,0);
Cvalue-=1;
};



if Cvalue>=array_length(Arrayvar[Bstep][0]) Cvalue=0;
if Cvalue<0 Cvalue=(array_length(Arrayvar[Bstep][0])-1);
Eval[Bstep]=Cvalue;

//ok and cancel
if gamepad_button_check_pressed(Pnum-1,gp_padr)
{



audio_play_sound(setsnd,0,0);

if Bstep=3||Bstep=7
{
if Eval[Bstep]<10 Bstep+=1;
}

if Bstep=10 ready=true;
else Bstep+=1;

Cvalue=Eval[Bstep];
if Bstep<3 Hval[Bstep]=true;
};


if gamepad_button_check_pressed(Pnum-1,gp_padl)&&Bstep
{
		audio_play_sound(bopsnd,0,0);

if Bstep=5||Bstep=9
{
if Eval[Bstep-2]<10 Bstep-=1;
}
		
Bstep-=1;
Cvalue=Eval[Bstep];
};
}
else {if gamepad_button_check_pressed(Pnum-1,gp_padl) {ready=false; audio_play_sound(bopsnd,0,0);}}
//stuff
Xvel=phy_linear_velocity_x;
Yvel=phy_linear_velocity_y;


//switch(Bstep)
//{
//	case 1:
//	if Cvalue>=array_length(Shipbuild.ShipDrive[0]) Cvalue=0;
//	if Cvalue<0 Cvalue=(array_length(Shipbuild.ShipDrive[0])-1);
//	Edrive=Cvalue;
//	break;
//	case 2:
//	if Cvalue>=array_length(Shipbuild.ShipTurn[0]) Cvalue=0;
//	Eturn=Cvalue;
//	break;
//	case 3:
//	if Cvalue>=array_length(Shipbuild.ShipBrake[0]) Cvalue=0;
//	Ebrake=Cvalue;
//	break;
//}
switch(Eval[0])
{
case 0:
phy_angular_velocity+=gamepad_axis_value(Pnum-1, gp_axislh);
break;
case 1:
phy_rotation+=gamepad_axis_value(Pnum-1, gp_axislh);
break;
}


if Hval[1] {
switch(Eval[1])
{
case 0:
physics_apply_local_force(0,0,0,-0.05*gamepad_button_check(Pnum-1, gp_shoulderlb));
break;
case 1:

phy_position_x+=10*cos(degtorad(phy_rotation-90))*gamepad_button_check(Pnum-1, gp_shoulderlb);
phy_position_y+=10*sin(degtorad(phy_rotation-90))*gamepad_button_check(Pnum-1, gp_shoulderlb);

break;
case 2:
Ecool+=gamepad_button_check(Pnum-1, gp_shoulderlb);
if gamepad_button_check_released(Pnum-1, gp_shoulderlb) {physics_apply_local_force(0,0,0,-0.09*Ecool); Ecool=0;};

break;
}
}

if Hval[2] {
switch(Eval[2])
{
case 0:	
phy_linear_damping=2*gamepad_button_check(Pnum-1, gp_shoulderl);
phy_angular_damping=2*gamepad_button_check(Pnum-1, gp_shoulderl);
break;	
case 1:	
if round(phy_linear_velocity_x*5)!=0 {physics_apply_force(phy_com_x,phy_com_y,-0.1*sign(phy_linear_velocity_x)*gamepad_button_check(Pnum-1, gp_shoulderl),0);}
else phy_linear_velocity_x=0;
if round(phy_linear_velocity_y*5)!=0 {physics_apply_force(phy_com_x,phy_com_y,0,-0.1*sign(phy_linear_velocity_y)*gamepad_button_check(Pnum-1, gp_shoulderl));}
else phy_linear_velocity_y=0;
if round(phy_angular_velocity*2)!=0 {phy_angular_velocity-=1*sign(phy_angular_velocity)*gamepad_button_check(Pnum-1, gp_shoulderl);}

break;
case 2:
if gamepad_button_check(Pnum-1, gp_shoulderl) {
phy_linear_velocity_x=0;
phy_linear_velocity_y=0;
phy_angular_velocity=0;
}
break;
case 3:
if gamepad_button_check(Pnum-1, gp_shoulderl) {
Angdiff=dcos(angle_difference(phy_rotation-90, darctan2(phy_linear_velocity_y,phy_linear_velocity_x)))*point_distance(0,0,phy_linear_velocity_x,phy_linear_velocity_y);
phy_linear_velocity_x=Angdiff*dsin(phy_rotation);
phy_linear_velocity_y=-Angdiff*dcos(phy_rotation);

phy_angular_damping=0.5+0.0001*Angdiff;
phy_linear_damping=0.05;
} else {
phy_linear_damping=0;
phy_angular_damping=0;
}
break;
case 4:
if gamepad_button_check(Pnum-1, gp_shoulderl) {
Angdiff=dcos(angle_difference(phy_rotation-180, darctan2(phy_linear_velocity_y,phy_linear_velocity_x)))*point_distance(0,0,phy_linear_velocity_x,phy_linear_velocity_y);
phy_linear_velocity_x=Angdiff*dsin(phy_rotation-90);
phy_linear_velocity_y=-Angdiff*dcos(phy_rotation-90);

phy_angular_damping=0.5+0.0001*Angdiff;
phy_linear_damping=0.05;
} else {
phy_linear_damping=0;
phy_angular_damping=0;
}
break;
}
}

if gamepad_button_check(Pnum-1,gp_shoulderrb) Shootn(0);
if gamepad_button_check(Pnum-1,gp_shoulderr) Shootn(1);

//if Bstep>2&&gamepad_button_check(Pnum-1,gp_shoulderrb)&&cool1 {
//switch(Eval[3])
//{
//case 0:	
//with instance_create_depth(x,y,depth,SBullet) {
	
//	audio_play_sound(ditsnd,0,0);
	
//	phy_rotation=other.phy_rotation+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,-0.01-random(0.002));
//	Eload=other.Eval[6];
//}
//cool1=-2;
//break;	
//case 1:	
//repeat (20) {with instance_create_depth(x,y,depth,SBullet) {
	
//	audio_play_sound(datsnd,0,0);
	
//	phy_rotation=other.phy_rotation+random(5)-2.5+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,-0.01-random(0.002));
//	Eload=other.Eval[6];
//	}
//}
//cool1=-59;
//break;
//case 2:
//with instance_create_depth(x,y,depth,SBullet) {

//	audio_play_sound(datsnd,0,0);
	
//	phy_rotation=other.phy_rotation+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_remove_fixture(self,ball);
//	physics_fixture_set_density(ball,5);
//	physics_fixture_bind(ball,self);
//	physics_apply_local_impulse(0,0,0,-1);
//	Eload=other.Eval[6];
//}
//cool1=-119;
//break;
//case 3:
//with instance_create_depth(x,y,depth,MBullet) {

//	audio_play_sound(ditsnd,0,0);
	
//	phy_rotation=other.phy_rotation+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,-0.05);
//	Eload=other.Eval[6];
//}
//cool1=-14;
//break;
//case 4:
//with instance_create_depth(x,y,depth,MBullet) {

//	audio_play_sound(ditsnd,0,0);
	
//	phy_rotation=other.phy_rotation+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,-0.05);
//	Eload=other.Eval[6];
//}
//cool1=-4;
//cool11+=1;
//if cool11>3 {cool1=-59; cool11=0;}
//break;
//case 5:	
//with instance_create_depth(x,y,depth,MBullet) {

//	audio_play_sound(ditsnd,0,0);
	
//	phy_rotation=other.phy_rotation+90+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,-0.05);
//	Eload=other.Eval[6];
//}
//with instance_create_depth(x,y,depth,MBullet) {

//	audio_play_sound(ditsnd,0,0);
	
//	phy_rotation=other.phy_rotation-90+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,-0.05);
//	Eload=other.Eval[6];
//}
//cool1=-19;
//break;	
//case 6:	
//with instance_create_depth(x,y,depth,MBullet) {

//	audio_play_sound(ditsnd,0,0);
	
//	phy_rotation=other.phy_rotation+other.ANG+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,-0.05);
//	Eload=other.Eval[6];
//}
//cool1=-19;
//break;
//case 7:
//with instance_create_depth(x,y,depth,BBullet) {

//	audio_play_sound(datsnd,0,0);
	
//	phy_rotation=other.phy_rotation+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,-0.1);
//	Eload=other.Eval[6];
//}
//physics_apply_local_impulse(0,0,0,0.05);
//cool1=-59;
//break;
//case 8:
//with instance_create_depth(x,y,depth,BBullet) {

//	audio_play_sound(ditsnd,0,0);
	
//	phy_rotation=other.phy_rotation+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,0);
//	Eload=other.Eval[6];
//	Cool=60;
//}
//cool1=-29;
//break;
//case 9:
//with instance_create_depth(x,y,depth,BBullet) {

//	audio_play_sound(datsnd,0,0);
	
//	phy_rotation=other.phy_rotation+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,0.1);
//	Eload=other.Eval[6];
//}
//physics_apply_local_impulse(0,0,0,-0.05);
//cool1=-59;
//break;
//case 10:
//with instance_create_depth(x,y,depth,Rocket) {
//audio_play_sound(wshsnd,0,0)

	
//	phy_rotation=other.phy_rotation+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,0.01);
//	Eload=other.Eval[6];
//}
//cool1=-19;
//break;	
//case 11:
//with instance_create_depth(x,y,depth,Rocket) {
//audio_play_sound(wshsnd,0,0)

	
//	phy_rotation=other.phy_rotation+other.ANG+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0,0.01);
//	Eload=other.Eval[6];
//}
//cool1=-24;
//break;
//case 12:
//with instance_create_depth(x,y,depth,Rocket) {
//audio_play_sound(wshsnd,0,0)

	
//	phy_rotation=other.phy_rotation+5+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,-0.01,0.01);
//	Eload=other.Eval[6];
//}
//with instance_create_depth(x,y,depth,Rocket) {


	
//	phy_rotation=other.phy_rotation-5+other.Eval[5]*(random(2)-1);
//	phy_speed_x=other.phy_speed_x;
//	phy_speed_y=other.phy_speed_y;
//	phy_angular_velocity=other.phy_angular_velocity;
//	physics_apply_local_impulse(0,0,0.01,0.01);
//	Eload=other.Eval[6];
//}
//cool1=-29;
//break;
//}
//}

//switch(Egun2)
//{
//case 0:	
//break;	
//case 1:	
//break;
//case 2:
//break;
//case 3:
//break;
//case 4:
//break;
//case 5:	
//break;	
//case 6:	
//break;
//case 7:
//break;
//case 8:
//break;
//case 9:
//break;
//case 10:	
//break;	
//case 11:	
//break;
//case 12:
//break;
//}
cool[0]+=1;
cool[1]+=1;