/// @description Insert description here
// You can write your code in this editor

application_surface_draw_enable(false);

shader_set(Dithering);
var res = shader_get_uniform(Dithering, "iResolution");
var time = shader_get_uniform(Dithering, "iTime");
shader_set_uniform_f(res, camera_get_view_x(0), camera_get_view_y(0));
shader_set_uniform_f(time, get_timer());
draw_surface( application_surface, 0, 0 );
shader_reset();