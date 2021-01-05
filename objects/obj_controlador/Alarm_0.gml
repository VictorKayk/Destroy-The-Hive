/// @description Alarme 0 (Criação dos inimigos)

randomize();  //Randomiza

//Criação do inimigo 01
if level < 5 or level >= 6 and level < 9{
	repeat(irandom_range(2, 4) * level){
		instance_create_layer(irandom_range(32, room_width - 32), irandom_range(-128, -1024), "Inimigos", obj_inimigo01);
	}
} 

//Criação do inimigo 02
if level < 5 or level >= 6 and level < 9{
	if level >= 3{
		repeat(level + 1){
			instance_create_layer(irandom_range(32, room_width - 32), irandom_range(-128, -1088), "Inimigos", obj_inimigo02);
		}
	}
}

//Loop
alarm[0] = temp * room_speed;

