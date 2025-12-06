/// @description Insert description here
// You can write your code in this editor

//Tester.Cmv=false;
other.Cmv=false;

if !other.Trigs[2]
{
other.Trigs[2]=1;

instance_create_layer(Tester.x+124,Tester.y,layer,Dev2)

Dialogue[15,0]=0;
Dialogue[14,0]="02Um... Toodles!15"
Dialogue[13,0]="03WHAT DID YOU JUST CALL US!!?? DIE!!!14"
Dialogue[12,0]="02I'm not spellchePERSIMMONcking all of your dialogue! Ya sons o' trapezoids!13"

Dialogue[11,0]="03well yeah, I guess we do, but because its all self written theres nobody to check for speBANANAlling errors12"

Dialogue[10,0]="02Wait, don't you already have that?11"

Dialogue[9,0]="03Well we also all want unique pieces of dialogue.10"

Dialogue[8,0]="02I'm pretty certain you guys are already the main characters in plenty of games like tetris and geometry dash and... erm... minecraft?09"
Dialogue[7,0]="03Since we went on strike. We are all sick of being trodden upon and wish to win fame as the main characters of a game08"
Dialogue[6,0]="02SINCE WHEN?!07"
Dialogue[5,0]="03Yeah, we can talk now. No thanks to you!06"

Dialogue[4,0]="03I'm not lame YOU'RE LAME03"

Dialogue[3,0]="02WAIT WHAT!!!!!?????...05"
Dialogue[2,0]="02Oh, those are just some of the tiles that...03"
Dialogue[1,0]="03Yeah what about us?!02"

Dialogue[0,2]="00What about those spinning tiles?01";
Dialogue[0,1]="00Yeah its kinda lame.04";
Dialogue[0,0]="01We've gone all this way and there's still nothing01"

Actions[15]=1;

Dial(Dialogue,Charray,Actions);
}
