/// @description Criação do 4° inimigo

if level < 9{
	randomize();  //Randomiza

	repeat(irandom_range((9 * level) / 3, (9 * level) / 2)){
			instance_create_layer(irandom_range(32, room_width - 32), irandom_range(-128, -1024), "Inimigos", obj_inimigo04);
	}

	//Loop
	alarm[1] = irandom_range(17, 22) * room_speed;
}
