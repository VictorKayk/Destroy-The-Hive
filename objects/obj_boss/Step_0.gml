/// @description Código base

//Vida
if vida <= 0{
	vida = 0;
	instance_destroy();
}

#region Tiro
delay++;
#region Tiro 01
if vida >= 250 and delay >= 55{
	instance_create_layer(x, y, "Tiro", obj_ini_tiro01);
	delay = 0;
}
#endregion

#region Tiro 02
else if vida < 250 and vida >= 150 and delay >= 50{
	max_vl = 3;
	var tiro = instance_create_layer(x, y, "Tiro", obj_ini_tiro01);
	if instance_exists(obj_player){
		tiro.direction = point_direction(x, y, obj_player.x, obj_player.y);
		tiro.image_angle = point_direction(x, y, obj_player.x, obj_player.y) + 90;
	}
	else{
		tiro.direction = 270;
	}
	delay = 0;
}
#endregion

#region Tiro 03
else if vida < 150 and vida >= 50 and delay >= 75{
	max_vl = 4;
	var val = 10
	instance_create_layer(x, y, "Tiro", obj_ini_tiro02);
	var tiro1 = instance_create_layer(x + 5, y, "Tiro", obj_ini_tiro02);
	tiro1.direction += val;
	tiro1.image_angle += val;
	var tiro2 = instance_create_layer(x - 5, y, "Tiro", obj_ini_tiro02);
	tiro2.direction -= val;
	tiro2.image_angle -= val;
	delay = 0;
}
#endregion

#region Tiro 04
else if vida < 50 and vida >= 1 and delay >= 80{
	max_vl = 4;
	repeat(irandom_range(0, 2)){
		instance_create_layer(irandom_range(32, room_width - 32), irandom_range(-128, -1024), "Inimigos", obj_inimigo04);
	}
	var tiro = instance_create_layer(x + 5, y, "Tiro", obj_ini_tiro02);
	tiro.direction += 5;
	tiro.image_angle += 5;
	var tiro1 = instance_create_layer(x + 10, y, "Tiro", obj_ini_tiro02);
	tiro1.direction += 10;
	tiro1.image_angle += 10;
	var tiro2 = instance_create_layer(x - 5, y, "Tiro", obj_ini_tiro02);
	tiro2.direction -= 5;
	tiro2.image_angle -= 5;
	var tiro3 = instance_create_layer(x - 10, y, "Tiro", obj_ini_tiro02);
	tiro3.direction -= 10;
	tiro3.image_angle -= 10;
	delay = 0;
}
#endregion

#endregion

#region Movimento
if y < 135{
	y += 3;
}
if y >= 135{
	y = 135;
}

if x <= 128{
	x = 128;
	move = true;
}
if x >= 128 and move{
	hspeed = max_vl;
}
if x >= room_width - 128{
	x = room_width - 128;
	move = false;
}
if x <= room_width - 128 and move == false{
	hspeed = -max_vl;
}
if x == room_width - 128{
	move = false;
}
#endregion