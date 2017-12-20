/// scr_dev_control

// Developer toggle
if(keyboard_check_pressed(vk_f1)){
	global.dev = !global.dev;
}

// Developer control
if(global.dev){
	if(keyboard_check_pressed(vk_f2)){
		global.dev_show = !global.dev_show;
	}

	// Quick variables
	var dev_end = keyboard_check_pressed(vk_escape);
	var dev_restart = keyboard_check_pressed(vk_home);
	var dev_room = keyboard_check_pressed(vk_end);

	if(dev_end){
		game_end();
	}
	if(dev_restart){
		game_restart();
	}
	if(dev_room){
		room_restart();
	}
}