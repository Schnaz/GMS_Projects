/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if Tester.Trigs[26]=false
{
	visible=false;
//audio_stop_sound(Psong);
//Tester.Psong=Fanfare
audio_play_sound(Fanfare,2,0);
	
Tester.Trigs[26]=true;
}

Heal();
instance_destroy();