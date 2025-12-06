/// @description Insert description here
// You can write your code in this editor

//draw_text(x,y,string(th));

var cam=camera_get_active();
camera_set_view_mat(cam, matrix_build_lookat(x-mag*dcos(ang)*dcos(angz),y-mag*dsin(ang)*dcos(angz),z+mag*dsin(angz),x,y,z,0,0,1));
camera_set_proj_mat(cam, matrix_build_projection_ortho(room_width,room_height,1,100000));
//camera_set_proj_mat(cam, matrix_build_projection_perspective_fov(60,window_get_width()/window_get_height(),1,1000));
camera_apply(cam);

vertex_submit(vb, pr_trianglelist, sprite_get_texture(spr_space, 0));



//t=dsin(current_time);
//var mat=matrix_build(0,0,0,0,0,0,1,1,1);
//matrix_set(matrix_world,mat);

//tex = sprite_get_texture(TileWood, 0);
//vertex_submit(vb, pr_trianglestrip, tex);
//vertex_submit(vb2, pr_linelist, -1);

//matrix_set(matrix_world,matrix_build_identity());


//with(PlayerP)
//{

//if mv draw_sprite_ext(Prun,floor(image_index)+dir*4,x,y,1,2,-image_angle,c_white,1);
//else draw_sprite_ext(Pstn,dir,x,y,1,2,-image_angle,c_white,1);
//}
