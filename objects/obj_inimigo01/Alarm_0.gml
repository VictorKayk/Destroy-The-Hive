/// @description Alarme 0

if x >= 32{
	instance_create_layer(x, y, "Tiro", obj_ini_tiro01);
}

alarm[0] = random_range(2.5, 4) * room_speed;
 