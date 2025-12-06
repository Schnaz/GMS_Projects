// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_sprite_bb_ext(sprite,subimg,xx,yy,zz,xscale,yscale,rot,col,alpha){
	shader_set(shd_billboard);
	matrix_set(matrix_world, matrix_build(xx,yy,zz,0,0,0,1,1,1));
	draw_sprite_ext(sprite,subimg,0,0,xscale,yscale,rot,col,alpha);
	matrix_set(matrix_world, matrix_build_identity());
	shader_reset();
}