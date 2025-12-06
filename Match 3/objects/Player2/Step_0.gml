/// @description Insert description here
// You can write your code in this editor

mvx = gamepad_axis_value(cont, gp_axislh);
mvy = gamepad_axis_value(cont, gp_axislv);
mag=point_distance(0, 0, mvx, mvy);
if mag>0.2 {
ang=round(point_direction(0, 0, mvx, mvy)/90)*90;
ang=angle_difference(ang,0);
sprite_index=charry[(ang+180)/90];
}



if gamepad_button_check_pressed(cont, gp_shoulderl){
var ins=instance_position(x+16*dcos(ang),y-16*dsin(ang),Fellicon)
if ins with(ins) event_perform(ev_mouse, 4);
}

if gamepad_button_check_pressed(cont, gp_shoulderlb){
var ins=instance_position(x+16*dcos(ang),y-16*dsin(ang),Fellicon)
instance_destroy(ins,false);
//if ins.ir1<6
//ins.ir1+=1;
}

if !alarm[0]
{


mag=(mag)>0.99;
vx=round(dcos(ang)*mag);
vy=round(-dsin(ang)*mag);

//mvx=keyboard_check(vk_right)-keyboard_check(vk_left);
//mvy=keyboard_check(vk_down)-keyboard_check(vk_up);
if place_meeting(x+vx*16,y+vy*16,[Border,Spawner,Tile_ice]) {vx=0; vy=0}
//if place_meeting(x,y+vy*16,[Border,Spawner]) vy=0;
if vx!=0||vy!=0 {alarm[0]=16/mv; x+=vx*16; y+=vy*16;

} else {image_index=0;}
}
xpos+=vx*mv;
ypos+=vy*mv;
