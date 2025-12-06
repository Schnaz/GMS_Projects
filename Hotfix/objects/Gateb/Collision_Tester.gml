/// @description Insert description here
// You can write your code in this editor


Tester.x=room_width*(1-sign(x))/2;
if instance_exists(follower) follower.x=Tester.x-8*sign(x);
room_goto(NR);
audio_stop_sound(Boss2);
audio_stop_sound(Victory);