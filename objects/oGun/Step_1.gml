x = oPlayer.x-3
y = oPlayer.y+15


if (oPlayer.controller == 0){
	image_angle = point_direction(x,y,mouse_x,mouse_y)
}
else{
	var controllerh = gamepad_axis_value(4,gp_axisrh);
	var controllerv = gamepad_axis_value(4,gp_axisrv);
	if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2){
		controllerangle = point_direction(0,0,controllerh,controllerv)
	}
	image_angle = controllerangle;
}


firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if(global.gunAmmo > 1){
	if((mouse_check_button(mb_left)) || gamepad_button_check(4,gp_shoulderrb)) && (firingdelay < 0){
	
		recoil = 4;
		firingdelay = 8;
		global.gunAmmo -= 1;

		with (instance_create_layer(x,y-6,"Pickups", oAmmo)){
			speed = 25;
			direction = other.image_angle + random_range(-3,3);
			image_angle = direction;
		}
	
		with(oPlayer){
			gunkickbackX = lengthdir_x(1.5,other.image_angle-180);
		}
	}
}
else{
	global.gunAmmo = 0;
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_x(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270){
	image_yscale = -1
}
else{
	image_yscale = 1
}