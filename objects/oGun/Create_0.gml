firingdelay = 0;		//DELAY ON GUN FIRING
recoil = 0;			//GUN RECOIL
controllerangle = 0;		//GUN ANGLE WHILE ON CONTROLLER
global.MaxgunAmmo = 60;		//ALLOCATED MAX AMMO

if file_exists("Save.sav")
{
    //do nothing
}
else
{
	global.gunAmmo = global.MaxgunAmmo;
}
