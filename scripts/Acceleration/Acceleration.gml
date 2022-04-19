//	speed = Acceleration(speed, max_speed, acceleration);
//	arg0 --> speed
//	arg1 --> max speed
//	arg2 --> acceleration

function Acceleration(arg0,arg1,arg2){
	
if (argument0 < argument1)
{
    argument0 += argument2;
    if (argument0 > argument1)
        return argument1;
}
else
{
    argument0 -= argument2;
    if (argument0 < argument1)
        return argument1;
}
return argument0;
}




