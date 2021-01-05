/// @description Quando o boss for derrotado

instance_create_layer(x, y, "Explosao", obj_explosao01);
obj_explosao01.image_xscale = 4;
obj_explosao01.image_yscale = 4;

obj_controlador.alarm[6] = room_speed
