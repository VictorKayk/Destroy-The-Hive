/// @description Alarme 0

//Tiros 
var tiro1 = instance_create_layer(x, y - 15, "Tiro", obj_tiro01);
tiro1.speed = 3.3;
var tiro2 = instance_create_layer(x, y, "Tiro", obj_tiro01);
tiro2.direction = direction + 10;
tiro2.image_angle = image_angle + 10;
tiro2.speed = 3.3;
var tiro3 = instance_create_layer(x, y, "Tiro", obj_tiro01);
tiro3.direction = direction - 10;
tiro3.image_angle = image_angle - 10;
tiro3.speed = 3.3;
var tiro4 = instance_create_layer(x, y, "Tiro", obj_tiro01);
tiro4.direction = direction + 20;
tiro4.image_angle = image_angle + 20;
tiro4.speed = 3.3;
var tiro5 = instance_create_layer(x, y, "Tiro", obj_tiro01);
tiro5.direction = direction - 20;
tiro5.image_angle = image_angle - 20;
tiro5.speed = 3.3;
