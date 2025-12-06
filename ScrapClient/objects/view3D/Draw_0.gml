/// @description Drawing The View and Grid
// You can write your code in this editor

//draw_text(x,y,string(th));

cam=camera_get_active();
viewmat=matrix_build_lookat(camx,camy,camz,x,y,z,0,0,1);
camera_set_view_mat(cam, viewmat);
if ortho projmat=matrix_build_projection_ortho(window_get_width()*-mag/1000,window_get_height()*-mag/1000,1,-mag*5);
else projmat=matrix_build_projection_perspective_fov(fov,window_get_width()/window_get_height(),1,-mag*5);
camera_set_proj_mat(cam, projmat);
camera_apply(cam);


//vertex_submit(ModelMaker.vb, pr_linelist, -1);
//vertex_submit(ModelMaker.vb2, pr_linestrip, -1);