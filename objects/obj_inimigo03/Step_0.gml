/// @description Código base

if y >= room_height + 150{  //Destroi o inimigo quando ele sair da tela
	instance_destroy();
}

if x >= -64{
	instance_create_layer(x, y, "Tiro", obj_ini_tiro03);
}

if obj_controlador.level == 5 or obj_controlador.level == 9{
	speed = 2.3;
}

if obj_controlador.level >= 6 and obj_controlador.level <= 8{
	speed = 0;
}
