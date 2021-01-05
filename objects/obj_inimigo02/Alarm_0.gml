/// @description Alarme 0

if x >= 32{
	var val = 10
	instance_create_layer(x, y, "Tiro", obj_ini_tiro02);
	var tiro1 = instance_create_layer(x + 5, y, "Tiro", obj_ini_tiro02);
	tiro1.direction += val;
	tiro1.image_angle += val;
	var tiro2 = instance_create_layer(x - 5, y, "Tiro", obj_ini_tiro02);
	tiro2.direction -= val;
	tiro2.image_angle -= val;
}

alarm[0] = random_range(2.5, 3.5) * room_speed;
 