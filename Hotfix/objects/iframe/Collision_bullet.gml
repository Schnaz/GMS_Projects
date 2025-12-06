/// @description Insert description here
// You can write your code in this editor
Hp-=other.Pwr;
Vr-=(0.1-Hp/6400)*other.Pwr*(angle_difference(point_direction(other.x,other.y,x,y)-90,image_angle));
instance_destroy(other);

if Hp<0 {sprite_index=Dbag; 
	audio_play_sound(tath,2,0);
	instance_create_depth(x+80*dsin(image_angle),y+80*dcos(image_angle),depth,fluff_s);	
	exit;}
if Hp=0 {sprite_index=Dbag; 
	audio_play_sound(bump1,2,0);
	repeat (8) instance_create_depth(x+80*dsin(image_angle),y+80*dcos(image_angle),depth,fluff_m);	
	exit;}
if Hp<80 {image_index=3; 
	audio_play_sound(buup,2,0);
	audio_play_sound(sha,2,0);
	repeat (3) instance_create_depth(x+80*dsin(image_angle),y+80*dcos(image_angle),depth,fluff_s);
	instance_create_depth(x+80*dsin(image_angle),y+80*dcos(image_angle),depth,fluff_m);
	exit;}
if Hp<160 {image_index=2;
	audio_play_sound(buup,2,0);
	audio_play_sound(sha,2,0);
	repeat (2) instance_create_depth(x+80*dsin(image_angle),y+80*dcos(image_angle),depth,fluff_s);
	exit;}
if Hp<240 {image_index=1;
	audio_play_sound(buup,2,0);
	audio_play_sound(sha,2,0);
	instance_create_depth(x+80*dsin(image_angle),y+80*dcos(image_angle),depth,fluff_s);
	exit;
}
audio_play_sound(boop,2,0);


