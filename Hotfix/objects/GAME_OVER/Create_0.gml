/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
audio_play_sound(Gamever,2,1);
ERSCR="A problem has been detected and the game has been shut down to prevent any further damage.\n\nCause of Error: "

CS=object_get_name(Tester.killer.object_index);


ENDSCR="\n\n*    Press ESC to exit to Desktop\n*    Press ENTER to load most recent back-up"

Tester.persistent=false;

switch (room)
{
case TestRoomH3:
if Tester.Gn=0 DM="\n\nProbably shouldn't have used a shotgun for Breakout.\nYou could probably find a better weapon one room below.";
else DM="\n\nTo be fair, I don't think Breakout was designed for guns";
break;
case TestRoomB:
DM="\n\nThis room was not Elefun";
break;
case TestRoomB3:
if Readabletop2.die DM="\n\nA single computer in a room with a bunch of enemies behind gates! I wonder what it does?";
else DM="\n\nWell at least you didn't open the vents"
break;
case TestRoomB4:
DM="\n\nSORRY! That was probably my fault!";
break;
case TestRoomB5:
case Room2:
DM="\n\nProbably shouldn't have touched the forbidden fuzz";
break;
case TestRoomI:
DM="\n\nProbably should have realized that computers don't have keyholes.\nIt was probably refering to the right arrow key.";
break;
case TestRoomJ2:
case TestRoomJ3:
DM="\n\nSo apparently frogs are evil.";
break;
default:
DM="\n\n";
}

room=LOSSROOM;



