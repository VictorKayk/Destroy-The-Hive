/// @description Alarme 2 (Meteorito pequeno)

randomize();  //Randomiza

repeat(irandom_range(0, level)){
	instance_create_layer(irandom_range(32, room_width -32), irandom_range(-128, -1024), "Meteoritos", obj_meteorito01);
}

//Loop
alarm[2] = irandom_range(8, 15) * room_speed;
