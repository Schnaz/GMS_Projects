/// @description Insert description here
// You can write your code in this editor
opts+=1;
var layop=instance_create_depth(x,y+(opts)*32,depth-1,Lopt);
layop.val=opts;
array_push(opt,layop);
opt[opts].tex+=string(opts+1);

image_yscale=opts+1.5;