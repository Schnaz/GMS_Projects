/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,Tester) print=true;
else print=false;

if die=true {
with (CubrixM)
if image_xscale=1 movey(1);
else movex(0.2);
}

if instance_number(bug)=0 {die=false
with (CubrixM)
if image_xscale=1 {if y!=68 movey(-1)}
else movex(-1);
}