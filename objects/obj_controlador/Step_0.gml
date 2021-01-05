/// @description Código base

//Pasando de level
if pontos >= prox_level{
	level++;
	prox_level *= 1.8;
	obj_player.vida++;
}
if level >= 10{
	level = 10;
}

temp = (irandom_range(2, 5) * level)

if temp > 20{
	temp = 20;
}

//Criação do 4° inimigo
if level >= 6 and level < 9 and inimigo4{
	alarm[1] = irandom_range(1, 3);
	inimigo4 = false
}

//Criação dos meteoritos
if level >= 2 and meteorito1{  //Meteorito pequeno
	alarm[2] = 3 * room_speed;
	meteorito1 = false;
	
}

if level >= 6 and meteorito2{  //Meteorito grande
	alarm[3] = 5 * room_speed;
	meteorito2 = false;
}

//Criação do boss
if level == 10 and boss{
	alarm[4] = room_speed * 5
	boss = false;
}
