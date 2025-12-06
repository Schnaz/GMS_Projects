// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shootn(argument0){
if Bstep>(2+4*argument0)&&cool[argument0] {
switch(Eval[3+4*argument0])
{
case 0:	
with instance_create_depth(x,y,depth,SBullet) {
	
	audio_play_sound(ditsnd,0,0);
	
	phy_rotation=other.phy_rotation+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.01-random(0.002));
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
cool[argument0]=-2;
break;	
case 1:	
repeat (20) {with instance_create_depth(x,y,depth,SBullet) {
	
	
	phy_rotation=other.phy_rotation+random(5)-2.5+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.01-random(0.002));
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
	}
}
audio_play_sound(datsnd,0,0);
cool[argument0]=-59;
break;
case 2:
with instance_create_depth(x,y,depth,SBullet) {

	audio_play_sound(datsnd,0,0);
	
	phy_rotation=other.phy_rotation+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_remove_fixture(self,ball);
	physics_fixture_set_density(ball,5);
	physics_fixture_bind(ball,self);
	physics_apply_local_impulse(0,0,0,-1);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
cool[argument0]=-119;
break;
case 3:
with instance_create_depth(x,y,depth,MBullet) {

	audio_play_sound(ditsnd,0,0);
	
	phy_rotation=other.phy_rotation+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.05);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
cool[argument0]=-14;
break;
case 4:
with instance_create_depth(x,y,depth,MBullet) {

	audio_play_sound(ditsnd,0,0);
	
	phy_rotation=other.phy_rotation+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.05);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
cool[argument0]=-4;
cooln[argument0]+=1;
if cooln[argument0]>3 {cool[argument0]=-59; cooln[argument0]=0;}
break;
case 5:	
with instance_create_depth(x,y,depth,MBullet) {

	audio_play_sound(ditsnd,0,0);
	
	phy_rotation=other.phy_rotation+90+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.05);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
with instance_create_depth(x,y,depth,MBullet) {

	audio_play_sound(ditsnd,0,0);
	
	phy_rotation=other.phy_rotation-90+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.05);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
cool[argument0]=-19;
break;	
case 6:	
with instance_create_depth(x,y,depth,MBullet) {

	audio_play_sound(ditsnd,0,0);
	
	phy_rotation=other.phy_rotation+other.ANG+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.05);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
cool[argument0]=-19;
break;
case 7:
with instance_create_depth(x,y,depth,BBullet) {

	audio_play_sound(datsnd,0,0);
	
	phy_rotation=other.phy_rotation+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,-0.1);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
physics_apply_local_impulse(0,0,0,0.05);
cool[argument0]=-59;
break;
case 8:
with instance_create_depth(x,y,depth,BBullet) {

	audio_play_sound(ditsnd,0,0);
	
	phy_rotation=other.phy_rotation+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,0);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
	Cool=60;
}
cool[argument0]=-29;
break;
case 9:
with instance_create_depth(x,y,depth,BBullet) {

	audio_play_sound(datsnd,0,0);
	
	phy_rotation=other.phy_rotation+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	phy_angular_velocity=other.phy_angular_velocity;
	physics_apply_local_impulse(0,0,0,0.1);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
physics_apply_local_impulse(0,0,0,-0.05);
cool[argument0]=-59;
break;
case 10:
with instance_create_depth(x,y,depth,Rocket) {
audio_play_sound(wshsnd,0,0)

	
	phy_rotation=other.phy_rotation+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	physics_apply_local_impulse(0,0,0,0.01);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
}
cool[argument0]=-19;
break;	
case 11:
with instance_create_depth(x,y,depth,Rocket) {
audio_play_sound(wshsnd,0,0)

	
	phy_rotation=other.phy_rotation+other.ANG+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	physics_apply_local_impulse(0,0,0,0.01);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
	Eammo=other.Eval[5+4*argument0];
}
cool[argument0]=-24;
break;
case 12:
with instance_create_depth(x,y,depth,Rocket) {
audio_play_sound(wshsnd,0,0)

	
	phy_rotation=other.phy_rotation+5+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	physics_apply_local_impulse(0,0,-0.01,0.01);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
	Eammo=other.Eval[5+4*argument0];
}
with instance_create_depth(x,y,depth,Rocket) {


	
	phy_rotation=other.phy_rotation-5+other.Eval[5+4*argument0]*(random(2)-1);
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
	physics_apply_local_impulse(0,0,0.01,0.01);
	Eload=other.Eval[6+4*argument0];
	Limit=other.Limit;
	Alim=other.Alim;
	Eammo=other.Eval[5+4*argument0];
}
cool[argument0]=-29;
break;
}
}
}