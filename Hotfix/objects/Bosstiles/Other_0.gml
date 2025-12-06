/// @description Insert description here
// You can write your code in this editor
if mup
{
audio_play_sound(Fanfare,2,0);
mup=false;
Dialogue[7,0]=0;
Dialogue[6,0]="03We feel kinda bad for having misbehaved all this time, So have this heart thing as an apology.07";
Dialogue[5,0]="03Poof.06";
Dialogue[4,0]="03We're gonna put ourselves back where we belong. Just give us a moment.05";
Dialogue[3,0]="03We're thinking that we're much better suited for a supporting role, if you know what we mean04";
Dialogue[2,0]="03If we knew fighting was going to hurt this much we would have given up on being protagonists years ago03";
Dialogue[1,0]="00.  .  .  .  .  .  .  .02";
Dialogue[0,0]="03Alright you win, WE SURRENDER!!!01";

Actions[2]=1;
Actions[5]=2;
Actions[7]=3;

Dial(Dialogue,Charray,Actions)

}