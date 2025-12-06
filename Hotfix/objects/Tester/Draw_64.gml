/// @description Insert description here
// You can write your code in this editor
if !Hp&&!In exit;

draw_set_alpha(0.5);
draw_set_color(c_black);
if Mhp>In/2 draw_rectangle(48,view_hport[0]-24+tup,48+8*Mhp,view_hport[0]+tup,0);
else draw_rectangle(48,view_hport[0]-24+tup,48+16*In,view_hport[0]+tup,0);
draw_set_color(c_white);
draw_set_alpha(1);

for (var hi=0; hi<Mhp; hi++)
{
draw_sprite(HitpointG,0,48+8*hi,view_hport[0]-24+tup);
}

for (var hi=0; hi<Hp; hi++)
{
draw_sprite(Hitpoint,0,48+8*hi,view_hport[0]-24+tup);
}

for (var hi=0; hi<In; hi+=1)
{
draw_sprite(Invslot,0,48+16*hi,view_hport[0]-16+tup);
if Inv[hi] draw_sprite(InvItems[Inv[hi]],0,48+16*hi,view_hport[0]-16+tup);
}
