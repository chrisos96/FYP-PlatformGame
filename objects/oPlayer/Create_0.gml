walksp = 4;		//SETTING WALKSPEEED
hsp = 0;	//SETTING HORIZONTAL SPEED
vsp = 0;	//SETTING VERTICAL SPEED
grv = 0.25;		//SETTING GRAVITY
acceleration = 0.5;		//SETTING WALKSPEED ACCELERATION

allowjump = 0;		//DEFINING BOOLEAN FOR APPROVING JUMP
hascontrol = 1;		//DEFINING BOOLEAN FOR PLAYER CONTROL
controller = 0;		//DEFINING BOOLEAN FOR CONTROL TYPE

global.hp_max = 100;		//SETTING PLAYER MAX HP


if file_exists("Save.sav")
{
    //do nothing
}
else
{
	global.hp = global.hp_max;
}

invincible = 0;			//INVINCIBLE STATUS FOR PLAYER	
gunkickbackX = 0;		//DEFINING GUN KICKBACK ON PLAYER WEAPONS
flashP = 0;