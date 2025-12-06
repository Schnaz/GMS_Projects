/// @description Insert description here
// You can write your code in this editor
if Tester.Trigs[8]
{
tl=layer_tilemap_get_id("Tiles_1");
w=image_xscale;
h=image_yscale;
typ=3;
ind=8*typ;
w1=false;
h1=false;
if w=1 h1=true;
if h=1 w1=true;

if !h1&&!w1
{
tilemap_set_at_pixel(tl, 3+ind, x, y)
for (var ix=1; ix<w-1; ix++) tilemap_set_at_pixel(tl, 2+ind, x+ix*8, y)
tilemap_set_at_pixel(tl, 3+ind | tile_rotate, x+(w-1)*8, y)
for (var iy=1; iy<h-1; iy++) tilemap_set_at_pixel(tl, 2+ind | tile_rotate, x+(w-1)*8, y+iy*8)
tilemap_set_at_pixel(tl, 3+ind | tile_flip | tile_mirror, x+(w-1)*8, y+(h-1)*8)
for (var ix=1; ix<w-1; ix++) tilemap_set_at_pixel(tl, 2+ind | tile_flip, x+ix*8, y+(h-1)*8)
tilemap_set_at_pixel(tl, 3+ind | tile_flip, x, y+(h-1)*8)
for (var iy=1; iy<h-1; iy++) tilemap_set_at_pixel(tl, 2+ind | tile_rotate | tile_flip, x, y+iy*8)

for (var ix=1; ix<w-1; ix++) for (var iy=1; iy<h-1; iy++) tilemap_set_at_pixel(tl, 1+ind, x+ix*8, y+iy*8)
}

if !h1&&w1
{
tilemap_set_at_pixel(tl, 5+ind, x, y)
for (var ix=1; ix<w-1; ix++) tilemap_set_at_pixel(tl, 4+ind, x+ix*8, y)
tilemap_set_at_pixel(tl, 5+ind | tile_mirror, x+(w-1)*8, y)
}

if !w1&&h1
{
tilemap_set_at_pixel(tl, 5+ind | tile_rotate, x, y)
for (var iy=1; iy<h-1; iy++) tilemap_set_at_pixel(tl, 4+ind | tile_rotate, x, y+iy*8)
tilemap_set_at_pixel(tl, 5+ind | tile_mirror | tile_rotate, x, y+(h-1)*8)
}

if h1&&w1
{
tilemap_set_at_pixel(tl, 6+ind, x, y)
}

}
//w
//a
//s
//d

//wa
//wd
//as gotta rotate
//sd

//ws gotta rotate
//ad

//Xw
//Xa
//Xs
//Xd

//wasd

//X