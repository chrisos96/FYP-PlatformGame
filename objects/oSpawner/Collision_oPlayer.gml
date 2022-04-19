// Trigger collision

if (trigger == false)
{
	with (oBossDoor) closed = true;
	trigger = true;
	
	//work out waves
	total_waves = -1;
	for (var i=0; i < ds_list_size(waves); i++)
	{
		var thisentry = ds_list_find_value(waves,i);
		if (thisentry[_WAVE] > total_waves)
		{
			total_waves++
			remaining[total_waves] = 0;
			
		}
		remaining[total_waves]++;
	}
}
