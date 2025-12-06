/// @description Insert description here
// You can write your code in this editor
if !act {
act=true;
dial_clear();
Dialogue=[
["00hElLo WiTtlE hUmAn01"],
["01what the...02"],
["00i Am GoInG tO bE KiLlInG yOu NoW03"],
[0]];
dial(Dialogue,Charray,Actions);

}
if act&&!instance_exists(Tbox) {
with Bosshand {
bossbar();
act=true;
alarm[2]=5;
}
instance_destroy();
}




