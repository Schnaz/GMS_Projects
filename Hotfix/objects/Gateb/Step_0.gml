/// @description Insert description here
// You can write your code in this editor
if instance_exists(Bosstiles)&&!instance_exists(Cubrix) instance_create_layer(x,y,layer,Cubrix)
else if instance_exists(Cubrix)&&!instance_exists(Bosstiles) instance_destroy(Cubrix);