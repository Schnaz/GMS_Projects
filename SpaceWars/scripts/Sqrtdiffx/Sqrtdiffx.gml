// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//rect to polar--- point_direction point_distance
//
function Sqrtdiffx(argument0){
return(sqrt(abs(phy_position_x-argument0.phy_position_x))*-sign(phy_position_x-argument0.phy_position_x))

}