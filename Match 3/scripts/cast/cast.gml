// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cast(){
var arry=[[B_r, B_o, B_y, B_g, B_b, B_i, B_v],[B_r, R_o, B_y, B_g, R_b, B_i, B_v]]
//bullets
//r bullet heals?
//o bullet explodes on hit
//y bullet is faster
//g bullet shoves
//b bullet creates a block
//i bullet bounces?
//v bullet splits?

//r ray is instant heal?
//o ray leaves burning trail
//y ray is instant
//g ray is [change wind direction/clear row]
//b ray creates ice wall
//i ray wave shape coveres tiles to the left and right
//v ray fires spread?

//r blast normal heals
//o blast burning zone
//y blast blinds
//g blast shoves to wall
//b blast creates ice
//i blast +1 area
//v blast starburst

//reactions
//o+g | y+i : explodes
//o>r | o>b | i>r : extinguishes

var sp=instance_create_depth(x,y,depth-1,arry[bool(combo)][ir1]);
sp.ang=ang;
sp.pow=combo;
return(sp);
}