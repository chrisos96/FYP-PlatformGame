w = display_get_gui_width();
h = display_get_gui_height();
h_half = h/2;
// Different transition modes for the game
enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
percentTarget = 1.1;
target = room;