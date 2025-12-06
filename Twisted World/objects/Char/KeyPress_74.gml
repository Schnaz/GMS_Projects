/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,Chatty)
{
if !instance_exists(Tbox)
{
with (instance_place(x,y,Chatty)) {event_user(0); exit;}
}
}
