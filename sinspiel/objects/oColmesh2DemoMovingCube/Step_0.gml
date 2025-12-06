/// @description
var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_up) - keyboard_check(vk_down);
var r = keyboard_check(vk_pageup) - keyboard_check(vk_home);

//pitch+=v;
//yaw+=h;
//roll+=r

//yaw+=2*(h*dcos(roll)+v*dsin(roll));
//pitch+=2*(v*dcos(roll)-h*dsin(roll));


// Idea #1 endless matrix multiplication, Works but loses data
mat = matrix_multiply(matrix_build(0, 0, 0, -h, v, r, 1, 1, 1), mat);

cm_dynamic_set_matrix(shape, mat, true);
cm_dynamic_update_container(shape, LEVEL_COLMESH);