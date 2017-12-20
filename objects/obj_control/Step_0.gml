/// @desc: Main Control

// Check for input
scr_input();
scr_dev_control();

// Room controller creation
if(rm_last != room){
	rm_last = room;
	var rms = array_height_2d(rm);
	for(var i = 0; i < rms; i++){
		if(rm[i, ROOM] == room){
			var controller = instance_create_depth(0, 0, depth + 1, obj_room_controller);
			controller.script = rm[i, SCRIPT];
			break;
		}
	}
}