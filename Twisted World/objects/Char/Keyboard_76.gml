/// @description Insert description here
// You can write your code in this editor

if global.sw[40]&&!stop&&!global.pause
{
ang-=1;
camera_set_view_angle(view_get_camera(0),ang);
image_angle=-ang;

if place_meeting(x,y,layer_tilemap_get_id("solidmap")) {
for(var iang=0; iang<360;iang+=90) {
for(var ivec=0; ivec<16;ivec++) {
if !place_meeting(x+ivec*dcos(iang),y+ivec*dsin(iang),layer_tilemap_get_id("solidmap")) {x+=ivec*dcos(iang); y+=ivec*dsin(iang); exit;}
}
}
}
}



