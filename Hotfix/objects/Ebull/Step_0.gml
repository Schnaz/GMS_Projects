/// @description Insert description here
// You can write your code in this editor
depth+=1;
if T>=0 {repeat(Spd){

	y-=Vsp+dsin(Ang);
	x+=Hsp+dcos(Ang);


	if collision_circle(x, y-1, Siz, solit, false, false) exit;
	if collision_circle(x, y-1, Siz, Tester, false, false) exit;
	T-=1
}}
else instance_destroy();

