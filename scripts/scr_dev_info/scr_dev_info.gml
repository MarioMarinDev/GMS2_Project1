/// scr_dev_info

var font = fnt_dev;

// Draw setup
draw_set_font(font);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw dim rectangle
draw_rectangle_dim(0, 0, room_width, dev_y, 0.66, c_black);

// Coordinates variables
var xx = 5;
var yy = 5;
var ys = font_get_size(font) + 4;

// Draw developer information
var text = string(fps);
draw_text(xx, yy, text + " DEVELOPER MODE (" + room_get_name(room) + ")"); yy += ys;
draw_text(xx, yy, "Instances: " + string(instance_count)); yy += ys;
if(instance_exists(obj_room_controller)){
	var scr = obj_room_controller.script;
	if(script_exists(scr)){
		draw_text(xx, yy, "Room Controller: " + script_get_name(scr)); yy += ys;
	}
}

// Get y max (ALWAYS LAST)
dev_y = yy + ys;