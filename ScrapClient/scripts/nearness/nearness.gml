// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nearness(obj){
return(((obj.x-view3D.x)*dcos(view3D.ang)+(obj.y-view3D.y)*dsin(view3D.ang))*dcos(view3D.angz)+(view3D.z-obj.z)*dsin(view3D.angz));
}