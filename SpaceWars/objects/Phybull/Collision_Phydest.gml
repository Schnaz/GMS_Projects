/// @description Insert description here
// You can write your code in this editor
if Age>0&&Eload!=3 {
	if Eload=2 {
with (instance_create_depth(phy_position_x,phy_position_y,depth,Explosion))
{
	phy_speed_x=other.phy_speed_x;
	phy_speed_y=other.phy_speed_y;
}
instance_destroy();
}
if Eload=0 {
other.HP-=phy_mass*abs(point_distance(other.Xvel,other.Yvel,Xvel,Yvel));
	
}
Age=-1;
}
