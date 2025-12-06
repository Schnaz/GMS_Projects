/// @description Insert description here
// You can write your code in this editor
xplus=dcos(image_angle)*image_xscale;
yplus=-dsin(image_angle)*image_xscale;
roundx=16*round((x+xplus*16)/16)
roundy=16*round((y+yplus*16)/16)
if !place_meeting(roundx+xplus*8,roundy+xplus*8,Mudmed)&&collision_point(-dsin(-image_angle)+roundx+xplus*8,dcos(-image_angle)+roundy-yplus*8,[layer_tilemap_get_id("solidmap")],0,0)
{
with(instance_create_depth(roundx-xplus*8,roundy-yplus*8,depth-1,Mudsml)) {image_angle=other.image_angle; image_blend=other.image_blend}
}
if !place_meeting(x+xplus*4,y+yplus*4,[layer_tilemap_get_id("solidmap")])&&collision_point(-dsin(-image_angle)+roundx+xplus*8,dcos(-image_angle)+roundy-yplus*8,[layer_tilemap_get_id("solidmap")],0,0)
{
x+=xplus*Spd;
y+=yplus*Spd;
}
else {image_xscale=-image_xscale; Spd=random_range(0.2,1); image_speed=Spd;}

if alarm[1]>0
image_blend=make_color_rgb(255,255-alarm[1]*3,255-alarm[1]*3);
else image_blend=c_white;
