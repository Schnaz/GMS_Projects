/// @description Insert description here
// You can write your code in this editor
if image_angle=0 {vy=-image_speed; if !movey(vy) instance_destroy();
	exit};
if image_angle=90 {vx=-image_speed; if !movex(vx) instance_destroy();
	exit};
if image_angle=180 {vy=image_speed; if !movey(vy) instance_destroy();
	exit};
if image_angle=270 {vx=image_speed; if !movex(vx) instance_destroy();
	exit};
