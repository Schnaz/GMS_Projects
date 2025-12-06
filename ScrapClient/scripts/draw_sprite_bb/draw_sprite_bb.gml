// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_sprite_bb(sprite,subimg,xx,yy,zz){
	shader_set(shd_billboard);
	matrix_set(matrix_world, matrix_build(xx,yy,zz,0,0,0,1,1,1));
	draw_sprite(sprite,subimg,0,0);
	matrix_set(matrix_world, matrix_build_identity());
	shader_reset();
}