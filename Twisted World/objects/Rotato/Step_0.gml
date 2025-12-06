/// @description Insert description here
// You can write your code in this editor
imang+=2*image_xscale;

if alarm[0]>0
{
rot=Char.ang;
if abs(Char.rot2)>180 Char.rot2-=360*sign(Char.rot2);
if abs(rot)>180 rot-=360*sign(rot);
rot+=(angle_difference(Char.rot2, rot))/5;

with(Char)
{
ang=other.rot;
camera_set_view_angle(view_get_camera(0),ang);
image_angle=-ang;
if place_meeting(x,y,layer_tilemap_get_id("solidmap")) {
for(var iang=0; iang<360;iang+=45) {
for(var ivec=0; ivec<16;ivec++) {
if !place_meeting(x+ivec*dcos(iang),y+ivec*dsin(iang),layer_tilemap_get_id("solidmap")) {x+=ivec*dcos(iang); y+=ivec*dsin(iang); exit;}
}
}
}
}
}

