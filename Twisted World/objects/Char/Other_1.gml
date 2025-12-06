/// @description Insert description here
// You can write your code in this editor
if global.pause=false&&instance_exists(Roomtrans) instance_destroy(Roomtrans);
if variable_global_exists("rm")
{
if x>room_width {rm=global.rm[0];}
else if x<0 {rm=global.rm[1];}
else if y>room_height {rm=global.rm[2];}
else if y<0 {rm=global.rm[3];}
else exit;
with (instance_create_depth(x,y,depth,Roomtrans))
{
rm=other.rm;
}
}




