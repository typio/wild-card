/// @description Insert description here
// You can write your code in this editor

// check if for button hover and click
if (device_mouse_x_to_gui(0) > playbtn_x - playbtn_width/2 && device_mouse_x_to_gui(0) < playbtn_x + playbtn_width/2 && device_mouse_y_to_gui(0) > playbtn_y - playbtn_height/2 && device_mouse_y_to_gui(0) < playbtn_y + playbtn_height/2) {
	playbtn_hover = true;
	
	if (device_mouse_check_button(0, mb_left)) {
		room_goto(rm_LevelSelect);
	}
} else {
	playbtn_hover = false;
}