/// scr_player_action_move

// Get axis
xaxis = global.move_right - global.move_left;
hspd = 0;

// Get horizontal and vertical speeds
hspd = xaxis * spd;

// Check horizontal collision
if(place_meeting(x + hspd, y, obj_block)){
	while(!place_meeting(x + sign(hspd), y, obj_block)){
		x += sign(hspd);
	}
	hspd = 0;
}

// Move the player
x += hspd;