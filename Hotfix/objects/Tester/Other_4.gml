/// @description Insert description here
// You can write your code in this editor
tl=layer_tilemap_get_id("Tiles_1");

switch (room)
{
case Room0:
case Room1:
case Room2:
case Room3:
case Room4:
case Roomn1:
case TestRoomB4:
case TestRoomB5:
case TestRoomJ2:
case TestRoomJ3:
case TestRoomJ4:
case Hall0:
case Hall1:
case RoomEND:
global.song=Wind;
break;
case RoomE1:
case RoomE2:
case RoomE3:

case TestRoomH:
case TestRoomH2:
case TestRoomH3:

case TestRoomB:
case TestRoomB2:
case TestRoomB3:

case TestRoomG:
case TestRoomG2:
case Roomn2:

case TestRoomJ:

global.song=Wandervoid;
break;
case Room5:
case Room6:
case Room7:
case Room8:
case Room9:
case Room10:
case Room7b:
case Room8b:
case Room9b:
case Room10b:
global.song=Mission;
}

if variable_global_exists("song")
{

if global.song!=Psong {audio_stop_sound(Psong); Psong=global.song; audio_play_sound(Psong,2,1);}

}
else {audio_play_sound(Psong,2,1); global.song=Psong;}


