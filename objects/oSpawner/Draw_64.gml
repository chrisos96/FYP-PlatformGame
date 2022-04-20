if (trigger)
{
	draw_set_font(fCreditsFont);
	draw_set_color(c_green);
	var str = "Enemies Remaining: ";
	for (var i = 0; i < array_length_1d(remaining); i++)
	{
		str += string(remaining[i]) + "|";
	}
	draw_text(650,25,
	str
	+"\nCurrent Wave: " +string(current_wave + 1)
	+"\nTotal Waves: " +string(total_waves + 1)
	)
}
