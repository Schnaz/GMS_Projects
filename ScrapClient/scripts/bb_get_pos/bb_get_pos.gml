// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bb_get_xpos(INSTANCE_ID){
return(((INSTANCE_ID.x-view3D.x)*dsin(view3D.ang)+(-INSTANCE_ID.y+view3D.y)*dcos(-view3D.ang))*2);
}

function bb_get_ypos(INSTANCE_ID){
return((((INSTANCE_ID.x-view3D.x)*dcos(view3D.ang)+(-INSTANCE_ID.y+view3D.y)*dsin(-view3D.ang))*dsin(view3D.angz)+INSTANCE_ID.z*dcos(view3D.angz))*2);
}

