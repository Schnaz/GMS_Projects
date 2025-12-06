/// @description

draw_text(10, 10, fps);
draw_text(10, 30, yaw);
draw_text(10, 50, pitch);
draw_text(10, 70, roll);
draw_text(10, 90, sqrt(sqr(upx)+sqr(upy)+sqr(upz)));
draw_text(10, 110, [charMat[0], charMat[1], charMat[2]]); // rx
draw_text(10, 130, [charMat[4], charMat[5], charMat[6]]); // ry
draw_text(10, 150, [charMat[8], charMat[9], charMat[10]]); //rz

draw_text(10, 190, [mat[0], mat[1], mat[2]]); // rx
draw_text(10, 210, [mat[4], mat[5], mat[6]]); // ry
draw_text(10, 230, [mat[8], mat[9], mat[10]]); //rz


draw_text(10, 250, spdX);
draw_text(10, 270, spdY);

draw_text(10, 310, device_mouse_x_to_gui(0));
//draw_text(10, 210, gd);
//draw_text(10, 230, mat);

//draw_text(10, 170, darccos(ry[1]));
//draw_text(10, 190, darccos(ry[0]));
//draw_text(10, 210, rz);

/*

var str = "Move with WASD + space"
	+ "\nSwitch demos: 1-5"
	+ "\nQ: Unlimit FPS. FPS: " + string(fps) + " / " + string(game_get_speed(gamespeed_fps))
	+ "\nE: Draw active colliders"
	+ "\nR: Disable drawing"
	+ "\nH: Hide text"
	+ "\n" + global.demoText;
draw_set_color(c_black);
draw_text(9, 9, str);
draw_text(11, 9, str);
draw_text(9, 11, str);
draw_text(11, 11, str);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(10, 10, str);