/// @description Alarme 0

//Tiros
var tiro1 = instance_create_layer(x, y - 15, "Tiro", obj_tiro04_2);
tiro1.direction = direction;
var tiro2 = instance_create_layer(x, y, "Tiro", obj_tiro04_2);
tiro2.direction = direction + 15;
var tiro3 = instance_create_layer(x, y, "Tiro", obj_tiro04_2);
tiro3.direction = direction -15;

//Loop
alarm[0] = 3 * room_speed
