/// @description Insert description here
// You can write your code in this editor
xplus=dcos(-image_angle)*image_xscale/2;
yplus=dsin(-image_angle)*image_xscale/2;
if place_meeting(x+xplus*10,y+yplus*10,Mudmed)&&!place_meeting(x+xplus,y+yplus,[layer_tilemap_get_id("solidmap")])
{
x+=xplus*Spd;
y+=yplus*Spd;
}
else {image_xscale=-image_xscale; Spd=random_range(0.2,1); image_speed=Spd;}



