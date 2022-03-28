if (mode != TRANS_MODE.OFF){
	draw_set_color(c_silver);
	draw_set_font(fMainFont);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_rectangle(0,0,w,percent*h_half,false)
	draw_rectangle(0,h,w,h-(percent*h_half),false)
	draw_text(50,0,"Loading")
}