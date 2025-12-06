// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bsave(){
var str="";
for (var ii=0; ii<array_length(global.sw)-1; ii++)
{
str=str+string(global.sw[ii])+"_";
}
str=str+global.sw[99];
var sbuff=buffer_create(1000,buffer_fixed,8);
buffer_write(sbuff,buffer_text,str);
buffer_save(sbuff, "PSave");
buffer_delete(sbuff);

with Char event_user(10);
}





function bload(){
global.pause=true;
global.sw[0]=1
if !instance_exists(Char) {instance_create_depth(x,y,-5,Char)}

Char.image_blend=c_black;
Char.spell=global.sw[69]


if file_exists("Psave") {
global.sw=array_create(99,0);
var sbuff=buffer_load("PSave");
var str=buffer_read(sbuff, buffer_text)
buffer_delete(sbuff);
var iv=0
var pos=0

while(str!="")
{
pos=string_pos("_",str)
if iv!=99 {
global.sw[iv]=real(string_copy(str,1,pos-1));
str=string_delete(str,1,pos);
} else {global.sw[iv]=str; str=""}
iv+=1;
}
}
with Char event_user(10);
instance_create_depth(x,y,depth,Spawn)
}
//what does it mean
//0-19=story
//20-24=wand
//25-29=hearts
//30 dash
//35 extra jump
//40 turn
//99=room

//4 hearts
//1 stick
//1 turn
//1 dash
//1 extra jump
//4 spells
function cpoint(x,y){
global.sw[99]=room_get_name(room);
global.sw[96]=x;
global.sw[97]=y;
global.sw[98]=-image_angle;
bsave();
}