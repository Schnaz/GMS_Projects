/// @description Insert description here
// You can write your code in this editor
Tbox.page=3;
Tbox.pos=1;
Dial_clear();
Actions[99]=0;
switch (room)
{
case Room0:
Tbox.Dialogue[3]=["01What? Where am I? well, I'm currently working on the game.00"];
break;
case Roomn1:
Tbox.Dialogue[3]=["01I don't have much of an opinion on this room, but its totally a place I'd put an upgrade.00"];
break;
case Roomn2:
Tbox.Dialogue[3]=["01Okay I'll admit I just whipped up this room real quick to explain that those things kill you instantly.04"];
Tbox.Dialogue[4]=["01But hey, it served its pupose.00"];
break;
case RoomE1:
Tbox.Dialogue[3]=["01To the left you will find my room and to the right you will find the bug testing area.04"];
Tbox.Dialogue[4]=["01The bug testing area is quite dangerous, so try to find some upgrades before entering.05"];
Tbox.Dialogue[5]=["01I think theres a room in the bug testing chambers that will let you get rid of those white glitches.00"];
break;
case RoomE2:
Tbox.Dialogue[3]=["01To the left are the rooms where I tested all those fans and to the right are the Hit point testing rooms04"];
Tbox.Dialogue[4]=["01I highly reccomend going right, as those rooms might have something that will let you take a hit00"];
break;
case RoomE3:
Tbox.Dialogue[3]=["01To the left is the room where I tested the jump mechanic and to the right is the Item testing room04"];
Tbox.Dialogue[4]=["01If I remember correctly there are some items you might be able to make use of there05"];
Tbox.Dialogue[5]=["01As for the jump testing chambers... I'm sure you'll find a way00"];
break;
case TestRoomB:
Tbox.Dialogue[3]=["01Wow you killed all those bugs just to see what I would say? I'm impressed!04"];
Tbox.Dialogue[4]=["01Well, Now that I look at this room more clearly it really does remind me of that butterfly cathing game.00"];
break;
case TestRoomB2:
Tbox.Dialogue[3]=["01Oh, hey! Those are the info logs I wrote on each bug!04"];
Tbox.Dialogue[4]=["01They can give you some insight into the behavior of some of the bugs in the game.00"];
break;
case TestRoomB3:
Tbox.Dialogue[3]=["01Hey, I've noticed the air is much cleaner now. Did you do something?00"];
break;
case TestRoomB4:
Tbox.Dialogue[3]=["01This is the bug testing room. By accessing the terminal, those white glitches can be removed!00"];
break;
case TestRoomB5:
Tbox.Dialogue[3]=["01That frame might be useful if you have more than one hit point.00"];
break;
case TestRoomH:
Tbox.Dialogue[3]=["01Now I'm no expert, but I think that's a pinata.04"];
Tbox.Dialogue[4]=["01Smash it open and see if any candy falls out!00"];
break;
case TestRoomH2:
Tbox.Dialogue[3]=["01What do you think of my art gallery?00"];
break;
case TestRoomH3:
Tbox.Dialogue[3]=["01WOW! I really didn't think of that one!04"];
Tbox.Dialogue[4]=["01Intentionally destroying the floor so that you could kill the only threat was genius00"];
break;
case TestRoomI:
if Readabletop4.die=false
{
Tbox.Dialogue[3]=["01This is the 'SECURITY' system for the items room04"];
Tbox.Dialogue[4]=["01The items here are embarassingly broken, so I locked them away05"];
Tbox.Dialogue[5]=["01The keys towards the left wall are all a lie just press the right arrow key00"];
}
else
{
Tbox.Dialogue[3]=["01Oh crap! You triggered the trap!04"];
Tbox.Dialogue[4]=["01Okay, lets see hrrm...05"];
Tbox.Dialogue[5]=["01Theres a bunch of keys towards the left wall and they didn't work right?!06"];
Tbox.Dialogue[6]=["01The answers on the edge of my mind... just give me a sec.07"];
Tbox.Dialogue[7]=["01Wait! How the heck do you use a metal key on a computer?!02"];
Tbox.Dialogue[2]=["01It probably means press the right arrow key!00"];
}

break;
case TestRoomI2:
Tbox.Dialogue[3]=["01I actually can't see anything in there. All I know is that this room should have some interesting items in it00"];
break;

case TestRoomJ:
Tbox.Dialogue[3]=["01This room is probably impassible since the jump mechanic broke04"];
Tbox.Dialogue[4]=["01If only there was some kind of platform that could push you up to that ledge00"];
break;

default:
Tbox.Dialogue[3]=["01No Comment!04"];
break;
}
Tbox.Dialogue[0]=[0];