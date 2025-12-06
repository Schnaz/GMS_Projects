// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FlatNorm(node,ii1,ii2,ii3){
var v1 = new Vector3(node[ii1][0],node[ii1][1],node[ii1][2]);
var v2 = new Vector3(node[ii2][0],node[ii2][1],node[ii2][2]);
var v3 = new Vector3(node[ii3][0],node[ii3][1],node[ii3][2]);
var e1 = v2.Sub(v1);
var e2 = v3.Sub(v1);
return(e1.Cross(e2).Normalize());
}