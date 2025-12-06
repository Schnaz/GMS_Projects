/// @description Insert description here
// You can write your code in this editor
if Age>20 {
for (var ii=0; ii<instance_number(Ship); ii++)
{
//if ii=(Pnum-1) continue;
var Dis=sqrt(abs(point_distance(phy_position_x,phy_position_y,Creator.Players[ii].phy_position_x,Creator.Players[ii].phy_position_y)));
var Ang=-ANG-phy_rotation-point_direction(phy_position_x,phy_position_y,Creator.Players[ii].phy_position_x,Creator.Players[ii].phy_position_y);
draw_circle(global.Spw/2+global.Spw*(Pnum-1)+Dis*dcos(Ang),global.Sph*(3/4)+Dis*dsin(Ang),3,true);

}}
draw_text(16+(global.Spw)*(Pnum-1),global.Sph-100,"Health:");
draw_text(128+(global.Spw)*(Pnum-1),global.Sph-100,string(HP));

draw_text(16+(global.Spw)*(Pnum-1),global.Sph-50,string("Time:"));
draw_text(128+(global.Spw)*(Pnum-1),global.Sph-50,string(Limit));