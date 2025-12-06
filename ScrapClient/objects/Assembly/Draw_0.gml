/// @description Insert description here
// You can write your code in this editor
var shd=shd_dirlight;
shader_set(shd);
var uni_fs = shader_get_uniform(shd,"fogStart")
var uni_fe = shader_get_uniform(shd,"fogEnd")
//shader_set_uniform_f(uni_fs,-view3D.mag*0.5);
//shader_set_uniform_f(uni_fe,-view3D.mag*1.5);
shader_set_uniform_f(uni_fs,-view3D.mag-25);
shader_set_uniform_f(uni_fe,-view3D.mag+25);

/*
if start!=""
{
with(struct_get(part, start))
{
matrix_stack_push(matrix_build(x,y,z,pitch,roll,yaw,xscale,yscale,zscale))
matrix_set(matrix_world, matrix_stack_top());
vertex_submit(vb, pr_trianglelist, -1);
//iterate through the model names in the "path" array using the same code as a method 
//BUT WITH A TWIST!
var ii=0;
repeat(array_length(jnt))
{
jn2[ii]=matrix_transform_vertex(mat,jnt[ii][0],jnt[ii][1],jnt[ii][2])
//function(path[ii][0],path[ii][1],jn2[ii])
//this method should essentially run the above. This allows for a nested loop
ii++
}}
matrix_stack_clear();
matrix_set(matrix_world,matid);
}
*/


///////////////////////////////////////////////////////////////////////////////////////


//The following should be run in the draw event

var iii=0;
repeat(rep)
{
	
	
if start!=""
{
with(part[$ start])
{
var mat = matrix_build(other.x+iii*12,other.y,other.z,pitch,roll,yaw,xscale,yscale,zscale);
matrix_stack_push(mat);
//followed by
matrix_set(matrix_world, matrix_stack_top());
vertex_submit(vb, pr_trianglelist, -1);
//iterate through the model names in the "path" array using the same code as a method 
//BUT WITH A TWIST!
var ii=0;
repeat(array_length(jnt))
{
//jn2[ii]=matrix_transform_vertex(mat, jnt[ii][0], jnt[ii][1], jnt[ii][2]);
//jn2=jnt this is the initial iteration
if array_length(path) parti(path[ii],jnt[ii],other);
//this method should essentially run the above. This allows for a nested loop
ii++
}

}
matrix_stack_clear();
matrix_set(matrix_world,matid);
}



iii++
}




shader_reset();


