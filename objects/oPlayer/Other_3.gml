ini_open("Save.sav");
var savedRoom = room;
ini_write_real("Save1", "room",savedRoom);
ini_write_real("Save1", "gunAmmo",global.gunAmmo);
ini_write_real("Save1", "playerHP",global.hp);
ini_close();
