/// @description Insert description here
// You can write your code in this editor
if vx=0&&vy=0
{
audio_play_sound(bounce,2,0);

if abs(angle_difference(image_angle+90,point_direction(x,y,Tester.x,Tester.y-8)))<45 {
vx=2*dcos(point_direction(x,y,Tester.x,Tester.y-8));
vy=-2*dsin(point_direction(x,y,Tester.x,Tester.y-8));
}
else
{
vx=2*dcos(45+image_angle+irandom(90));
vy=-2*dsin(45+image_angle+irandom(90));

}
}





alarm[0]=irandom(240);