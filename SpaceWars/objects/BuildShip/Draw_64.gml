/// @description Insert description here
// You can write your code in this editor
if ready=false
{
for(var i=0; i<array_length(Arrayvar[Bstep][0]); i++)
{
draw_set_colour(c_black);
draw_button(8+(Pnum-1)*global.Spw,8+i*40+64,200+(Pnum-1)*global.Spw,40+i*40+64,true);
draw_set_colour(c_white);
draw_text(16+(Pnum-1)*global.Spw,12+i*40+64,Arrayvar[Bstep][0][i]);
}
draw_sprite_ext(Shipspr,0,216+(Pnum-1)*global.Spw,Cvalue*40+24+64,1,1,90,c_white,1)

draw_set_font(Font2);
draw_text(16+(Pnum-1)*global.Spw,12,Buildtext[Bstep]);

draw_set_font(Font1);
draw_text(16+(Pnum-1)*global.Spw,12+32,Builddesc[Bstep]);

}
else {draw_set_font(Font2); draw_text(16+(Pnum-1)*global.Spw,12,"READY"); draw_set_font(Font1);}

for (var ii=0; ii<instance_number(BuildShip); ii++)
{
//if ii=(Pnum-1) continue;
var Dis=sqrt(abs(point_distance(phy_position_x,phy_position_y,Shipbuild.Players[ii].phy_position_x,Shipbuild.Players[ii].phy_position_y)));
var Ang=-ANG-phy_rotation-point_direction(phy_position_x,phy_position_y,Shipbuild.Players[ii].phy_position_x,Shipbuild.Players[ii].phy_position_y);
draw_circle(global.Spw/2+global.Spw*(Pnum-1)+Dis*dcos(Ang),global.Sph*(3/4)+Dis*dsin(Ang),3,true);

}

draw_text(500+(global.Spw)*(Pnum-1),global.Sph-100,string(HP));
draw_text(500+(global.Spw)*(Pnum-1),global.Sph-50,string(phy_position_y));