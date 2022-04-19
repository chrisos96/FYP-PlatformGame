if(place_meeting(x,y,oPlayer)){
	if (global.gunAmmo < global.MaxgunAmmo){
		instance_destroy();
	}
		global.gunAmmo +=60;
		if (global.gunAmmo > global.MaxgunAmmo){
		global.gunAmmo = global.MaxgunAmmo;
		}
}

y = ystart + sin(get_timer()/500000)*2;
