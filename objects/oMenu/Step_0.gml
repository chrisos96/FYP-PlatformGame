menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if (menu_control){
	if (keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(4, gp_face1)){
		menu_cursor++;
		
		
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(4, gp_face3)){
		menu_cursor--;
		
		if(menu_cursor < 0) menu_cursor = menu_items-1;
	}
	if (keyboard_check_pressed(vk_enter) || (gamepad_button_check_pressed(4,gp_face2))){
		menu_x_target = gui_width+400;
		menu_committed = menu_cursor;
	
		menu_control = false;
	}
}


if (menu_x > gui_width+150) && (menu_committed != -1){
	switch (menu_committed){
		case 2: default: 
		Transitioning(TRANS_MODE.NEXT);
		SetDefaultGlobalVar()

			break;
		case 1:{
			if (!file_exists(SAVEFILE)){
				Transitioning(TRANS_MODE.NEXT)
			}
			else{
				ini_open("Save.sav")
				var LoadedRoom = ini_read_real("Save1", "room",room);
				global.gunAmmo = ini_read_real("Save1", "gunAmmo",0);
				global.hp = ini_read_real("Save1", "playerHP",0);
				ini_close();
				room_goto(LoadedRoom);
			
			}
		}
		break;
		case 0: game_end(); break;
	}
}