/// @description Window resize
// You can write your code in this editor
camx=x-mag*dcos(ang)*dcos(angz);
camy=y-mag*dsin(ang)*dcos(angz);
camz=z+mag*dsin(angz);
//Updating fog to help with the interpretation of 3D






gpu_set_fog(true,c_black,-mag*0.5,-mag*1.5);





//Keep the right resolution with changing window size
if window_has_focus()
{
if window_get_width() != surface_get_width(application_surface) || window_get_height() != surface_get_height(application_surface)
{
    surface_resize(application_surface, window_get_width(),window_get_height());
}
}