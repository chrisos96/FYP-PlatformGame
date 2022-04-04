if(place_meeting(x,y,oPlayer)){
	if (global.gunAmmo < global.MaxgunAmmo){
		instance_destroy();
	}
		global.gunAmmo +=30;
		if (global.gunAmmo > global.MaxgunAmmo){
		global.gunAmmo = global.MaxgunAmmo;
		}
}