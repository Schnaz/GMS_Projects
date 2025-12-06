/// @description Insert description here
// You can write your code in this editor
//vertex_submit(vb2,pr_linelist,-1);
gpu_set_cullmode(cull_counterclockwise);

vertex_submit(vb, pr_linelist, -1);
vertex_submit(vb2, pr_linestrip, -1);

//
var shd=shd_dirlight2;
shader_set(shd);
var uni_fs = shader_get_uniform(shd,"fogStart")
var uni_fe = shader_get_uniform(shd,"fogEnd")
var uni_ld = shader_get_uniform(shd,"lightDirection")
var uni_lc = shader_get_uniform(shd,"lightColor")
//shader_set_uniform_f(uni_fs,0);
shader_set_uniform_f(uni_fe,100000);
shader_set_uniform_f(uni_fs,-view3D.mag-25);
//shader_set_uniform_f(uni_fe,-view3D.mag+25);
shader_set_uniform_f(uni_ld,dcos(tt),dsin(tt),1);
shader_set_uniform_f(uni_lc,1,1,1,1);
//
var vi=0
var sarry=[sprite_get_texture(Assetmap,0),-1,-1,-1,-1,-1,-1]
if keyboard_check(ord("S")) sarry[0]=sprite_get_texture(Assetmap2,0);
repeat(array_length(vbs)) 
{vertex_submit(vbs[vi], pr_trianglelist, sarry[vi]);
vi++
}

//shader_reset();