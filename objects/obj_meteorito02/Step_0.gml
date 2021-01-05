/// @description Código base

if speed <= 2.5{
	speed = 2.5;
}

if x <= -150 or x >= room_width + 150 or y >= room_height + 150{
	instance_destroy();
}

if obj_controlador.level == 9{
	instance_destroy();
}

if angulo == 0{
	image_angle -= 0.3;
}
else{
	image_angle += 0.3;
}
