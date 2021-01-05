/// @description Código base

if speed <= 1{
	instance_destroy();
}

if x <= -150 or x >= room_width + 150 or y >= room_height + 150{
	instance_destroy();
}

if obj_controlador.level == 5{
	instance_destroy();
}

if angulo == 0{
	image_angle -= 0.5;
}
else{
	image_angle += 0.5;
}