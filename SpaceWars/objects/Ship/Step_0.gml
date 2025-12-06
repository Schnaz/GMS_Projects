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

//-1
if gamepad_button_check_pressed(Pnum-1,gp_padd)
{
	audio_play_sound(dotsnd,0,0);
Limit-=1;
};
//+1
if gamepad_button_check_pressed(Pnum-1,gp_padu)
{
	audio_play_sound(dotsnd,0,0);
Limit+=1;
};


//+10
if gamepad_button_check_pressed(Pnum-1,gp_padr)
{
	audio_play_sound(dotsnd,0,0);
Limit+=10
};

//-10
if gamepad_button_check_pressed(Pnum-1,gp_padl)&&Bstep
{
	audio_play_sound(dotsnd,0,0);
Limit-=10
};

//stuff
Xvel=phy_linear_velocity_x;
Yvel=phy_linear_velocity_y;


switch(Eval[0])
{
case 0:
phy_angular_velocity+=gamepad_axis_value(Pnum-1, gp_axislh);
break;
case 1:
phy_rotation+=gamepad_axis_value(Pnum-1, gp_axislh);
break;
}


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


if gamepad_button_check(Pnum-1,gp_shoulderrb) Shootn(0);
if gamepad_button_check(Pnum-1,gp_shoulderr) Shootn(1);

cool[0]+=1;
cool[1]+=1;
Age+=1;