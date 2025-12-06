/// @description Insert description here
// You can write your code in this editor
Dial_clear();
test=false;
if instance_exists(bloon_s)
{


Dialogue[5,0]=0;

Dialogue[3,0]="01Anyways, come talk to me again when you are ready to retake the test.05"
Dialogue[2,0]="01The timer doesn't start until you fire your first shot. So try to place yourself in a better position next time.03"
Dialogue[1,0]="01You only popped "+string(33-instance_number(bloon_s))+" out of the 33 balloons.02"

if Jprs>20 {
Dialogue[4,0]="01That should help against airborne tagets.05";
Dialogue[3,0]="01In fact, when you hold the 'J' button it will keep the direction you are looking from changing.04";
Dialogue[2,0]="01You've been pushing the 'J' button quite a bit. You should know that it can be held down.03";
}
Dialogue[0,0]="01Times up!01";

Dial(Dialogue,Charray,Actions);

Jprs=0;
instance_destroy(bloon_s);
instance_destroy(bloon_m);
instance_destroy(bloon_b);
}
else
{

Dialogue[3,0]=0;
Dialogue[2,0]="01You should be able to leave the room now03"
Dialogue[1,0]="01Alright, I'm removing the blockade02";
Dialogue[0,0]="01You did it!01";

Actions[2]=5;

comp=true;

Dial(Dialogue,Charray,Actions);
}