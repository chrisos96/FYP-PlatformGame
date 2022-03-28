if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//Create save
/*var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);
file_text_close(file);
*/

ini_open("Save.sav");
var savedRoom = room;
ini_write_real("Save1", "room",savedRoom);
ini_write_real("Save1", "gunAmmo",global.gunAmmo);

ini_write_real("Save1", "playerHP",global.hp);

ini_close();
