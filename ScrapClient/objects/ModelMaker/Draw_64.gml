/// @description Insert description here
// You can write your code in this editor

draw_text(8,8,string([x,y,z]));

draw_text(100,8,string([x,y,z]));

var str="";

if ni!=0&&(global.tool==1||global.tool==2) {

var lng=array_length(node);
var ii=0;
repeat(lng){
str+=string(node[ii])+"\n";

var xy=world2screen(node[ii][0],node[ii][1],node[ii][2],view3D.viewmat,view3D.projmat);
draw_set_color(c_lime);
draw_circle(xy[0]-1,xy[1]-1,4,false);

ii++;
}
}

if nj!=0 {

var lng=array_length(joint);
var ii=0;
repeat(lng){
if global.tool==3 str+=string(joint[ii])+"\n";

var xy=world2screen(joint[ii][0],joint[ii][1],joint[ii][2],view3D.viewmat,view3D.projmat);

draw_sprite_ext(dragpoint,0,xy[0]-1,xy[1]-1,1,1,0,c_lime,1);

ii++;
}
}


draw_text(10,30,str);


draw_set_color(c_white);

var xy=world2screen(0,0,0,view3D.viewmat,view3D.projmat);

draw_sprite(originx,0,xy[0]-1,xy[1]-1);