/// @description Alarme 2 (Meteorito grande)

randomize();  //Randomiza

repeat(irandom_range(0, 1)){
	instance_create_layer(irandom_range(32, room_width -32), irandom_range(-128, -1024), "Meteoritos", obj_meteorito02);
}

//Loop
alarm[3] = irandom_range(15, 25) * room_speed;
