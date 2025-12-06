/// @description Insert description here
// You can write your code in this editor
if visible
{
tl=layer_tilemap_get_id("Tiles_1")
w=image_xscale;
h=image_yscale;
typ=0;
ind=8*4;

for (var iy=0; iy<h; iy++) {
tilemap_set_at_pixel(tl, 1+ind, x, y+iy*8);
tilemap_set_at_pixel(tl, 1+ind | tile_mirror, x+8, y+iy*8);
}
}