/// @description Insert description here
// You can write your code in this editor
var pow=1/point_distance(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y);
var ang=-point_direction(phy_position_x,phy_position_y,other.phy_position_x,other.phy_position_y);
with (other) {physics_apply_impulse(phy_com_x,phy_com_y,pow*dcos(ang),pow*dsin(ang));}
other.HP-=50*pow;